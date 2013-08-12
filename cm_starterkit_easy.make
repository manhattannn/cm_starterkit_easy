core = 7.23
api = 2

; Drupal Core
projects[drupal][version] = "7.23"

; ====== EASY =========

; Community Media Modules
projects[cm_checklist][subdir] = "contrib-cm"
projects[cm_checklist][version] = "1.x-dev"

projects[cm_header][subdir] = "contrib-cm"
projects[cm_header][version] = "1.0-alpha1"

projects[cm_show][subdir] = "contrib-cm"
projects[cm_show][version] = "1.x-dev"

projects[cm_slideshow][subdir] = "contrib-cm"
projects[cm_slideshow][version] = "2.x-dev"

projects[om_crew_connect][subdir] = "contrib-cm"
projects[om_crew_connect][version] = "2.x-dev"

; Contrib Modules
projects[backup_migrate][subdir] = "contrib"
projects[backup_migrate][version] = "2.7"

projects[block_class][subdir] = "contrib"
projects[block_class][version] = "2.0"

projects[css_injector][subdir] = "contrib"
projects[css_injector][version] = "1.8"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.2"

projects[captcha][subdir] = "contrib"
projects[captcha][version] = "1.0"

projects[creativecommons][subdir] = "contrib"
projects[creativecommons][version] = "2.x-dev"

projects[empty_page][subdir] = "contrib"
projects[empty_page][version] = "1.0"

projects[entity][subdir] = "contrib"
projects[entity][version] = "1.1"

projects[features][subdir] = "contrib"
projects[features][version] = "2.0-beta1"

projects[field_group][subdir] = "contrib"
projects[field_group][version] = "2.x-dev"

projects[fitvids][subdir] = "contrib"
projects[fitvids][version] = "1.12"

projects[flexslider][subdir] = "contrib"
projects[flexslider][version] = "2.0-alpha1"

projects[fontyourface][subdir] = "contrib"
projects[fontyourface][version] = "2.8"

projects[headerimage][subdir] = "contrib"
projects[headerimage][version] = "1.3"

projects[google_analytics][subdir] = "contrib"
projects[google_analytics][version] = "1.3"

projects[imce][subdir] = "contrib"
projects[imce][version] = "1.7"

projects[imce_wysiwyg][subdir] = "contrib"
projects[imce_wysiwyg][version] = "1.0"
projects[imce_wysiwyg][patch][1794930] = "https://drupal.org/files/imce_wysiwyg-access-issue-1825850-2.patch"

projects[jquery_update][subdir] = "contrib"
projects[jquery_update][version] = "2.3"

projects[legal][subdir] = "contrib"
projects[legal][version] = "1.x-dev"

projects[libraries][subdir] = "contrib"
projects[libraries][version] = "2.1"

projects[module_filter][subdir] = "contrib"
projects[module_filter][version] = "1.7"

projects[menu_attributes][subdir] = "contrib"
projects[menu_attributes][version] = "1.0-rc2"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.2"

projects[pbcore][subdir] = "contrib"
projects[pbcore][version] = "1.0-beta2"

projects[picture][subdir] = "contrib"
projects[picture][version] = "1.1"

projects[profile2][subdir] = "contrib"
projects[profile2][version] = "1.3"

projects[profile_switcher][subdir] = "contrib"
projects[profile_switcher][version] = "1.0-alpha1"

projects[recaptcha][subdir] = "contrib"
projects[recaptcha][version] = "1.9"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[token][subdir] = "contrib"
projects[token][version] = "1.4"

projects[views][subdir] = "contrib"
projects[views][version] = "3.7"

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "3.1"

projects[views_send][subdir] = "contrib"
projects[views_send][version] = "1.0-rc3"

projects[views_slideshow][subdir] = "contrib"
projects[views_slideshow][version] = "3.0"

projects[webform][subdir] = "contrib"
projects[webform][version] = "3.19"

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = "2.2"

; Themes
projects[omega][version] = "3.1"
projects[zen][version] = "5.1"
projects[cm_theme][version] = "2.x-dev"

;Libraries
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"
libraries[ckeditor][destination] = libraries
libraries[ckeditor][directory_name] = ckeditor

libraries[tinymce][download][type] = get
libraries[tinymce][download][url] = "https://github.com/downloads/tinymce/tinymce/tinymce_3.5.8.zip"
libraries[tinymce][destination] = libraries
libraries[tinymce][directory_name] = tinymce

libraries[flexslider][download][type] = get
libraries[flexslider][download][url] = "https://github.com/woothemes/FlexSlider/archive/version/2.1.zip"
libraries[flexslider][destination] = libraries
libraries[flexslider][directory_name] = flexslider

libraries[fitvids][download][type] = get
libraries[fitvids][download][url] = "https://raw.github.com/davatron5000/FitVids.js/master/jquery.fitvids.js"
libraries[fitvids][destination] = libraries
libraries[fitvids][directory_name] = fitvids

; ====== MEDIA RELATED MODULES FROM MODERATE =========

; Community Media Modules
projects[cm_show_vod][subdir] = "contrib-cm"
projects[cm_show_vod][version] = "2.x-dev"

; Contrib Modules
projects[file_entity][subdir] = "contrib"
projects[file_entity][version] = "2.0-alpha1"

projects[media][subdir] = "contrib"
projects[media][version] = "2.0-alpha1"

projects[media_youtube][subdir] = "contrib"
projects[media_youtube][version] = "2.0-rc2"

projects[media_vimeo][subdir] = "contrib"
projects[media_vimeo][version] = "2.x-dev"

projects[media_bliptv][subdir] = "contrib"
projects[media_bliptv][version] = "1.x-dev"

projects[media_archive][subdir] = "contrib"
projects[media_archive][version] = "1.x-dev"

projects[media_cloudcast][subdir] = "contrib"
projects[media_cloudcast][version] = "2.x-dev"

; ===== NEW MODULES USED ON OKV =========

projects[breakpoints][subdir] = "contrib"
projects[breakpoints][version] = "1.1"

projects[commentsblock][subdir] = "contrib"
projects[commentsblock][version] = "2.2"

projects[menu_expanded][subdir] = "contrib"
projects[menu_expanded][version] = "2.2"

; ===== FEEDS =========
; These are more advanced, but I think they are required to 
; really make the easy kit useful

projects[cm_vod_feed][subdir] = "contrib-cm"
projects[cm_vod_feed][version] = "2.0-beta1"

projects[feeds][subdir] = "contrib"
projects[feeds][version] = "2.x-dev"
projects[feeds][patch][1033202] = "https://drupal.org/files/feeds_entity_processor-1033202-203.patch"

projects[job_scheduler][subdir] = "contrib"
projects[job_scheduler][version] = "2.0-alpha3"

projects[feeds_media_internet_files][subdir] = "contrib-cm"
projects[feeds_media_internet_files][version] = "2.x-dev"
