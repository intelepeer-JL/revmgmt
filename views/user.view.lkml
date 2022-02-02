# The name of this view in Looker is "User"
view: user {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.User`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "About Me" in Explore.

  dimension: about_me {
    type: string
    sql: ${TABLE}.AboutMe ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.AccountId ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.Alias ;;
  }

  dimension: amazonconnect__amazon_connect_username__c {
    type: string
    sql: ${TABLE}.amazonconnect__Amazon_Connect_Username__c ;;
  }

  dimension: badge_text {
    type: string
    sql: ${TABLE}.BadgeText ;;
  }

  dimension: banner_photo_url {
    type: string
    sql: ${TABLE}.BannerPhotoUrl ;;
  }

  dimension: call_center_id {
    type: string
    sql: ${TABLE}.CallCenterId ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: community_nickname {
    type: string
    sql: ${TABLE}.CommunityNickname ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}.ContactId ;;
  }

  dimension: contracts__c {
    type: string
    sql: ${TABLE}.contracts__c ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CreatedById ;;
  }

  dimension: created_date {
    type: string
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension: credit_application__c {
    type: string
    sql: ${TABLE}.credit_application__c ;;
  }

  dimension: credit_application_v4__c {
    type: string
    sql: ${TABLE}.credit_application_v4__c ;;
  }

  dimension: credit_memo_hierarchy__c {
    type: string
    sql: ${TABLE}.credit_memo_hierarchy__c ;;
  }

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.CurrencyIsoCode ;;
  }

  dimension: deal_requests__c {
    type: string
    sql: ${TABLE}.deal_requests__c ;;
  }

  dimension: deal_requests_spif__c {
    type: string
    sql: ${TABLE}.deal_requests_spif__c ;;
  }

  dimension: default_currency_iso_code {
    type: string
    sql: ${TABLE}.DefaultCurrencyIsoCode ;;
  }

  dimension: default_group_notification_frequency {
    type: string
    sql: ${TABLE}.DefaultGroupNotificationFrequency ;;
  }

  dimension: delegated_approver_id {
    type: string
    sql: ${TABLE}.DelegatedApproverId ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: design_review__c {
    type: string
    sql: ${TABLE}.design_review__c ;;
  }

  dimension: digest_frequency {
    type: string
    sql: ${TABLE}.DigestFrequency ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: dsfs__dspro_sfmembership_status__c {
    type: string
    sql: ${TABLE}.dsfs__DSProSFMembershipStatus__c ;;
  }

  dimension: dsfs__dspro_sfpassword__c {
    type: string
    sql: ${TABLE}.dsfs__DSProSFPassword__c ;;
  }

  dimension: dsfs__dspro_sfusername__c {
    type: string
    sql: ${TABLE}.dsfs__DSProSFUsername__c ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: email_encoding_key {
    type: string
    sql: ${TABLE}.EmailEncodingKey ;;
  }

  dimension: email_preferences_auto_bcc {
    type: string
    sql: ${TABLE}.EmailPreferencesAutoBcc ;;
  }

  dimension: email_preferences_auto_bcc_stay_in_touch {
    type: string
    sql: ${TABLE}.EmailPreferencesAutoBccStayInTouch ;;
  }

  dimension: email_preferences_stay_in_touch_reminder {
    type: string
    sql: ${TABLE}.EmailPreferencesStayInTouchReminder ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}.EmployeeNumber ;;
  }

  dimension: extension {
    type: string
    sql: ${TABLE}.Extension ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: federation_identifier {
    type: string
    sql: ${TABLE}.FederationIdentifier ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: forecast_enabled {
    type: string
    sql: ${TABLE}.ForecastEnabled ;;
  }

  dimension: full_photo_url {
    type: string
    sql: ${TABLE}.FullPhotoUrl ;;
  }

  dimension: geocode_accuracy {
    type: string
    sql: ${TABLE}.GeocodeAccuracy ;;
  }

  dimension: individual_id {
    type: string
    sql: ${TABLE}.IndividualId ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}.IsActive ;;
  }

  dimension: is_ext_indicator_visible {
    type: string
    sql: ${TABLE}.IsExtIndicatorVisible ;;
  }

  dimension: is_portal_enabled {
    type: string
    sql: ${TABLE}.IsPortalEnabled ;;
  }

  dimension: is_profile_photo_active {
    type: string
    sql: ${TABLE}.IsProfilePhotoActive ;;
  }

  dimension: language_locale_key {
    type: string
    sql: ${TABLE}.LanguageLocaleKey ;;
  }

  dimension: last_login_date {
    type: string
    sql: ${TABLE}.LastLoginDate ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.LastModifiedById ;;
  }

  dimension: last_modified_date {
    type: string
    sql: ${TABLE}.LastModifiedDate ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: last_password_change_date {
    type: string
    sql: ${TABLE}.LastPasswordChangeDate ;;
  }

  dimension: last_referenced_date {
    type: string
    sql: ${TABLE}.LastReferencedDate ;;
  }

  dimension: last_viewed_date {
    type: string
    sql: ${TABLE}.LastViewedDate ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.Latitude ;;
  }

  dimension: locale_sid_key {
    type: string
    sql: ${TABLE}.LocaleSidKey ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.Longitude ;;
  }

  dimension: loop__ds_password__c {
    type: string
    sql: ${TABLE}.Loop__dsPassword__c ;;
  }

  dimension: loop__ds_token__c {
    type: string
    sql: ${TABLE}.Loop__dsToken__c ;;
  }

  dimension: loop__looplus_tester__c {
    type: string
    sql: ${TABLE}.Loop__LOOPlus_Tester__c ;;
  }

  dimension: manager_id {
    type: string
    sql: ${TABLE}.ManagerId ;;
  }

  dimension: medium_banner_photo_url {
    type: string
    sql: ${TABLE}.MediumBannerPhotoUrl ;;
  }

  dimension: medium_photo_url {
    type: string
    sql: ${TABLE}.MediumPhotoUrl ;;
  }

  dimension: mkto_si__is_caching_anon_web_activity_list__c {
    type: string
    sql: ${TABLE}.mkto_si__IsCachingAnonWebActivityList__c ;;
  }

  dimension: mkto_si__is_caching_best_bets__c {
    type: string
    sql: ${TABLE}.mkto_si__IsCachingBestBets__c ;;
  }

  dimension: mkto_si__is_caching_email_activity_list__c {
    type: string
    sql: ${TABLE}.mkto_si__IsCachingEmailActivityList__c ;;
  }

  dimension: mkto_si__is_caching_grouped_web_activity_list__c {
    type: string
    sql: ${TABLE}.mkto_si__IsCachingGroupedWebActivityList__c ;;
  }

  dimension: mkto_si__is_caching_interesting_moments_list__c {
    type: string
    sql: ${TABLE}.mkto_si__IsCachingInterestingMomentsList__c ;;
  }

  dimension: mkto_si__is_caching_scoring_list__c {
    type: string
    sql: ${TABLE}.mkto_si__IsCachingScoringList__c ;;
  }

  dimension: mkto_si__is_caching_stream_list__c {
    type: string
    sql: ${TABLE}.mkto_si__IsCachingStreamList__c ;;
  }

  dimension: mkto_si__is_caching_watch_list__c {
    type: string
    sql: ${TABLE}.mkto_si__IsCachingWatchList__c ;;
  }

  dimension: mkto_si__is_caching_web_activity_list__c {
    type: string
    sql: ${TABLE}.mkto_si__IsCachingWebActivityList__c ;;
  }

  dimension: mkto_si__sales_insight_counter__c {
    type: string
    sql: ${TABLE}.mkto_si__Sales_Insight_Counter__c ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.MobilePhone ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: neilon__file_access_type__c {
    type: string
    sql: ${TABLE}.NEILON__File_Access_Type__c ;;
  }

  dimension: neilon__is_s3_link_user__c {
    type: string
    sql: ${TABLE}.NEILON__Is_S3_Link_User__c ;;
  }

  dimension: number_of_failed_logins {
    type: string
    sql: ${TABLE}.NumberOfFailedLogins ;;
  }

  dimension: offline_pda_trial_expiration_date {
    type: string
    sql: ${TABLE}.OfflinePdaTrialExpirationDate ;;
  }

  dimension: offline_trial_expiration_date {
    type: string
    sql: ${TABLE}.OfflineTrialExpirationDate ;;
  }

  dimension: op_unit__c {
    type: string
    sql: ${TABLE}.Op_Unit__c ;;
  }

  dimension: out_of_office_message {
    type: string
    sql: ${TABLE}.OutOfOfficeMessage ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: portal_role {
    type: string
    sql: ${TABLE}.PortalRole ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: profile_id {
    type: string
    sql: ${TABLE}.ProfileId ;;
  }

  dimension: receives_admin_info_emails {
    type: string
    sql: ${TABLE}.ReceivesAdminInfoEmails ;;
  }

  dimension: receives_info_emails {
    type: string
    sql: ${TABLE}.ReceivesInfoEmails ;;
  }

  dimension: sdai__sd_ai_security_token__c {
    type: string
    sql: ${TABLE}.SDAI__SD_ai_Security_Token__c ;;
  }

  dimension: sender_email {
    type: string
    sql: ${TABLE}.SenderEmail ;;
  }

  dimension: sender_name {
    type: string
    sql: ${TABLE}.SenderName ;;
  }

  dimension: service_activation__c {
    type: string
    sql: ${TABLE}.service_activation__c ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.Signature ;;
  }

  dimension: small_banner_photo_url {
    type: string
    sql: ${TABLE}.SmallBannerPhotoUrl ;;
  }

  dimension: small_photo_url {
    type: string
    sql: ${TABLE}.SmallPhotoUrl ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: stay_in_touch_note {
    type: string
    sql: ${TABLE}.StayInTouchNote ;;
  }

  dimension: stay_in_touch_signature {
    type: string
    sql: ${TABLE}.StayInTouchSignature ;;
  }

  dimension: stay_in_touch_subject {
    type: string
    sql: ${TABLE}.StayInTouchSubject ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.Street ;;
  }

  dimension: system_modstamp {
    type: string
    sql: ${TABLE}.SystemModstamp ;;
  }

  dimension: time_zone_sid_key {
    type: string
    sql: ${TABLE}.TimeZoneSidKey ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: user_permissions_avantgo_user {
    type: string
    sql: ${TABLE}.UserPermissionsAvantgoUser ;;
  }

  dimension: user_permissions_call_center_auto_login {
    type: string
    sql: ${TABLE}.UserPermissionsCallCenterAutoLogin ;;
  }

  dimension: user_permissions_chatter_answers_user {
    type: string
    sql: ${TABLE}.UserPermissionsChatterAnswersUser ;;
  }

  dimension: user_permissions_interaction_user {
    type: string
    sql: ${TABLE}.UserPermissionsInteractionUser ;;
  }

  dimension: user_permissions_knowledge_user {
    type: string
    sql: ${TABLE}.UserPermissionsKnowledgeUser ;;
  }

  dimension: user_permissions_live_agent_user {
    type: string
    sql: ${TABLE}.UserPermissionsLiveAgentUser ;;
  }

  dimension: user_permissions_marketing_user {
    type: string
    sql: ${TABLE}.UserPermissionsMarketingUser ;;
  }

  dimension: user_permissions_mobile_user {
    type: string
    sql: ${TABLE}.UserPermissionsMobileUser ;;
  }

  dimension: user_permissions_offline_user {
    type: string
    sql: ${TABLE}.UserPermissionsOfflineUser ;;
  }

  dimension: user_permissions_sfcontent_user {
    type: string
    sql: ${TABLE}.UserPermissionsSFContentUser ;;
  }

  dimension: user_permissions_support_user {
    type: string
    sql: ${TABLE}.UserPermissionsSupportUser ;;
  }

  dimension: user_preferences_activity_reminders_popup {
    type: string
    sql: ${TABLE}.UserPreferencesActivityRemindersPopup ;;
  }

  dimension: user_preferences_apex_pages_developer_mode {
    type: string
    sql: ${TABLE}.UserPreferencesApexPagesDeveloperMode ;;
  }

  dimension: user_preferences_cache_diagnostics {
    type: string
    sql: ${TABLE}.UserPreferencesCacheDiagnostics ;;
  }

  dimension: user_preferences_content_email_as_and_when {
    type: string
    sql: ${TABLE}.UserPreferencesContentEmailAsAndWhen ;;
  }

  dimension: user_preferences_content_no_email {
    type: string
    sql: ${TABLE}.UserPreferencesContentNoEmail ;;
  }

  dimension: user_preferences_create_lexapps_wtshown {
    type: string
    sql: ${TABLE}.UserPreferencesCreateLEXAppsWTShown ;;
  }

  dimension: user_preferences_dis_comment_after_like_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisCommentAfterLikeEmail ;;
  }

  dimension: user_preferences_dis_mentions_comment_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisMentionsCommentEmail ;;
  }

  dimension: user_preferences_dis_prof_post_comment_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisProfPostCommentEmail ;;
  }

  dimension: user_preferences_disable_all_feeds_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableAllFeedsEmail ;;
  }

  dimension: user_preferences_disable_bookmark_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableBookmarkEmail ;;
  }

  dimension: user_preferences_disable_change_comment_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableChangeCommentEmail ;;
  }

  dimension: user_preferences_disable_endorsement_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableEndorsementEmail ;;
  }

  dimension: user_preferences_disable_file_share_notifications_for_api {
    type: string
    sql: ${TABLE}.UserPreferencesDisableFileShareNotificationsForApi ;;
  }

  dimension: user_preferences_disable_followers_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableFollowersEmail ;;
  }

  dimension: user_preferences_disable_later_comment_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableLaterCommentEmail ;;
  }

  dimension: user_preferences_disable_like_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableLikeEmail ;;
  }

  dimension: user_preferences_disable_mentions_post_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableMentionsPostEmail ;;
  }

  dimension: user_preferences_disable_message_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableMessageEmail ;;
  }

  dimension: user_preferences_disable_profile_post_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableProfilePostEmail ;;
  }

  dimension: user_preferences_disable_share_post_email {
    type: string
    sql: ${TABLE}.UserPreferencesDisableSharePostEmail ;;
  }

  dimension: user_preferences_enable_auto_sub_for_feeds {
    type: string
    sql: ${TABLE}.UserPreferencesEnableAutoSubForFeeds ;;
  }

  dimension: user_preferences_event_reminders_checkbox_default {
    type: string
    sql: ${TABLE}.UserPreferencesEventRemindersCheckboxDefault ;;
  }

  dimension: user_preferences_exclude_mail_app_attachments {
    type: string
    sql: ${TABLE}.UserPreferencesExcludeMailAppAttachments ;;
  }

  dimension: user_preferences_favorites_show_top_favorites {
    type: string
    sql: ${TABLE}.UserPreferencesFavoritesShowTopFavorites ;;
  }

  dimension: user_preferences_favorites_wtshown {
    type: string
    sql: ${TABLE}.UserPreferencesFavoritesWTShown ;;
  }

  dimension: user_preferences_global_nav_bar_wtshown {
    type: string
    sql: ${TABLE}.UserPreferencesGlobalNavBarWTShown ;;
  }

  dimension: user_preferences_global_nav_grid_menu_wtshown {
    type: string
    sql: ${TABLE}.UserPreferencesGlobalNavGridMenuWTShown ;;
  }

  dimension: user_preferences_has_celebration_badge {
    type: string
    sql: ${TABLE}.UserPreferencesHasCelebrationBadge ;;
  }

  dimension: user_preferences_hide_bigger_photo_callout {
    type: string
    sql: ${TABLE}.UserPreferencesHideBiggerPhotoCallout ;;
  }

  dimension: user_preferences_hide_chatter_onboarding_splash {
    type: string
    sql: ${TABLE}.UserPreferencesHideChatterOnboardingSplash ;;
  }

  dimension: user_preferences_hide_csndesktop_task {
    type: string
    sql: ${TABLE}.UserPreferencesHideCSNDesktopTask ;;
  }

  dimension: user_preferences_hide_csnget_chatter_mobile_task {
    type: string
    sql: ${TABLE}.UserPreferencesHideCSNGetChatterMobileTask ;;
  }

  dimension: user_preferences_hide_end_user_onboarding_assistant_modal {
    type: string
    sql: ${TABLE}.UserPreferencesHideEndUserOnboardingAssistantModal ;;
  }

  dimension: user_preferences_hide_lightning_migration_modal {
    type: string
    sql: ${TABLE}.UserPreferencesHideLightningMigrationModal ;;
  }

  dimension: user_preferences_hide_s1_browser_ui {
    type: string
    sql: ${TABLE}.UserPreferencesHideS1BrowserUI ;;
  }

  dimension: user_preferences_hide_second_chatter_onboarding_splash {
    type: string
    sql: ${TABLE}.UserPreferencesHideSecondChatterOnboardingSplash ;;
  }

  dimension: user_preferences_hide_sfx_welcome_mat {
    type: string
    sql: ${TABLE}.UserPreferencesHideSfxWelcomeMat ;;
  }

  dimension: user_preferences_lightning_experience_preferred {
    type: string
    sql: ${TABLE}.UserPreferencesLightningExperiencePreferred ;;
  }

  dimension: user_preferences_native_email_client {
    type: string
    sql: ${TABLE}.UserPreferencesNativeEmailClient ;;
  }

  dimension: user_preferences_new_lightning_report_run_page_enabled {
    type: string
    sql: ${TABLE}.UserPreferencesNewLightningReportRunPageEnabled ;;
  }

  dimension: user_preferences_path_assistant_collapsed {
    type: string
    sql: ${TABLE}.UserPreferencesPathAssistantCollapsed ;;
  }

  dimension: user_preferences_pipeline_view_hide_help_popover {
    type: string
    sql: ${TABLE}.UserPreferencesPipelineViewHideHelpPopover ;;
  }

  dimension: user_preferences_preview_custom_theme {
    type: string
    sql: ${TABLE}.UserPreferencesPreviewCustomTheme ;;
  }

  dimension: user_preferences_preview_lightning {
    type: string
    sql: ${TABLE}.UserPreferencesPreviewLightning ;;
  }

  dimension: user_preferences_receive_no_notifications_as_approver {
    type: string
    sql: ${TABLE}.UserPreferencesReceiveNoNotificationsAsApprover ;;
  }

  dimension: user_preferences_receive_notifications_as_delegated_approver {
    type: string
    sql: ${TABLE}.UserPreferencesReceiveNotificationsAsDelegatedApprover ;;
  }

  dimension: user_preferences_record_home_reserved_wtshown {
    type: string
    sql: ${TABLE}.UserPreferencesRecordHomeReservedWTShown ;;
  }

  dimension: user_preferences_record_home_section_collapse_wtshown {
    type: string
    sql: ${TABLE}.UserPreferencesRecordHomeSectionCollapseWTShown ;;
  }

  dimension: user_preferences_reminder_sound_off {
    type: string
    sql: ${TABLE}.UserPreferencesReminderSoundOff ;;
  }

  dimension: user_preferences_show_city_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowCityToExternalUsers ;;
  }

  dimension: user_preferences_show_city_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowCityToGuestUsers ;;
  }

  dimension: user_preferences_show_country_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowCountryToExternalUsers ;;
  }

  dimension: user_preferences_show_country_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowCountryToGuestUsers ;;
  }

  dimension: user_preferences_show_email_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowEmailToExternalUsers ;;
  }

  dimension: user_preferences_show_email_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowEmailToGuestUsers ;;
  }

  dimension: user_preferences_show_fax_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowFaxToExternalUsers ;;
  }

  dimension: user_preferences_show_fax_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowFaxToGuestUsers ;;
  }

  dimension: user_preferences_show_manager_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowManagerToExternalUsers ;;
  }

  dimension: user_preferences_show_manager_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowManagerToGuestUsers ;;
  }

  dimension: user_preferences_show_mobile_phone_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowMobilePhoneToExternalUsers ;;
  }

  dimension: user_preferences_show_mobile_phone_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowMobilePhoneToGuestUsers ;;
  }

  dimension: user_preferences_show_postal_code_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowPostalCodeToExternalUsers ;;
  }

  dimension: user_preferences_show_postal_code_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowPostalCodeToGuestUsers ;;
  }

  dimension: user_preferences_show_profile_pic_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowProfilePicToGuestUsers ;;
  }

  dimension: user_preferences_show_state_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowStateToExternalUsers ;;
  }

  dimension: user_preferences_show_state_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowStateToGuestUsers ;;
  }

  dimension: user_preferences_show_street_address_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowStreetAddressToExternalUsers ;;
  }

  dimension: user_preferences_show_street_address_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowStreetAddressToGuestUsers ;;
  }

  dimension: user_preferences_show_title_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowTitleToExternalUsers ;;
  }

  dimension: user_preferences_show_title_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowTitleToGuestUsers ;;
  }

  dimension: user_preferences_show_work_phone_to_external_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowWorkPhoneToExternalUsers ;;
  }

  dimension: user_preferences_show_work_phone_to_guest_users {
    type: string
    sql: ${TABLE}.UserPreferencesShowWorkPhoneToGuestUsers ;;
  }

  dimension: user_preferences_sort_feed_by_comment {
    type: string
    sql: ${TABLE}.UserPreferencesSortFeedByComment ;;
  }

  dimension: user_preferences_srhoverride_activities {
    type: string
    sql: ${TABLE}.UserPreferencesSRHOverrideActivities ;;
  }

  dimension: user_preferences_suppress_event_sfxreminders {
    type: string
    sql: ${TABLE}.UserPreferencesSuppressEventSFXReminders ;;
  }

  dimension: user_preferences_suppress_task_sfxreminders {
    type: string
    sql: ${TABLE}.UserPreferencesSuppressTaskSFXReminders ;;
  }

  dimension: user_preferences_task_reminders_checkbox_default {
    type: string
    sql: ${TABLE}.UserPreferencesTaskRemindersCheckboxDefault ;;
  }

  dimension: user_preferences_user_debug_mode_pref {
    type: string
    sql: ${TABLE}.UserPreferencesUserDebugModePref ;;
  }

  dimension: user_role_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.UserRoleId ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.UserType ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      name,
      last_name,
      sender_name,
      username,
      community_nickname,
      company_name,
      user_role.name,
      user_role.id,
      user_role.developer_name
    ]
  }
}
