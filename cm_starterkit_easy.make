; Use this file to build a full distribution including Drupal core and the
; Community Media Starter Kit (Easy) install profile using the following command:
;
; drush make cm_starterkit_easy.make <target directory>

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7"

; Add Community Media Starter Kit (Easy) to the full distribution build.
projects[cm_starterkit_easy][type] = profile
projects[cm_starterkit_easy][version] = 1.x-dev
projects[cm_starterkit_easy][download][type] = git
projects[cm_starterkit_easy][download][url] = http://git.drupal.org/project/cm_starterkit_easy.git
projects[cm_starterkit_easy][download][branch] = 7.x-1.x
