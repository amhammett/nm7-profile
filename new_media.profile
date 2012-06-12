<?php
/**
 * @file
 * Enables modules and site configuration for a new_media site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function new_media_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate site information with standard settings
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME']; 
  $form['site_information']['site_mail']['#default_value'] = 'webcontent@com.au';

  // Account information defaults
  $form['admin_account']['account']['name']['#default_value'] = '';
  $form['admin_account']['account']['mail']['#default_value'] = 'webcontent@com.au';

  
  // we come from the land down under
  $form['server_settings']['site_default_country']['#default_value'] = 'AU';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Australia/Sydney';
  
  // Only check for updates, no need for email notifications
  $form['update_notifications']['update_status_module']['#default_value'] = array(1);
}
