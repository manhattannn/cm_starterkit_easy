core = 7.17
api = 2

; Drupal Core
projects[drupal][version] = "7.17"

; ====== EASY =========

; Community Media Modules
projects[cm_checklist][subdir] = "contrib-cm"
projects[cm_checklist][version] = "1.x-dev"

projects[cm_header][subdir] = "contrib-cm"
projects[cm_header][version] = "1.0-alpha1"

projects[cm_show][subdir] = "contrib-cm"
projects[cm_show][version] = "1.x-dev"

projects[cm_slideshow][subdir] = "contrib-cm"
projects[cm_slideshow][version] = "1.0-beta1"

projects[om_crew_connect][subdir] = "contrib-cm"
projects[om_crew_connect][version] = "2.0-beta3"

; Contrib Modules
projects[backup_migrate][subdir] = "contrib"
projects[backup_migrate][version] = "2.4"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.2"

projects[captcha][subdir] = "contrib"
projects[captcha][version] = "1.0-beta2"

projects[creativecommons][subdir] = "contrib"
projects[creativecommons][version] = "1.x-alpha2"

projects[entity][subdir] = "contrib"
projects[entity][version] = "1.0-rc3"

projects[features][subdir] = "contrib"
projects[features][version] = "2.0-alpha5"

projects[field_group][subdir] = "contrib"
projects[field_group][version] = "2.x-dev"

projects[flexslider][subdir] = "contrib"
projects[flexslider][version] = "1.0-rc3"

projects[fontyourface][subdir] = "contrib"
projects[fontyourface][version] = "2.6"

projects[headerimage][subdir] = "contrib"
projects[headerimage][version] = "1.1"

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

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.2"

projects[pbcore][subdir] = "contrib"
projects[pbcore][version] = "1.0-beta2"

projects[profile2][subdir] = "contrib"
projects[profile2][version] = "1.2"

projects[recaptcha][subdir] = "contrib"
projects[recaptcha][version] = "1.7"

projects[recaptcha][subdir] = "contrib"
projects[recaptcha][version] = "1.7"

projects[resp_img][subdir] = "contrib"
projects[resp_img][version] = "1.3"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[token][subdir] = "contrib"
projects[token][version] = "1.4"

projects[views][subdir] = "contrib"
projects[views][version] = "3.5"

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "3.1"

projects[views_send][subdir] = "contrib"
projects[views_send][version] = "1.x-alpha1"

projects[views_slideshow][subdir] = "contrib"
projects[views_slideshow][version] = "3.0"

projects[webform][subdir] = "contrib"
projects[webform][version] = "4.0-alpha6"

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = "2.2"

; Themes
projects[omega][version] = "3.1"
projects[cm_theme][version] = "1.0-alpha1"

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