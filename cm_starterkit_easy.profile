<?php
/**
 * @file
 * Enables modules and site configuration for a cm_starterkit_easy site installation.
 */

/**
 * Implementation of hook_menu().
 */
function cm_starterkit_easy_menu() {
  $items = array();

  $items['admin/documentation'] = array(
    'title' => 'Documentation',
    'description' => 'Link to Documentation on Drupal.org',
    'page callback' => 'cm_starterkit_easy_documentation',
    'access arguments' => array('access administration pages'),
    'type' => MENU_NORMAL_ITEM,
    'weight' => 99,
  );
     
  return $items;

}

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function cm_starterkit_easy_documentation() {
  header("Location: https://drupal.org/documentation/build/community-media");
  exit();
}

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function cm_starterkit_easy_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
}

/*
 * Implements hook_install_tasks_alter()
 */
function cm_starterkit_easy_install_tasks_alter(&$tasks, $install_state) {

  // substitute our own finished step
  $tasks['install_finished'] = array(
    'display_name' => st('Finished Installation'),
    'display' => 1,
    'function' => 'cm_starterkit_easy_install_finished',
  );
    
} 

function cm_starterkit_easy_install_finished(&$install_state) {
drupal_set_title(st('@drupal installation complete', array('@drupal' => drupal_install_profile_distribution_name())), PASS_THROUGH);
  $messages = drupal_set_message();
  $output = '<p>' . st('Congratulations, you installed @drupal!', array('@drupal' => drupal_install_profile_distribution_name())) . '</p>';
  $output .= '<p>' . (isset($messages['error']) ? st('Review any messages above before <a href="@url">using the Community Media Checklist to start configuring your site</a>.', array('@url' => url('admin/reports/communitymedia-checklist'))) : st('Use the <a href="@url">Community Media Checklist</a> to start configuring your site.', array('@url' => url('admin/reports/communitymedia-checklist')))) . '</p>';   
    
  variable_set('theme_default', 'cm_theme_zen');

  // Disable the core theme.
  theme_disable(array('bartik'));
  
  // Flush all caches to ensure that any full bootstraps during the installer
  // do not leave stale cached data, and that any content types or other items
  // registered by the install profile are registered correctly.
  drupal_flush_all_caches();

  // Remember the profile which was used.
  variable_set('install_profile', drupal_get_profile());

  // Install profiles are always loaded last
  db_update('system')
    ->fields(array('weight' => 1000))
    ->condition('type', 'module')
    ->condition('name', drupal_get_profile())
    ->execute();

  // Cache a fully-built schema.
  drupal_get_schema(NULL, TRUE);

  // Run cron to populate update status tables (if available) so that users
  // will be warned if they've installed an out of date Drupal version.
  // Will also trigger indexing of profile-supplied content or feeds.
  drupal_cron_run();

  return $output;

} 

// Functions Borrowed from Commerce Kickstarter 

/**
 * Implements hook_update_projects_alter().
 */
function cm_starterkit_easy_update_projects_alter(&$projects) {
  // Enable update status for the profile.
  $modules = system_rebuild_module_data();
  // The module object is shared in the request, so we need to clone it here.
  $profile = clone $modules['cm_starterkit_easy'];
  $profile->info['hidden'] = FALSE;
  _update_process_info_list($projects, array('cm_starterkit_easy' => $profile), 'module', TRUE);
}

/**
 * Implements hook_update_status_alter().
 *
 * Disable reporting of projects that are in the distribution, but only
 * if they have not been updated manually.
 *
 * Projects with insecure / revoked / unsupported releases are only shown
 * after two days, which gives enough time to prepare a new Kickstart release
 * which the users can install and solve the problem.
 */
function cm_starterkit_easy_update_status_alter(&$projects) {
  $bad_statuses = array(
    UPDATE_NOT_SECURE,
    UPDATE_REVOKED,
    UPDATE_NOT_SUPPORTED,
  );

  $make_filepath = drupal_get_path('module', 'cm_starterkit_easy') . '/drupal-org.make';
  if (!file_exists($make_filepath)) {
    return;
  }

  $make_info = drupal_parse_info_file($make_filepath);
  foreach ($projects as $project_name => $project_info) {
    // Hide cm_ projects, they have no update status of their own.
    //if (strpos($project_name, 'cm_') !== FALSE) {
      //unset($projects[$project_name]);
    //}
    // Hide bad releases (insecure, revoked, unsupported) if they are younger
    // than 7 days (giving distribution time to prepare an update).
    if (isset($project_info['status']) && in_array($project_info['status'], $bad_statuses)) {
      $days_ago = strtotime('7 days ago');
      if ($project_info['releases'][$project_info['recommended']]['date'] < $days_ago) {
        unset($projects[$project_name]);
      }
    }
    // Hide projects shipped w/ distro if they haven't been manually updated.
    elseif (isset($make_info['projects'][$project_name])) {
      $version = $make_info['projects'][$project_name]['version'];
      if (strpos($version, 'dev') !== FALSE || (DRUPAL_CORE_COMPATIBILITY . '-' . $version == $project_info['info']['version'])) {
        unset($projects[$project_name]);
      }
    }
  }
}

// The cm_theme_logo block is added in the profile, because it can't be added in a theme
// http://drupal.stackexchange.com/questions/24333/can-i-use-hook-block-info-in-a-theme

/**
 * Implements hook_block_info().
 */
function cm_starterkit_easy_block_info() {
  $blocks['cmdrupal_credit'] = array(
    'info' => t('CMDrupal Credit Block'), //The name that will appear in the block list.
    'cache' => DRUPAL_CACHE_PER_ROLE, //Default
  );
  $blocks['cm_theme_logo'] = array(
    'info' => t('Logo Block'), //The name that will appear in the block list.
    'cache' => DRUPAL_CACHE_PER_ROLE, //Default
  );
  return $blocks;
}

/**
 * Implements hook_block_view().
 * 
 * Prepares the contents of the block.
 */
function cm_starterkit_easy_block_view($delta = '') {
  switch($delta){
    case 'cmdrupal_credit':
      $block['subject'] = NULL;
      $block['content'] = l(t('Powered by CMDrupal: Built on Open Source, Sustained by Collaboration'), 'http://cmdrupal.org');
    break;
    case 'cm_theme_logo':
      $block['subject'] = NULL;
      $block['content'] = '<a href="/" title="' . t('Home') . '" rel="home" id="logo"><img src="' . theme_get_setting('logo') .'" alt="' . t('Home') .'" /></a>';
    break;
  }
  return $block;
}