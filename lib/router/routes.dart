class Routes {
//bottom bar routes
  static const String main = 'main';
  static const String home = 'home';
  static const String play = 'play';
  static const String add = 'add';
  static const String messages = 'messages';
  static const String profile = 'profile';

  // Common route segments
  static const String base = '/';
  static const String callSettings = 'call-settings';
  static const String raiseHand = 'raise-hand';
  static const String shareVideoCall = 'share-video-call';
  static const String voipKeypad = 'void_keypad';
  static const String showMoreProfile = 'show_more';
  static const String userProfile = 'user_profle';
  static const String showMoreUserProfile = 'show_more_user';
  static const String lifeEvent = 'life_event';
  static const String lifeEventContent = 'life_event_content';
  static const String savedList = 'saved_list';
  static const String editProfile = 'edit_profle';
  static const String library = 'library';
  static const String playlist = 'playlist';
  static const String detailsVideoCall = 'details_video_call';
  static const String videoCall = 'video_call';
  static const String profileSettings = 'profile-settings';
  static const String notificationTypes = 'notification-types';
  static const String localizationSettings = 'localization_settings';
  static const String appLanguage = 'app_language';
  static const String blockedUsers = 'blocked_users';
  static const String favoriteUsers = 'favorite_users';
  static const String devicePermissions = 'device_permissions';
  static const String contactOptions = 'contact_options';
  static const String accountType = 'account_type';
  static const String personal = 'personal';
  static const String paymentAndSubscription = 'payment_subscription';
  static const String mySubscription = 'my_subscription';
  static const String security = 'security';
  static const String youLikedIt = 'you_liked_it';
  static const String audioPost = 'audio_post';
  static const String videoPost = 'video_post';
  static const String initialChat = 'initial_chat';
  static const String chat = 'chat';
  static const String groupChat = 'group_chat';
  static const String thread = 'thread';
  static const String participantNumber =  'participant_number';
  static const String backgroundConfig = 'background_config';
  static const String previewBackground = 'preview_background';
  static const String guestLounge = 'guest_lounge';
  static const String groupChatReader = 'group_chat_reader';
  static const String guestLoungeReaderUser = 'guest_lounge_reader_user';

  // Common
  static const String fullScreenVideo = 'full_screen_video';
  static const String scheduleCall = "schedule_call";

  // Help Center
  static const String helpCenter = 'help_center';
  static const String videoTutorials = 'video_tutorials';
  static const String faq = 'faq';
  static const String liveUpdates = 'live_updates';
  static const String termsConditions = "terms_conditions";
  static const String provideFeedback = "provide_feedback";
  // End Help Center

  // Composite routes
  static const String videoCallRoute = '/$videoCall';
  static const String voipKeypadRoute = '/$voipKeypad';
  static const String callSettingsRoute = '/$callSettings';
  static const String raiseHandRoute = '/$callSettings/$raiseHand';
  static const String shareVideoCallRoute = '/$callSettings/$shareVideoCall';
  static const String mainRoute = '/$main';
  static const String homeRoute = '/$main/$home';
  static const String playRoute = '/$main/$play';
  static const String addRoute = '$main/$add';
  static const String messageRoute = '/$main/$messages';
  static const String initialChatRoute = '/$initialChat';
  static const String chatRoute = '/$chat';
  static const String groupChatRoute = '/$groupChat';
  static const String groupChatThreadRoute = '/$groupChat/$thread';
  static const String groupChatRaiseHandRoute = '/$groupChat/$raiseHand';
  static const String groupChatParticipantNumberRoute = '/$groupChat/$participantNumber';
  static const String groupChatBackgroundConfigRoute = '/$groupChat/$backgroundConfig';
  static const String groupChatpreviewBackgroundRoute = '/$groupChat/$backgroundConfig/$previewBackground';
  static const String groupChatguestLoungeRoute = '/$groupChat/$guestLounge';
  static const String groupChatReaderRoute = '/$groupChatReader';
  static const String groupChatReaderGuestLoungeRoute = '/$groupChatReader/$guestLoungeReaderUser';
  static const String profileRoute = '/$main/$profile';
  static const String editProfileRoute = '/$editProfile';
  static const String savedListRoute = '/$savedList';
  static const String showMoreProfileRoute = '/$showMoreProfile';
  static const String userProfileRoute = '/$userProfile';
  static const String showMoreUserProfileRoute =
      '/$userProfile/$showMoreUserProfile';
  static const String lifeEventRoute = '/$showMoreProfile/$lifeEvent';
  static const String playlistRoute = '/$library/$playlist';
  static const String detailsVideoCallRoute =
      '/$library/$playlist/$detailsVideoCall';
  static const String lifeEventContentRoute =
      '/$showMoreProfile/$lifeEvent/$lifeEventContent';
  static const String showMoreProfilelifeEventContentRoute =
      '/$showMoreProfile/$lifeEventContent';
  static const String libraryRoute = '/$library';
  static const String libraryDetailsPlaylistRoute =
      '/$library/$detailsVideoCall';
  static const String profileSettingsRoute = '/$profileSettings';
  static const String notificationTypesRoute =
      '/$profileSettings/$notificationTypes';
  static const String localizationSettingsRoute =
      '/$profileSettings/$localizationSettings';
  static const String appLanguageRoute = '/$profileSettings/$appLanguage';
  static const String blockedUsersRoute = '/$profileSettings/$blockedUsers';
  static const String favoriteUsersRoute = '/$profileSettings/$favoriteUsers';
  static const String devicePermissionsRoute =
      '/$profileSettings/$devicePermissions';
  static const String contactOptionsRoute = '/$profileSettings/$contactOptions';
  static const String accountTypeRoute = '/$profileSettings/$accountType';
  static const String personalRoute =
      '/$profileSettings/$accountType/$personal';
  static const String paymentAndSubscriptionRoute =
      '/$profileSettings/$paymentAndSubscription';
  static const String mySubscriptionRoute =
      '/$profileSettings/$paymentAndSubscription/$mySubscription';
  static const String securityRoute = '/$profileSettings/$security';
  static const String youLikedItRoute = '/$profileSettings/$youLikedIt';
  static const String audioPostRoute =
      '/$profileSettings/$youLikedIt/$audioPost';
  static const String videoPostRoute =
      '/$profileSettings/$youLikedIt/$videoPost';
  static const String threadRoute = '/$thread';

  // Help Center
  static const String helpCenterRoute = '/$helpCenter';
  static const String videoTutorialsRoute = '$helpCenterRoute/$videoTutorials';
  static const String faqRoute = '$helpCenterRoute/$faq';
  static const String liveUpdatesRoute = '$helpCenterRoute/$liveUpdates';
  static const String termsConditionsRoute =
      '$helpCenterRoute/$termsConditions';
  static const String provideFeedbackRoute =
      '$helpCenterRoute/$provideFeedback';

  static const String fullScreenVideoRoute =
      '$videoTutorialsRoute/$fullScreenVideo';
  static const String scheduleCallContactUs = '$helpCenterRoute/$scheduleCall';
  // End Help Center
}
