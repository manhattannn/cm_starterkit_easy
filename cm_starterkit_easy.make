core = 7.14
api = 2

; Drupal Core
projects[drupal][version] = "7.14"

; Community Media Modules
projects[cm_checklist][subdir] = "contrib-cm"
projects[cm_checklist][version] = "1.x-dev"

projects[cm_show][subdir] = "contrib-cm"
projects[cm_show][version] = "1.x-dev"

projects[cm_slideshow][subdir] = "contrib-cm"
projects[cm_slideshow][version] = "1.x-dev"

projects[om_crew_connect][subdir] = "contrib-cm"
projects[om_crew_connect][version] = "2.0-beta3"

; Contrib Modules
projects[backup_migrate][subdir] = "contrib"
projects[backup_migrate][version] = "2.2"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.0"

projects[captcha][subdir] = "contrib"
projects[captcha][version] = "1.0-beta2"

projects[creativecommons][subdir] = "contrib"
projects[creativecommons][version] = "1.x-dev"

projects[entity][subdir] = "contrib"
projects[entity][version] = "1.0-rc2"

projects[features][subdir] = "contrib"
projects[features][version] = "1.0-rc2"

projects[field_group][subdir] = "/contrib"
projects[field_group][version] = "1.1"

projects[flexslider][subdir] = "contrib"
projects[flexslider][version] = "1.0-rc2"

projects[fontyourface][subdir] = "contrib"
projects[fontyourface][version] = "2.2"

projects[imce][subdir] = "contrib"
projects[imce][version] = "1.5"

projects[imce_wysiwyg][subdir] = "contrib"
projects[imce_wysiwyg][version] = "1.0"

projects[jquery_update][subdir] = "contrib"
projects[jquery_update][version] = "2.2"

projects[legal][subdir] = "contrib"
projects[legal][version] = "1.x-dev"

projects[libraries][subdir] = "contrib"
projects[libraries][version] = "1.0"

projects[pbcore][subdir] = "contrib"
projects[pbcore][version] = "1.0-beta1"

projects[profile2][subdir] = "contrib"
projects[profile2][version] = "1.2"

projects[recaptcha][subdir] = "contrib"
projects[recaptcha][version] = "1.7"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0-rc1"

projects[styles][subdir] = "contrib"
projects[styles][version] = "2.0-alpha8"

projects[views][subdir] = "contrib"
projects[views][version] = "3.3"

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "3.0-rc1"

projects[views_send][subdir] = "contrib"
projects[views_send][version] = "1.x-dev"

projects[views_slideshow][subdir] = "contrib"
projects[views_slideshow][version] = "3.0"

projects[webform][subdir] = "contrib"
projects[webform][version] = "3.17"

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = "2.1"

; Themes
projects[omega][version] = "3.1"
projects[cm_theme][version] = "1.x-dev"

;Libraries
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"
libraries[ckeditor][destination] = libraries
libraries[ckeditor][directory_name] = ckeditor

libraries[tinymce][download][type] = get
libraries[tinymce][download][url] = "https://github.com/downloads/tinymce/tinymce/tinymce_3.4.8.zip"
libraries[tinymce][destination] = libraries
libraries[tinymce][directory_name] = tinymce

libraries[flexslider][download][type] = get
libraries[flexslider][download][url] = "https://github.com/downloads/woothemes/FlexSlider/FlexSlider-1.8.zip"
libraries[flexslider][destination] = libraries
libraries[flexslider][directory_name] = flexslider-download