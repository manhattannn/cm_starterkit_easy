<?php
/**
 * @file
 * Enables modules and site configuration for a cm_starterkit_easy site installation.
 */

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
    
  variable_set('theme_default', 'cm_theme');

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


