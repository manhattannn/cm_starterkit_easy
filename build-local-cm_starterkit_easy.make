; This version of the .make will build a local copy of the distribution
; using the version of drupal-org.make that has been committed.
; Modules and libraries will be in profiles/cm_starterkit_easy
; drush make build-local-cm_starterkit_easy.make

api = 2
core = 7.x

; Drupal Core
projects[drupal][version] = "7.22"

;Include the definition for how to build Drupal core directly, including patches:
;includes[] = drupal-org-core.make

; Download the Install profile and recursively build all its dependencies:
projects[cm_starterkit_easy][type] = profile
projects[cm_starterkit_easy][version] = 2.x-dev