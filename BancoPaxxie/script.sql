CREATE TABLE `activities` (
      `activity_id` int(10) UNSIGNED NOT NULL,
      `page_id` int(10) UNSIGNED NOT NULL,
      `category_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(11) DEFAULT NULL,
      `title` varchar(256) NOT NULL,
      `description` text NOT NULL,
      `follow_date` datetime DEFAULT NULL,
      `follow_message` text,
      `status` enum('created','pending','completed') NOT NULL DEFAULT 'created',
      `created_at` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;



    CREATE TABLE `activities_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  
    CREATE TABLE `activities_permisions_requests` (
      `request_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `page_id` varchar(128) DEFAULT NULL,
      `time` datetime NOT NULL,
      `status` tinyint(1) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `activities_permissions_users` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `page_id` int(10) UNSIGNED NOT NULL,
      `permission` enum('viewer','editor') NOT NULL DEFAULT 'viewer'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `ads_campaigns` (
      `campaign_id` int(10) NOT NULL,
      `campaign_user_id` int(10) UNSIGNED NOT NULL,
      `campaign_title` varchar(256) NOT NULL,
      `campaign_start_date` datetime NOT NULL,
      `campaign_end_date` datetime NOT NULL,
      `campaign_budget` double NOT NULL,
      `campaign_spend` double NOT NULL DEFAULT '0',
      `campaign_bidding` enum('click','view') NOT NULL,
      `audience_countries` mediumtext NOT NULL,
      `audience_gender` varchar(32) NOT NULL,
      `audience_relationship` varchar(64) NOT NULL,
      `ads_title` varchar(255) DEFAULT NULL,
      `ads_description` mediumtext,
      `ads_type` varchar(32) NOT NULL,
      `ads_url` varchar(256) DEFAULT NULL,
      `ads_page` int(10) UNSIGNED DEFAULT NULL,
      `ads_group` int(10) UNSIGNED DEFAULT NULL,
      `ads_event` int(10) UNSIGNED DEFAULT NULL,
      `ads_placement` enum('newsfeed','sidebar') NOT NULL,
      `ads_image` varchar(256) NOT NULL,
      `campaign_created_date` datetime NOT NULL,
      `campaign_is_active` enum('0','1') NOT NULL DEFAULT '1',
      `campaign_is_approved` enum('0','1') NOT NULL DEFAULT '0',
      `campaign_is_declined` enum('0','1') NOT NULL DEFAULT '0',
      `campaign_views` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `campaign_clicks` int(10) UNSIGNED NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `ads_system` (
      `ads_id` int(10) NOT NULL,
      `title` varchar(256) NOT NULL,
      `place` varchar(32) NOT NULL,
      `ads_pages_ids` text,
      `ads_groups_ids` text,
      `code` mediumtext NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `affiliates_payments` (
      `payment_id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `amount` varchar(32) NOT NULL,
      `method` varchar(64) NOT NULL,
      `method_value` text NOT NULL,
      `time` datetime NOT NULL,
      `status` tinyint(1) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `announcements` (
      `announcement_id` int(10) NOT NULL,
      `name` varchar(256) NOT NULL,
      `title` varchar(256) NOT NULL,
      `type` varchar(32) NOT NULL,
      `code` mediumtext NOT NULL,
      `start_date` datetime NOT NULL,
      `end_date` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `announcements_users` (
      `id` int(10) UNSIGNED NOT NULL,
      `announcement_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `auto_connect` (
      `id` int(10) UNSIGNED NOT NULL,
      `type` varchar(32) NOT NULL,
      `country_id` int(10) UNSIGNED NOT NULL,
      `nodes_ids` text NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `bank_transfers` (
      `transfer_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `handle` varchar(32) NOT NULL,
      `package_id` int(10) UNSIGNED DEFAULT NULL,
      `post_id` int(10) UNSIGNED DEFAULT NULL,
      `plan_id` int(10) UNSIGNED DEFAULT NULL,
      `movie_id` int(10) UNSIGNED DEFAULT NULL,
      `orders_collection_id` varchar(256) DEFAULT NULL,
      `price` float DEFAULT NULL,
      `bank_receipt` varchar(256) NOT NULL,
      `time` datetime NOT NULL,
      `status` tinyint(1) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `blacklist` (
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` enum('ip','email','username') NOT NULL,
      `node_value` varchar(64) NOT NULL,
      `created_time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `blogs_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

  

    CREATE TABLE `coinpayments_transactions` (
      `transaction_id` int(10) UNSIGNED NOT NULL,
      `transaction_txn_id` text,
      `user_id` int(10) UNSIGNED NOT NULL,
      `amount` varchar(32) NOT NULL,
      `product` text NOT NULL,
      `created_at` datetime NOT NULL,
      `last_update` datetime NOT NULL,
      `status` tinyint(1) UNSIGNED NOT NULL,
      `status_message` text
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    

    CREATE TABLE `conversations` (
      `conversation_id` int(10) UNSIGNED NOT NULL,
      `last_message_id` int(10) UNSIGNED NOT NULL,
      `color` varchar(32) DEFAULT NULL,
      `node_id` int(10) UNSIGNED DEFAULT NULL,
      `node_type` varchar(128) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `conversations_calls_audio` (
      `call_id` int(10) UNSIGNED NOT NULL,
      `from_user_id` int(10) UNSIGNED NOT NULL,
      `from_user_token` mediumtext NOT NULL,
      `to_user_id` int(10) UNSIGNED NOT NULL,
      `to_user_token` mediumtext NOT NULL,
      `room` varchar(64) NOT NULL,
      `answered` enum('0','1') NOT NULL DEFAULT '0',
      `declined` enum('0','1') NOT NULL DEFAULT '0',
      `created_time` datetime NOT NULL,
      `updated_time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `conversations_calls_video` (
      `call_id` int(10) UNSIGNED NOT NULL,
      `from_user_id` int(10) UNSIGNED NOT NULL,
      `from_user_token` text NOT NULL,
      `to_user_id` int(10) UNSIGNED NOT NULL,
      `to_user_token` text NOT NULL,
      `room` varchar(64) NOT NULL,
      `answered` enum('0','1') NOT NULL DEFAULT '0',
      `declined` enum('0','1') NOT NULL DEFAULT '0',
      `created_time` datetime NOT NULL,
      `updated_time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `conversations_messages` (
      `message_id` int(10) UNSIGNED NOT NULL,
      `conversation_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `message` longtext NOT NULL,
      `image` varchar(256) NOT NULL,
      `voice_note` varchar(256) NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `conversations_users` (
      `id` int(10) UNSIGNED NOT NULL,
      `conversation_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `seen` enum('0','1') NOT NULL DEFAULT '0',
      `typing` enum('0','1') NOT NULL DEFAULT '0',
      `deleted` enum('0','1') NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `courses_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `custom_fields` (
      `field_id` int(10) UNSIGNED NOT NULL,
      `field_for` varchar(64) NOT NULL,
      `type` varchar(32) NOT NULL,
      `select_options` mediumtext NOT NULL,
      `label` varchar(256) NOT NULL,
      `description` mediumtext NOT NULL,
      `place` varchar(32) NOT NULL,
      `length` int(10) NOT NULL DEFAULT '32',
      `field_order` int(10) NOT NULL DEFAULT '1',
      `is_link` enum('0','1') NOT NULL DEFAULT '0',
      `mandatory` enum('0','1') NOT NULL DEFAULT '0',
      `in_registration` enum('0','1') NOT NULL DEFAULT '0',
      `in_profile` enum('0','1') NOT NULL DEFAULT '0',
      `in_search` enum('0','1') NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `custom_fields_values` (
      `value_id` int(10) UNSIGNED NOT NULL,
      `value` mediumtext NOT NULL,
      `field_id` int(10) UNSIGNED NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(64) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `developers_apps` (
      `app_id` int(10) UNSIGNED NOT NULL,
      `app_user_id` int(10) UNSIGNED NOT NULL,
      `app_category_id` int(10) UNSIGNED NOT NULL,
      `app_auth_id` varchar(128) NOT NULL,
      `app_auth_secret` varchar(128) NOT NULL,
      `app_name` varchar(256) NOT NULL,
      `app_domain` varchar(256) NOT NULL,
      `app_redirect_url` varchar(256) NOT NULL,
      `app_description` mediumtext NOT NULL,
      `app_icon` varchar(256) NOT NULL,
      `app_date` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `developers_apps_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;



    CREATE TABLE `developers_apps_users` (
      `id` int(10) UNSIGNED NOT NULL,
      `app_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `auth_key` varchar(128) NOT NULL,
      `access_token` varchar(128) DEFAULT NULL,
      `access_token_date` datetime DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   
    CREATE TABLE `emojis` (
      `emoji_id` int(10) UNSIGNED NOT NULL,
      `unicode_char` varchar(256) NOT NULL,
      `class` varchar(256) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    CREATE TABLE `events` (
      `event_id` int(10) UNSIGNED NOT NULL,
      `event_privacy` enum('secret','closed','public') DEFAULT 'public',
      `event_admin` int(10) UNSIGNED NOT NULL,
      `event_page_id` int(10) UNSIGNED DEFAULT NULL,
      `event_category` int(10) UNSIGNED NOT NULL,
      `event_title` varchar(256) NOT NULL,
      `event_location` varchar(256) DEFAULT NULL,
      `event_country` int(10) UNSIGNED NOT NULL,
      `event_description` mediumtext NOT NULL,
      `event_start_date` datetime NOT NULL,
      `event_end_date` datetime NOT NULL,
      `event_publish_enabled` enum('0','1') NOT NULL DEFAULT '1',
      `event_publish_approval_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `event_cover` varchar(256) DEFAULT NULL,
      `event_cover_id` int(10) UNSIGNED DEFAULT NULL,
      `event_cover_position` varchar(256) DEFAULT NULL,
      `event_album_covers` int(10) DEFAULT NULL,
      `event_album_timeline` int(10) DEFAULT NULL,
      `event_pinned_post` int(10) DEFAULT NULL,
      `event_invited` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `event_interested` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `event_going` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `chatbox_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `chatbox_conversation_id` int(10) UNSIGNED DEFAULT NULL,
      `event_tickets_link` varchar(256) DEFAULT NULL,
      `event_prices` text,
      `event_rate` float NOT NULL DEFAULT '0',
      `event_is_sponsored` enum('0','1') NOT NULL DEFAULT '0',
      `event_sponsor_name` varchar(256) DEFAULT NULL,
      `event_sponsor_url` varchar(256) DEFAULT NULL,
      `event_date` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    

    CREATE TABLE `events_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `events_members` (
      `id` int(10) UNSIGNED NOT NULL,
      `event_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `is_invited` enum('0','1') DEFAULT '0',
      `is_interested` enum('0','1') DEFAULT '0',
      `is_going` enum('0','1') DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `followings` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `following_id` int(10) UNSIGNED NOT NULL,
      `points_earned` enum('0','1') NOT NULL DEFAULT '0',
      `time` datetime DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `forums` (
      `forum_id` int(10) UNSIGNED NOT NULL,
      `forum_section` int(10) UNSIGNED NOT NULL,
      `forum_name` varchar(256) NOT NULL,
      `forum_description` mediumtext,
      `forum_order` int(10) UNSIGNED NOT NULL DEFAULT '1',
      `forum_threads` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `forum_replies` int(10) UNSIGNED NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `forums_replies` (
      `reply_id` int(10) UNSIGNED NOT NULL,
      `thread_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `text` longtext NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `forums_threads` (
      `thread_id` int(10) UNSIGNED NOT NULL,
      `forum_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `title` varchar(256) NOT NULL,
      `text` longtext NOT NULL,
      `replies` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `time` datetime NOT NULL,
      `last_reply` datetime DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `friends` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_one_id` int(10) UNSIGNED NOT NULL,
      `user_two_id` int(10) UNSIGNED NOT NULL,
      `status` tinyint(1) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `funding_payments` (
      `payment_id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `amount` varchar(32) NOT NULL,
      `method` varchar(64) NOT NULL,
      `method_value` text NOT NULL,
      `time` datetime NOT NULL,
      `status` tinyint(1) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `games` (
      `game_id` int(10) NOT NULL,
      `title` varchar(256) NOT NULL,
      `description` mediumtext NOT NULL,
      `genres` mediumtext,
      `source` mediumtext NOT NULL,
      `thumbnail` varchar(256) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `games_genres` (
      `genre_id` int(10) UNSIGNED NOT NULL,
      `genre_name` varchar(256) NOT NULL,
      `genre_description` text NOT NULL,
      `genre_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;



    CREATE TABLE `games_players` (
      `id` int(10) UNSIGNED NOT NULL,
      `game_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `last_played_time` datetime DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `gifts` (
      `gift_id` int(10) UNSIGNED NOT NULL,
      `image` varchar(256) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `groups` (
      `group_id` int(10) UNSIGNED NOT NULL,
      `group_privacy` enum('secret','closed','public') DEFAULT 'public',
      `group_admin` int(10) UNSIGNED NOT NULL,
      `group_category` int(10) UNSIGNED NOT NULL,
      `group_name` varchar(64) NOT NULL,
      `group_title` varchar(256) NOT NULL,
      `group_country` int(10) UNSIGNED NOT NULL,
      `group_description` mediumtext NOT NULL,
      `group_publish_enabled` enum('0','1') NOT NULL DEFAULT '1',
      `group_publish_approval_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `group_picture` varchar(256) DEFAULT NULL,
      `group_picture_id` int(10) UNSIGNED DEFAULT NULL,
      `group_cover` varchar(256) DEFAULT NULL,
      `group_cover_id` int(10) UNSIGNED DEFAULT NULL,
      `group_cover_position` varchar(256) DEFAULT NULL,
      `group_album_pictures` int(10) DEFAULT NULL,
      `group_album_covers` int(10) DEFAULT NULL,
      `group_album_timeline` int(10) DEFAULT NULL,
      `group_pinned_post` int(10) DEFAULT NULL,
      `group_members` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `group_monetization_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `group_monetization_min_price` float NOT NULL DEFAULT '0',
      `group_monetization_plans` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `chatbox_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `chatbox_conversation_id` int(10) UNSIGNED DEFAULT NULL,
      `group_rate` float NOT NULL DEFAULT '0',
      `group_date` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    

    CREATE TABLE `groups_admins` (
      `id` int(10) UNSIGNED NOT NULL,
      `group_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  
    CREATE TABLE `groups_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `groups_invites` (
      `id` int(10) UNSIGNED NOT NULL,
      `group_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `from_user_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `groups_members` (
      `id` int(10) UNSIGNED NOT NULL,
      `group_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `approved` enum('0','1') NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `hashtags` (
      `hashtag_id` int(10) UNSIGNED NOT NULL,
      `hashtag` varchar(256) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `hashtags_posts` (
      `id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `hashtag_id` int(10) UNSIGNED NOT NULL,
      `created_at` datetime DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `invitation_codes` (
      `code_id` int(10) UNSIGNED NOT NULL,
      `code` varchar(64) NOT NULL,
      `created_by` int(10) UNSIGNED NOT NULL,
      `created_date` datetime NOT NULL,
      `used_by` int(10) UNSIGNED DEFAULT NULL,
      `used_date` datetime DEFAULT NULL,
      `used` enum('0','1') NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `jobs_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;



    CREATE TABLE `log_commissions` (
      `payment_id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `amount` float NOT NULL,
      `handle` varchar(128) NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `log_payments` (
      `payment_id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `amount` float NOT NULL,
      `method` varchar(64) NOT NULL,
      `handle` varchar(128) NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `log_points` (
      `log_id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(128) NOT NULL,
      `points` float NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `log_sessions` (
      `session_id` int(10) UNSIGNED NOT NULL,
      `session_date` datetime NOT NULL,
      `session_type` enum('W','A','I') NOT NULL DEFAULT 'W',
      `session_ip` varchar(64) NOT NULL,
      `session_user_agent` varchar(256) DEFAULT NULL,
      `user_browser` varchar(64) DEFAULT NULL,
      `user_os` varchar(64) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;



    CREATE TABLE `log_subscriptions` (
      `payment_id` int(10) NOT NULL,
      `plan_title` varchar(256) NOT NULL,
      `subscriber_id` int(10) UNSIGNED NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(32) NOT NULL DEFAULT '',
      `price` float NOT NULL,
      `commission` float NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    

    CREATE TABLE `market_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `market_payments` (
      `payment_id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `amount` varchar(32) NOT NULL,
      `method` varchar(64) NOT NULL,
      `method_value` text NOT NULL,
      `time` datetime NOT NULL,
      `status` tinyint(1) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `monetization_payments` (
      `payment_id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `amount` varchar(32) NOT NULL,
      `method` varchar(64) NOT NULL,
      `method_value` text NOT NULL,
      `time` datetime NOT NULL,
      `status` tinyint(1) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `monetization_plans` (
      `plan_id` int(10) NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(32) NOT NULL,
      `title` varchar(256) NOT NULL,
      `price` float NOT NULL,
      `period_num` int(10) UNSIGNED NOT NULL,
      `period` varchar(32) NOT NULL,
      `custom_description` text,
      `plan_order` int(10) UNSIGNED NOT NULL DEFAULT '1',
      `paypal_billing_plan` varchar(256) DEFAULT NULL,
      `stripe_billing_plan` varchar(256) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `movies` (
      `movie_id` int(10) UNSIGNED NOT NULL,
      `source` text NOT NULL,
      `source_type` varchar(64) NOT NULL,
      `title` varchar(256) NOT NULL,
      `description` text,
      `imdb_url` text,
      `stars` text,
      `release_year` int(10) DEFAULT NULL,
      `duration` int(10) DEFAULT NULL,
      `genres` mediumtext,
      `poster` varchar(256) DEFAULT NULL,
      `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `is_paid` enum('0','1') NOT NULL DEFAULT '0',
      `price` float NOT NULL DEFAULT '0',
      `available_for` int(10) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `movies_genres` (
      `genre_id` int(10) UNSIGNED NOT NULL,
      `genre_name` varchar(256) NOT NULL,
      `genre_description` text NOT NULL,
      `genre_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `movies_payments` (
      `id` int(10) UNSIGNED NOT NULL,
      `movie_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `payment_time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `notifications` (
      `notification_id` int(10) UNSIGNED NOT NULL,
      `to_user_id` int(10) UNSIGNED NOT NULL,
      `from_user_id` int(10) UNSIGNED NOT NULL,
      `from_user_type` enum('user','page') NOT NULL DEFAULT 'user',
      `action` varchar(256) NOT NULL,
      `node_type` varchar(256) NOT NULL,
      `node_url` varchar(256) NOT NULL,
      `notify_id` varchar(256) DEFAULT NULL,
      `message` mediumtext,
      `time` datetime DEFAULT NULL,
      `seen` enum('0','1') NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  
    CREATE TABLE `offers_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;



    CREATE TABLE `orders` (
      `order_id` int(10) UNSIGNED NOT NULL,
      `order_hash` varchar(128) CHARACTER SET utf8 NOT NULL,
      `order_collection_id` varchar(128) DEFAULT NULL,
      `is_payment_done` enum('0','1') NOT NULL DEFAULT '0',
      `is_digital` enum('0','1') NOT NULL DEFAULT '0',
      `seller_id` int(10) UNSIGNED NOT NULL,
      `seller_page_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `buyer_id` int(10) UNSIGNED NOT NULL,
      `buyer_address_id` int(10) UNSIGNED NOT NULL,
      `sub_total` float UNSIGNED NOT NULL DEFAULT '0',
      `commission` float UNSIGNED NOT NULL,
      `status` enum('placed','canceled','accepted','packed','shipped','delivered') CHARACTER SET utf8 NOT NULL DEFAULT 'placed',
      `tracking_link` text CHARACTER SET utf8,
      `tracking_number` text CHARACTER SET utf8,
      `insert_time` datetime NOT NULL,
      `update_time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



    CREATE TABLE `orders_items` (
      `id` int(10) NOT NULL,
      `order_id` int(10) UNSIGNED NOT NULL,
      `product_post_id` int(10) UNSIGNED NOT NULL,
      `quantity` int(10) UNSIGNED NOT NULL,
      `price` float UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



    CREATE TABLE `packages` (
      `package_id` int(10) NOT NULL,
      `name` varchar(256) NOT NULL,
      `price` varchar(32) NOT NULL,
      `period_num` int(10) UNSIGNED NOT NULL,
      `period` varchar(32) NOT NULL,
      `color` varchar(32) NOT NULL,
      `icon` varchar(256) NOT NULL,
      `package_permissions_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `allowed_blogs_categories` int(10) NOT NULL DEFAULT '0',
      `allowed_videos_categories` int(10) NOT NULL DEFAULT '0',
      `allowed_products` int(10) NOT NULL DEFAULT '0',
      `verification_badge_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `boost_posts_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `boost_posts` int(10) UNSIGNED NOT NULL,
      `boost_pages_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `boost_pages` int(10) UNSIGNED NOT NULL,
      `custom_description` text,
      `package_order` int(10) UNSIGNED NOT NULL DEFAULT '1',
      `paypal_billing_plan` varchar(256) DEFAULT NULL,
      `stripe_billing_plan` varchar(256) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `packages_payments` (
      `payment_id` int(10) NOT NULL,
      `payment_date` datetime NOT NULL,
      `package_name` varchar(256) NOT NULL,
      `package_price` float UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `pages` (
      `page_id` int(10) UNSIGNED NOT NULL,
      `page_admin` int(10) UNSIGNED NOT NULL,
      `page_category` int(10) UNSIGNED NOT NULL,
      `page_name` varchar(64) NOT NULL,
      `page_title` varchar(256) NOT NULL,
      `page_picture` varchar(256) DEFAULT NULL,
      `page_picture_id` int(10) UNSIGNED DEFAULT NULL,
      `page_cover` varchar(256) DEFAULT NULL,
      `page_cover_id` int(10) UNSIGNED DEFAULT NULL,
      `page_cover_position` varchar(256) DEFAULT NULL,
      `page_album_pictures` int(10) UNSIGNED DEFAULT NULL,
      `page_album_covers` int(10) UNSIGNED DEFAULT NULL,
      `page_album_timeline` int(10) UNSIGNED DEFAULT NULL,
      `page_pinned_post` int(10) UNSIGNED DEFAULT NULL,
      `page_verified` enum('0','1') NOT NULL DEFAULT '0',
      `page_tips_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `page_activities_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `page_boosted` enum('0','1') NOT NULL DEFAULT '0',
      `page_boosted_by` int(10) UNSIGNED DEFAULT NULL,
      `page_company` varchar(256) DEFAULT NULL,
      `page_phone` varchar(256) DEFAULT NULL,
      `page_website` varchar(256) DEFAULT NULL,
      `page_location` varchar(256) DEFAULT NULL,
      `page_country` int(10) UNSIGNED NOT NULL,
      `page_description` mediumtext NOT NULL,
      `page_action_text` varchar(32) DEFAULT NULL,
      `page_action_color` varchar(32) DEFAULT NULL,
      `page_action_url` varchar(256) DEFAULT NULL,
      `page_social_facebook` varchar(256) DEFAULT NULL,
      `page_social_twitter` varchar(256) DEFAULT NULL,
      `page_social_youtube` varchar(256) DEFAULT NULL,
      `page_social_instagram` varchar(256) DEFAULT NULL,
      `page_social_linkedin` varchar(256) DEFAULT NULL,
      `page_social_vkontakte` varchar(256) DEFAULT NULL,
      `page_likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `page_monetization_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `page_monetization_min_price` float NOT NULL DEFAULT '0',
      `page_monetization_plans` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `page_rate` float NOT NULL DEFAULT '0',
      `page_pbid` varchar(128) DEFAULT NULL,
      `page_date` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `pages_admins` (
      `id` int(10) UNSIGNED NOT NULL,
      `page_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  
    CREATE TABLE `pages_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;



    CREATE TABLE `pages_invites` (
      `id` int(10) UNSIGNED NOT NULL,
      `page_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `from_user_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;



    CREATE TABLE `pages_likes` (
      `id` int(10) UNSIGNED NOT NULL,
      `page_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 
    CREATE TABLE `permissions_groups` (
      `permissions_group_id` int(10) UNSIGNED NOT NULL,
      `permissions_group_title` varchar(255) NOT NULL,
      `pages_permission` enum('0','1') NOT NULL DEFAULT '0',
      `groups_permission` enum('0','1') NOT NULL DEFAULT '0',
      `events_permission` enum('0','1') NOT NULL DEFAULT '0',
      `reels_permission` enum('0','1') NOT NULL DEFAULT '0',
      `watch_permission` enum('0','1') NOT NULL DEFAULT '0',
      `blogs_permission` enum('0','1') NOT NULL DEFAULT '0',
      `blogs_permission_read` enum('0','1') NOT NULL DEFAULT '0',
      `market_permission` enum('0','1') NOT NULL DEFAULT '0',
      `offers_permission` enum('0','1') NOT NULL DEFAULT '0',
      `jobs_permission` enum('0','1') NOT NULL DEFAULT '0',
      `courses_permission` enum('0','1') NOT NULL DEFAULT '0',
      `forums_permission` enum('0','1') NOT NULL DEFAULT '0',
      `movies_permission` enum('0','1') NOT NULL DEFAULT '0',
      `games_permission` enum('0','1') NOT NULL DEFAULT '0',
      `gifts_permission` enum('0','1') NOT NULL DEFAULT '0',
      `stories_permission` enum('0','1') NOT NULL DEFAULT '0',
      `posts_permission` enum('0','1') NOT NULL DEFAULT '0',
      `colored_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
      `activity_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
      `polls_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
      `geolocation_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
      `gif_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
      `anonymous_posts_permission` enum('0','1') NOT NULL DEFAULT '0',
      `invitation_permission` enum('0','1') NOT NULL DEFAULT '0',
      `audio_call_permission` enum('0','1') NOT NULL DEFAULT '0',
      `video_call_permission` enum('0','1') NOT NULL DEFAULT '0',
      `live_permission` enum('0','1') NOT NULL DEFAULT '0',
      `videos_upload_permission` enum('0','1') NOT NULL DEFAULT '0',
      `audios_upload_permission` enum('0','1') NOT NULL DEFAULT '0',
      `files_upload_permission` enum('0','1') NOT NULL DEFAULT '0',
      `ads_permission` enum('0','1') NOT NULL DEFAULT '0',
      `funding_permission` enum('0','1') NOT NULL DEFAULT '0',
      `monetization_permission` enum('0','1') NOT NULL DEFAULT '0',
      `tips_permission` enum('0','1') NOT NULL DEFAULT '0',
      `custom_points_system` enum('0','1') NOT NULL DEFAULT '0',
      `points_per_currency` int(10) UNSIGNED NOT NULL DEFAULT '100'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `points_payments` (
      `payment_id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `amount` varchar(32) NOT NULL,
      `method` varchar(64) NOT NULL,
      `method_value` text NOT NULL,
      `time` datetime NOT NULL,
      `status` tinyint(1) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `posts` (
      `post_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `user_type` enum('user','page') NOT NULL,
      `in_group` enum('0','1') NOT NULL DEFAULT '0',
      `group_id` int(10) UNSIGNED DEFAULT NULL,
      `group_approved` enum('0','1') NOT NULL DEFAULT '1',
      `in_event` enum('0','1') NOT NULL DEFAULT '0',
      `event_id` int(10) UNSIGNED DEFAULT NULL,
      `event_approved` enum('0','1') NOT NULL DEFAULT '1',
      `in_wall` enum('0','1') NOT NULL DEFAULT '0',
      `wall_id` int(10) UNSIGNED DEFAULT NULL,
      `post_type` varchar(32) NOT NULL,
      `colored_pattern` int(10) UNSIGNED DEFAULT NULL,
      `origin_id` int(10) UNSIGNED DEFAULT NULL,
      `time` datetime NOT NULL,
      `location` varchar(256) DEFAULT NULL,
      `privacy` varchar(32) NOT NULL,
      `text` longtext,
      `feeling_action` varchar(32) DEFAULT NULL,
      `feeling_value` varchar(256) DEFAULT NULL,
      `boosted` enum('0','1') NOT NULL DEFAULT '0',
      `boosted_by` int(10) UNSIGNED DEFAULT NULL,
      `comments_disabled` enum('0','1') NOT NULL DEFAULT '0',
      `is_hidden` enum('0','1') NOT NULL DEFAULT '0',
      `for_adult` enum('0','1') NOT NULL DEFAULT '0',
      `is_anonymous` enum('0','1') NOT NULL DEFAULT '0',
      `reaction_like_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_love_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_haha_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_yay_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_wow_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_sad_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_angry_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `comments` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `shares` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `post_rate` float NOT NULL DEFAULT '0',
      `points_earned` enum('0','1') NOT NULL DEFAULT '0',
      `tips_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `for_subscriptions` enum('0','1') NOT NULL DEFAULT '0',
      `subscriptions_image` varchar(256) DEFAULT NULL,
      `is_paid` enum('0','1') NOT NULL DEFAULT '0',
      `post_price` float UNSIGNED NOT NULL DEFAULT '0',
      `paid_text` text,
      `paid_image` varchar(256) DEFAULT NULL,
      `processing` enum('0','1') NOT NULL DEFAULT '0',
      `pre_approved` enum('0','1') NOT NULL DEFAULT '1',
      `has_approved` enum('0','1') NOT NULL DEFAULT '0',
      `post_latitude` varchar(256) NOT NULL DEFAULT '0',
      `post_longitude` varchar(256) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  
    CREATE TABLE `posts_articles` (
      `article_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `cover` varchar(256) NOT NULL,
      `title` varchar(256) NOT NULL,
      `text` text NOT NULL,
      `category_id` int(10) UNSIGNED NOT NULL,
      `tags` text NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `posts_audios` (
      `audio_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `source` varchar(256) NOT NULL,
      `views` int(10) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

  

    CREATE TABLE `posts_cache` (
      `cache_id` int(10) UNSIGNED NOT NULL,
      `cache_date` datetime NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

   

    CREATE TABLE `posts_colored_patterns` (
      `pattern_id` int(10) UNSIGNED NOT NULL,
      `type` enum('color','image') NOT NULL DEFAULT 'color',
      `background_image` varchar(256) DEFAULT NULL,
      `background_color_1` varchar(32) DEFAULT NULL,
      `background_color_2` varchar(32) DEFAULT NULL,
      `text_color` varchar(32) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


    CREATE TABLE `posts_comments` (
      `comment_id` int(10) UNSIGNED NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` enum('post','photo','comment') NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `user_type` enum('user','page') NOT NULL,
      `text` longtext NOT NULL,
      `image` varchar(256) DEFAULT NULL,
      `voice_note` varchar(256) DEFAULT NULL,
      `time` datetime NOT NULL,
      `reaction_like_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_love_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_haha_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_yay_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_wow_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_sad_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_angry_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `replies` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `points_earned` enum('0','1') NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_comments_reactions`
    --

    CREATE TABLE `posts_comments_reactions` (
      `id` int(10) UNSIGNED NOT NULL,
      `comment_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `reaction` varchar(32) DEFAULT 'like',
      `reaction_time` datetime DEFAULT NULL,
      `points_earned` enum('0','1') NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_courses`
    --

    CREATE TABLE `posts_courses` (
      `course_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `category_id` int(10) UNSIGNED NOT NULL,
      `title` varchar(100) NOT NULL,
      `location` varchar(100) NOT NULL,
      `fees` float UNSIGNED NOT NULL,
      `fees_currency` int(10) UNSIGNED NOT NULL,
      `start_date` datetime NOT NULL,
      `end_date` datetime NOT NULL,
      `cover_image` varchar(256) NOT NULL,
      `available` enum('0','1') NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_courses_applications`
    --

    CREATE TABLE `posts_courses_applications` (
      `application_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `name` varchar(100) NOT NULL,
      `location` varchar(100) NOT NULL,
      `phone` varchar(100) NOT NULL,
      `email` varchar(100) NOT NULL,
      `applied_time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_files`
    --

    CREATE TABLE `posts_files` (
      `file_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `source` varchar(256) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_funding`
    --

    CREATE TABLE `posts_funding` (
      `funding_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `title` varchar(256) NOT NULL,
      `amount` float NOT NULL DEFAULT '0',
      `raised_amount` float NOT NULL DEFAULT '0',
      `total_donations` int(10) NOT NULL DEFAULT '0',
      `cover_image` varchar(256) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_funding_donors`
    --

    CREATE TABLE `posts_funding_donors` (
      `donation_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `donation_amount` float UNSIGNED NOT NULL DEFAULT '0',
      `donation_time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_hidden`
    --

    CREATE TABLE `posts_hidden` (
      `id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_jobs`
    --

    CREATE TABLE `posts_jobs` (
      `job_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `category_id` int(10) UNSIGNED NOT NULL,
      `title` varchar(100) NOT NULL,
      `location` varchar(100) NOT NULL,
      `salary_minimum` float UNSIGNED NOT NULL,
      `salary_minimum_currency` int(10) UNSIGNED NOT NULL,
      `salary_maximum` float UNSIGNED NOT NULL,
      `salary_maximum_currency` int(10) UNSIGNED NOT NULL,
      `pay_salary_per` varchar(100) NOT NULL,
      `type` varchar(100) NOT NULL,
      `question_1_type` varchar(100) DEFAULT NULL,
      `question_1_title` varchar(256) DEFAULT NULL,
      `question_1_choices` text,
      `question_2_type` varchar(100) DEFAULT NULL,
      `question_2_title` varchar(256) DEFAULT NULL,
      `question_2_choices` text,
      `question_3_type` varchar(100) DEFAULT NULL,
      `question_3_title` varchar(256) DEFAULT NULL,
      `question_3_choices` text,
      `cover_image` varchar(256) NOT NULL,
      `available` enum('0','1') NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_jobs_applications`
    --

    CREATE TABLE `posts_jobs_applications` (
      `application_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `name` varchar(100) NOT NULL,
      `location` varchar(100) NOT NULL,
      `phone` varchar(100) NOT NULL,
      `email` varchar(100) NOT NULL,
      `work_place` varchar(100) DEFAULT NULL,
      `work_position` varchar(100) DEFAULT NULL,
      `work_description` text,
      `work_from` varchar(100) DEFAULT NULL,
      `work_to` varchar(100) DEFAULT NULL,
      `work_now` enum('0','1') DEFAULT NULL,
      `question_1_answer` text,
      `question_2_answer` text,
      `question_3_answer` text,
      `cv` varchar(256) DEFAULT NULL,
      `applied_time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_links`
    --

    CREATE TABLE `posts_links` (
      `link_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `source_url` text NOT NULL,
      `source_host` varchar(256) NOT NULL,
      `source_title` text NOT NULL,
      `source_text` mediumtext NOT NULL,
      `source_thumbnail` text NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_live`
    --

    CREATE TABLE `posts_live` (
      `live_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `video_thumbnail` varchar(256) NOT NULL,
      `agora_uid` int(10) NOT NULL,
      `agora_channel_name` varchar(256) NOT NULL,
      `agora_resource_id` text,
      `agora_sid` varchar(256) DEFAULT NULL,
      `agora_file` text,
      `live_ended` enum('0','1') NOT NULL DEFAULT '0',
      `live_recorded` enum('0','1') NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_live_users`
    --

    CREATE TABLE `posts_live_users` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_media`
    --

    CREATE TABLE `posts_media` (
      `media_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) NOT NULL,
      `source_url` mediumtext NOT NULL,
      `source_provider` varchar(256) NOT NULL,
      `source_type` varchar(256) NOT NULL,
      `source_title` text,
      `source_text` mediumtext,
      `source_html` mediumtext,
      `source_thumbnail` text
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_offers`
    --

    CREATE TABLE `posts_offers` (
      `offer_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `category_id` int(10) UNSIGNED NOT NULL,
      `title` varchar(100) NOT NULL,
      `discount_type` varchar(32) NOT NULL,
      `discount_percent` int(10) UNSIGNED NOT NULL,
      `discount_amount` varchar(100) NOT NULL,
      `buy_x` varchar(100) NOT NULL,
      `get_y` varchar(100) NOT NULL,
      `spend_x` varchar(100) NOT NULL,
      `amount_y` varchar(100) NOT NULL,
      `end_date` datetime DEFAULT NULL,
      `price` float UNSIGNED NOT NULL DEFAULT '0',
      `thumbnail` varchar(256) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_paid`
    --

    CREATE TABLE `posts_paid` (
      `id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_photos`
    --

    CREATE TABLE `posts_photos` (
      `photo_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `album_id` int(10) UNSIGNED DEFAULT NULL,
      `source` varchar(256) NOT NULL,
      `blur` enum('0','1') NOT NULL DEFAULT '0',
      `pinned` enum('0','1') NOT NULL DEFAULT '0',
      `reaction_like_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_love_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_haha_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_yay_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_wow_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_sad_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `reaction_angry_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `comments` int(10) UNSIGNED NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_photos_albums`
    --

    CREATE TABLE `posts_photos_albums` (
      `album_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `user_type` enum('user','page') NOT NULL,
      `in_group` enum('0','1') NOT NULL DEFAULT '0',
      `group_id` int(10) UNSIGNED DEFAULT NULL,
      `in_event` enum('0','1') NOT NULL DEFAULT '0',
      `event_id` int(10) UNSIGNED DEFAULT NULL,
      `title` varchar(256) NOT NULL,
      `privacy` enum('me','friends','public','custom') NOT NULL DEFAULT 'public'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_photos_reactions`
    --

    CREATE TABLE `posts_photos_reactions` (
      `id` int(10) UNSIGNED NOT NULL,
      `photo_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `reaction` varchar(32) NOT NULL DEFAULT 'like',
      `reaction_time` datetime DEFAULT NULL,
      `points_earned` enum('0','1') DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_polls`
    --

    CREATE TABLE `posts_polls` (
      `poll_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `votes` int(10) UNSIGNED NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_polls_options`
    --

    CREATE TABLE `posts_polls_options` (
      `option_id` int(10) UNSIGNED NOT NULL,
      `poll_id` int(10) UNSIGNED NOT NULL,
      `text` varchar(256) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_polls_options_users`
    --

    CREATE TABLE `posts_polls_options_users` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `poll_id` int(10) UNSIGNED NOT NULL,
      `option_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_products`
    --

    CREATE TABLE `posts_products` (
      `product_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `name` varchar(256) NOT NULL,
      `price` float UNSIGNED NOT NULL DEFAULT '0',
      `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
      `category_id` int(10) UNSIGNED NOT NULL,
      `status` enum('new','old') NOT NULL DEFAULT 'new',
      `location` varchar(255) NOT NULL,
      `available` enum('0','1') NOT NULL DEFAULT '1',
      `is_digital` enum('0','1') NOT NULL DEFAULT '0',
      `product_download_url` text,
      `product_file_source` varchar(256) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_reactions`
    --

    CREATE TABLE `posts_reactions` (
      `id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `reaction` varchar(32) NOT NULL DEFAULT 'like',
      `reaction_time` datetime DEFAULT NULL,
      `points_earned` enum('0','1') NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_reels`
    --

    CREATE TABLE `posts_reels` (
      `reel_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `source` varchar(256) NOT NULL,
      `source_240p` varchar(256) DEFAULT NULL,
      `source_360p` varchar(256) DEFAULT NULL,
      `source_480p` varchar(256) DEFAULT NULL,
      `source_720p` varchar(256) DEFAULT NULL,
      `source_1080p` varchar(256) DEFAULT NULL,
      `source_1440p` varchar(256) DEFAULT NULL,
      `source_2160p` varchar(256) DEFAULT NULL,
      `thumbnail` varchar(256) DEFAULT NULL,
      `views` int(10) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_saved`
    --

    CREATE TABLE `posts_saved` (
      `id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_videos`
    --

    CREATE TABLE `posts_videos` (
      `video_id` int(10) UNSIGNED NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `category_id` int(10) UNSIGNED NOT NULL,
      `source` varchar(256) NOT NULL,
      `source_240p` varchar(256) DEFAULT NULL,
      `source_360p` varchar(256) DEFAULT NULL,
      `source_480p` varchar(256) DEFAULT NULL,
      `source_720p` varchar(256) DEFAULT NULL,
      `source_1080p` varchar(256) DEFAULT NULL,
      `source_1440p` varchar(256) DEFAULT NULL,
      `source_2160p` varchar(256) DEFAULT NULL,
      `thumbnail` varchar(256) DEFAULT NULL,
      `views` int(10) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_videos_categories`
    --

    CREATE TABLE `posts_videos_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `posts_videos_categories`
    --

   

    -- --------------------------------------------------------

    --
    -- Table structure for table `posts_views`
    --

    CREATE TABLE `posts_views` (
      `view_id` int(10) UNSIGNED NOT NULL,
      `view_date` datetime NOT NULL,
      `post_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED DEFAULT NULL,
      `guest_ip` varchar(64) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `reports`
    --

    CREATE TABLE `reports` (
      `report_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(32) NOT NULL,
      `category_id` int(10) UNSIGNED NOT NULL,
      `reason` text NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `reports_categories`
    --

    CREATE TABLE `reports_categories` (
      `category_id` int(10) UNSIGNED NOT NULL,
      `category_parent_id` int(10) UNSIGNED NOT NULL,
      `category_name` varchar(256) NOT NULL,
      `category_description` text NOT NULL,
      `category_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `reports_categories`
    --

  

    -- --------------------------------------------------------

    --
    -- Table structure for table `reviews`
    --

    CREATE TABLE `reviews` (
      `review_id` int(10) UNSIGNED NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(32) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `rate` smallint(1) NOT NULL,
      `review` text NOT NULL,
      `reply` text,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `reviews_photos`
    --

    CREATE TABLE `reviews_photos` (
      `photo_id` int(10) UNSIGNED NOT NULL,
      `review_id` int(10) UNSIGNED NOT NULL,
      `source` varchar(256) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `shopping_cart`
    --

    CREATE TABLE `shopping_cart` (
      `id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `product_post_id` int(10) UNSIGNED NOT NULL,
      `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

    -- --------------------------------------------------------

    --
    -- Table structure for table `sneak_peaks`
    --

    CREATE TABLE `sneak_peaks` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(32) NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `static_pages`
    --

    CREATE TABLE `static_pages` (
      `page_id` int(10) UNSIGNED NOT NULL,
      `page_title` varchar(256) NOT NULL,
      `page_is_redirect` enum('0','1') NOT NULL DEFAULT '0',
      `page_redirect_url` varchar(256) DEFAULT NULL,
      `page_url` varchar(64) DEFAULT NULL,
      `page_text` mediumtext NOT NULL,
      `page_in_footer` enum('0','1') NOT NULL DEFAULT '1',
      `page_in_sidebar` enum('0','1') NOT NULL DEFAULT '0',
      `page_icon` varchar(256) DEFAULT NULL,
      `page_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `static_pages`
    --

    -- --------------------------------------------------------

    --
    -- Table structure for table `stickers`
    --

    CREATE TABLE `stickers` (
      `sticker_id` int(10) UNSIGNED NOT NULL,
      `image` varchar(256) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `stickers`
    --

   

    -- --------------------------------------------------------

    --
    -- Table structure for table `stories`
    --

    CREATE TABLE `stories` (
      `story_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `is_ads` enum('0','1') NOT NULL DEFAULT '0',
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `stories_media`
    --

    CREATE TABLE `stories_media` (
      `media_id` int(10) UNSIGNED NOT NULL,
      `story_id` int(10) UNSIGNED NOT NULL,
      `source` varchar(256) NOT NULL,
      `is_photo` enum('0','1') NOT NULL DEFAULT '1',
      `text` text NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `subscribers`
    --

    CREATE TABLE `subscribers` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(32) NOT NULL,
      `plan_id` int(10) UNSIGNED NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `system_countries`
    --

    CREATE TABLE `system_countries` (
      `country_id` int(10) UNSIGNED NOT NULL,
      `country_code` varchar(2) NOT NULL,
      `country_name` varchar(64) NOT NULL,
      `phone_code` varchar(8) DEFAULT NULL,
      `country_vat` float UNSIGNED DEFAULT NULL,
      `default` enum('0','1') NOT NULL,
      `enabled` enum('0','1') NOT NULL DEFAULT '1',
      `country_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `system_countries`
    --

    

    -- --------------------------------------------------------

    --
    -- Table structure for table `system_currencies`
    --

    CREATE TABLE `system_currencies` (
      `currency_id` int(10) UNSIGNED NOT NULL,
      `name` varchar(256) NOT NULL,
      `code` varchar(32) NOT NULL,
      `symbol` varchar(32) NOT NULL,
      `dir` enum('left','right') NOT NULL DEFAULT 'left',
      `default` enum('0','1') NOT NULL,
      `enabled` enum('0','1') NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `system_currencies`
    --

   

    -- --------------------------------------------------------

    --
    -- Table structure for table `system_genders`
    --

    CREATE TABLE `system_genders` (
      `gender_id` int(10) UNSIGNED NOT NULL,
      `gender_name` varchar(64) NOT NULL,
      `gender_order` int(10) NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `system_genders`
    --

   

    -- --------------------------------------------------------

    --
    -- Table structure for table `system_languages`
    --

    CREATE TABLE `system_languages` (
      `language_id` int(10) UNSIGNED NOT NULL,
      `code` varchar(32) NOT NULL,
      `title` varchar(256) NOT NULL,
      `flag` varchar(256) NOT NULL,
      `dir` enum('LTR','RTL') NOT NULL,
      `default` enum('0','1') NOT NULL,
      `enabled` enum('0','1') NOT NULL,
      `language_order` int(10) UNSIGNED NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `system_languages`
    --

  

    -- --------------------------------------------------------

    --
    -- Table structure for table `system_options`
    --

    CREATE TABLE `system_options` (
      `option_id` int(10) UNSIGNED NOT NULL,
      `option_name` varchar(128) NOT NULL,
      `option_value` text NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `system_options`
    --

   

    -- --------------------------------------------------------

    --
    -- Table structure for table `system_reactions`
    --

    CREATE TABLE `system_reactions` (
      `reaction_id` int(10) UNSIGNED NOT NULL,
      `reaction` varchar(32) NOT NULL,
      `title` varchar(32) NOT NULL,
      `color` varchar(128) DEFAULT NULL,
      `image` varchar(256) NOT NULL,
      `reaction_order` int(10) UNSIGNED NOT NULL DEFAULT '1',
      `enabled` enum('0','1') NOT NULL DEFAULT '1'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `system_reactions`
    --

   

    -- --------------------------------------------------------

    --
    -- Table structure for table `system_themes`
    --

    CREATE TABLE `system_themes` (
      `theme_id` int(10) UNSIGNED NOT NULL,
      `name` varchar(64) NOT NULL,
      `default` enum('0','1') NOT NULL,
      `enabled` enum('0','1') NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Dumping data for table `system_themes`
    --

   

    -- --------------------------------------------------------

    --
    -- Table structure for table `users`
    --

    CREATE TABLE `users` (
      `user_id` int(10) UNSIGNED NOT NULL,
      `user_master_account` int(10) NOT NULL DEFAULT '0',
      `user_group` tinyint(10) UNSIGNED NOT NULL DEFAULT '3',
      `user_group_custom` int(11) NOT NULL DEFAULT '0',
      `user_demo` enum('0','1') NOT NULL DEFAULT '0',
      `user_name` varchar(64) NOT NULL,
      `user_email` varchar(64) NOT NULL,
      `user_email_verified` enum('0','1') NOT NULL DEFAULT '0',
      `user_email_verification_code` varchar(64) DEFAULT NULL,
      `user_phone` varchar(64) DEFAULT NULL,
      `user_phone_verified` enum('0','1') NOT NULL DEFAULT '0',
      `user_phone_verification_code` varchar(64) DEFAULT NULL,
      `user_password` varchar(64) NOT NULL,
      `user_two_factor_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `user_two_factor_type` enum('email','sms','google') DEFAULT NULL,
      `user_two_factor_key` varchar(64) DEFAULT NULL,
      `user_two_factor_gsecret` varchar(64) DEFAULT NULL,
      `user_activated` enum('0','1') NOT NULL DEFAULT '0',
      `user_approved` enum('0','1') NOT NULL DEFAULT '0',
      `user_reseted` enum('0','1') NOT NULL DEFAULT '0',
      `user_reset_key` varchar(64) DEFAULT NULL,
      `user_subscribed` enum('0','1') NOT NULL DEFAULT '0',
      `user_package` int(10) UNSIGNED DEFAULT NULL,
      `user_package_videos_categories` text,
      `user_package_blogs_categories` text,
      `user_subscription_date` datetime DEFAULT NULL,
      `user_boosted_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `user_boosted_pages` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `user_started` enum('0','1') NOT NULL DEFAULT '0',
      `user_verified` enum('0','1') NOT NULL DEFAULT '0',
      `user_banned` enum('0','1') NOT NULL DEFAULT '0',
      `user_banned_message` text,
      `user_live_requests_counter` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `user_live_requests_lastid` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `user_live_messages_counter` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `user_live_messages_lastid` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `user_live_notifications_counter` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `user_live_notifications_lastid` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `user_latitude` varchar(256) NOT NULL DEFAULT '0',
      `user_longitude` varchar(256) NOT NULL DEFAULT '0',
      `user_location_updated` datetime DEFAULT NULL,
      `user_firstname` varchar(256) NOT NULL,
      `user_lastname` varchar(256) DEFAULT NULL,
      `user_gender` int(10) UNSIGNED DEFAULT NULL,
      `user_picture` varchar(255) DEFAULT NULL,
      `user_picture_id` int(10) UNSIGNED DEFAULT NULL,
      `user_cover` varchar(256) DEFAULT NULL,
      `user_cover_id` int(10) UNSIGNED DEFAULT NULL,
      `user_cover_position` varchar(256) DEFAULT NULL,
      `user_album_pictures` int(10) UNSIGNED DEFAULT NULL,
      `user_album_covers` int(10) UNSIGNED DEFAULT NULL,
      `user_album_timeline` int(10) UNSIGNED DEFAULT NULL,
      `user_pinned_post` int(10) UNSIGNED DEFAULT NULL,
      `user_registered` datetime DEFAULT NULL,
      `user_last_seen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
      `user_first_failed_login` datetime DEFAULT NULL,
      `user_failed_login_ip` varchar(64) DEFAULT NULL,
      `user_failed_login_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `user_country` int(10) UNSIGNED DEFAULT NULL,
      `user_birthdate` date DEFAULT NULL,
      `user_relationship` varchar(256) DEFAULT NULL,
      `user_biography` text,
      `user_website` varchar(256) DEFAULT NULL,
      `user_work_title` varchar(256) DEFAULT NULL,
      `user_work_place` varchar(256) DEFAULT NULL,
      `user_work_url` varchar(256) DEFAULT NULL,
      `user_current_city` varchar(256) DEFAULT NULL,
      `user_hometown` varchar(256) DEFAULT NULL,
      `user_edu_major` varchar(256) DEFAULT NULL,
      `user_edu_school` varchar(256) DEFAULT NULL,
      `user_edu_class` varchar(256) DEFAULT NULL,
      `user_social_facebook` varchar(256) DEFAULT NULL,
      `user_social_twitter` varchar(256) DEFAULT NULL,
      `user_social_youtube` varchar(256) DEFAULT NULL,
      `user_social_instagram` varchar(256) DEFAULT NULL,
      `user_social_twitch` varchar(256) DEFAULT NULL,
      `user_social_linkedin` varchar(256) DEFAULT NULL,
      `user_social_vkontakte` varchar(256) DEFAULT NULL,
      `user_profile_background` varchar(256) DEFAULT NULL,
      `user_chat_enabled` enum('0','1') NOT NULL DEFAULT '1',
      `user_newsletter_enabled` enum('0','1') NOT NULL DEFAULT '1',
      `user_tips_enabled` enum('0','1') NOT NULL DEFAULT '1',
      `user_privacy_chat` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_poke` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_gifts` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_wall` enum('me','friends','public') NOT NULL DEFAULT 'friends',
      `user_privacy_gender` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_birthdate` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_relationship` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_basic` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_work` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_location` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_education` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_other` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_friends` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_followers` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_photos` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_pages` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_groups` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_events` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `user_privacy_subscriptions` enum('me','friends','public') NOT NULL DEFAULT 'public',
      `email_post_likes` enum('0','1') NOT NULL DEFAULT '1',
      `email_post_comments` enum('0','1') NOT NULL DEFAULT '1',
      `email_post_shares` enum('0','1') NOT NULL DEFAULT '1',
      `email_wall_posts` enum('0','1') NOT NULL DEFAULT '1',
      `email_mentions` enum('0','1') NOT NULL DEFAULT '1',
      `email_profile_visits` enum('0','1') NOT NULL DEFAULT '1',
      `email_friend_requests` enum('0','1') NOT NULL DEFAULT '1',
      `email_user_verification` enum('0','1') NOT NULL DEFAULT '1',
      `email_user_post_approval` enum('0','1') NOT NULL DEFAULT '1',
      `email_admin_verifications` enum('0','1') NOT NULL DEFAULT '1',
      `email_admin_post_approval` enum('0','1') NOT NULL DEFAULT '1',
      `email_admin_user_approval` enum('0','1') NOT NULL DEFAULT '0',
      `facebook_connected` enum('0','1') NOT NULL DEFAULT '0',
      `facebook_id` varchar(128) DEFAULT NULL,
      `google_connected` enum('0','1') NOT NULL DEFAULT '0',
      `google_id` varchar(128) DEFAULT NULL,
      `twitter_connected` enum('0','1') NOT NULL DEFAULT '0',
      `twitter_id` varchar(128) DEFAULT NULL,
      `instagram_connected` enum('0','1') NOT NULL DEFAULT '0',
      `instagram_id` varchar(128) DEFAULT NULL,
      `linkedin_connected` enum('0','1') NOT NULL DEFAULT '0',
      `linkedin_id` varchar(128) DEFAULT NULL,
      `vkontakte_connected` enum('0','1') NOT NULL DEFAULT '0',
      `vkontakte_id` varchar(128) DEFAULT NULL,
      `wordpress_connected` enum('0','1') NOT NULL DEFAULT '0',
      `wordpress_id` varchar(128) DEFAULT NULL,
      `sngine_connected` enum('0','1') NOT NULL DEFAULT '0',
      `sngine_id` varchar(128) DEFAULT NULL,
      `user_referrer_id` int(10) DEFAULT NULL,
      `points_earned` enum('0','1') NOT NULL DEFAULT '0',
      `user_points` float NOT NULL DEFAULT '0',
      `user_wallet_balance` float NOT NULL DEFAULT '0',
      `user_affiliate_balance` float NOT NULL DEFAULT '0',
      `user_market_balance` float NOT NULL DEFAULT '0',
      `user_funding_balance` float NOT NULL DEFAULT '0',
      `user_monetization_enabled` enum('0','1') NOT NULL DEFAULT '0',
      `user_monetization_chat_price` float NOT NULL DEFAULT '0',
      `user_monetization_call_price` float NOT NULL DEFAULT '0',
      `user_monetization_min_price` float NOT NULL DEFAULT '0',
      `user_monetization_plans` int(10) UNSIGNED NOT NULL DEFAULT '0',
      `user_monetization_balance` float NOT NULL DEFAULT '0',
      `chat_sound` enum('0','1') NOT NULL DEFAULT '1',
      `notifications_sound` enum('0','1') NOT NULL DEFAULT '1',
      `onesignal_user_id` varchar(100) DEFAULT NULL,
      `onesignal_android_user_id` varchar(100) DEFAULT NULL,
      `onesignal_ios_user_id` varchar(100) DEFAULT NULL,
      `user_language` varchar(16) DEFAULT 'en_us',
      `user_free_tried` enum('0','1') NOT NULL DEFAULT '0',
      `coinbase_hash` varchar(128) DEFAULT NULL,
      `coinbase_code` varchar(128) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_accounts`
    --

    CREATE TABLE `users_accounts` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `account_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_addresses`
    --

    CREATE TABLE `users_addresses` (
      `address_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `address_title` varchar(256) NOT NULL,
      `address_country` varchar(256) NOT NULL,
      `address_city` varchar(256) NOT NULL,
      `address_zip_code` varchar(256) NOT NULL,
      `address_phone` varchar(256) NOT NULL,
      `address_details` text NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_affiliates`
    --

    CREATE TABLE `users_affiliates` (
      `id` int(10) UNSIGNED NOT NULL,
      `referrer_id` int(10) UNSIGNED NOT NULL,
      `referee_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_blocks`
    --

    CREATE TABLE `users_blocks` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `blocked_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_gifts`
    --

    CREATE TABLE `users_gifts` (
      `id` int(10) UNSIGNED NOT NULL,
      `from_user_id` int(10) UNSIGNED NOT NULL,
      `to_user_id` int(10) UNSIGNED NOT NULL,
      `gift_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_groups`
    --

    CREATE TABLE `users_groups` (
      `user_group_id` int(10) UNSIGNED NOT NULL,
      `user_group_title` varchar(255) NOT NULL,
      `permissions_group_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_invitations`
    --

    CREATE TABLE `users_invitations` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `email_phone` varchar(64) NOT NULL,
      `invitation_date` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_pokes`
    --

    CREATE TABLE `users_pokes` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `poked_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_recurring_payments`
    --

    CREATE TABLE `users_recurring_payments` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `payment_gateway` varchar(256) NOT NULL,
      `handle` varchar(256) NOT NULL,
      `handle_id` int(10) UNSIGNED NOT NULL,
      `subscription_id` varchar(256) NOT NULL,
      `time` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_searches`
    --

    CREATE TABLE `users_searches` (
      `log_id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(32) NOT NULL,
      `time` datetime DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_sessions`
    --

    CREATE TABLE `users_sessions` (
      `session_id` int(10) UNSIGNED NOT NULL,
      `session_token` varchar(64) NOT NULL,
      `session_date` datetime NOT NULL,
      `session_type` enum('W','A','I') NOT NULL DEFAULT 'W',
      `user_id` int(10) UNSIGNED NOT NULL,
      `user_ip` varchar(64) NOT NULL,
      `user_browser` varchar(64) DEFAULT NULL,
      `user_os` varchar(64) NOT NULL,
      `user_os_version` varchar(64) DEFAULT NULL,
      `user_device_name` varchar(64) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_sms`
    --

    CREATE TABLE `users_sms` (
      `id` int(10) UNSIGNED NOT NULL,
      `phone` varchar(256) NOT NULL,
      `insert_date` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `users_top_friends`
    --

    CREATE TABLE `users_top_friends` (
      `id` int(10) UNSIGNED NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `friend_id` int(10) UNSIGNED NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

 

    CREATE TABLE `users_uploads` (
      `id` int(11) NOT NULL,
      `user_id` int(10) NOT NULL,
      `file_name` varchar(256) NOT NULL,
      `file_size` float NOT NULL,
      `insert_date` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

    

    CREATE TABLE `verification_requests` (
      `request_id` int(10) UNSIGNED NOT NULL,
      `node_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(32) NOT NULL,
      `photo` varchar(256) DEFAULT NULL,
      `passport` varchar(256) DEFAULT NULL,
      `business_website` text,
      `business_address` text,
      `message` text,
      `time` datetime NOT NULL,
      `status` tinyint(1) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `wallet_payments`
    --

    CREATE TABLE `wallet_payments` (
      `payment_id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `amount` varchar(32) NOT NULL,
      `method` varchar(64) NOT NULL,
      `method_value` text NOT NULL,
      `time` datetime NOT NULL,
      `status` tinyint(1) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `wallet_transactions`
    --

    CREATE TABLE `wallet_transactions` (
      `transaction_id` int(10) NOT NULL,
      `user_id` int(10) UNSIGNED NOT NULL,
      `node_type` varchar(32) NOT NULL,
      `node_id` int(10) UNSIGNED DEFAULT NULL,
      `amount` varchar(32) NOT NULL,
      `type` enum('in','out') NOT NULL,
      `date` datetime NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    -- --------------------------------------------------------

    --
    -- Table structure for table `widgets`
    --

    CREATE TABLE `widgets` (
      `widget_id` int(10) UNSIGNED NOT NULL,
      `title` varchar(256) NOT NULL,
      `place` varchar(32) NOT NULL,
      `place_order` int(10) UNSIGNED NOT NULL DEFAULT '1',
      `code` mediumtext NOT NULL,
      `language_id` int(10) NOT NULL DEFAULT '0',
      `target_audience` enum('all','members','visitors') NOT NULL DEFAULT 'all'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

    --
    -- Indexes for dumped tables
    --

    --
    -- Indexes for table `activities`
    --
    ALTER TABLE `activities`
      ADD PRIMARY KEY (`activity_id`),
      ADD KEY `post_id` (`page_id`),
      ADD KEY `category_id` (`category_id`);

    --
    -- Indexes for table `activities_categories`
    --
    ALTER TABLE `activities_categories`
      ADD PRIMARY KEY (`category_id`),
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `activities_permisions_requests`
    --
    ALTER TABLE `activities_permisions_requests`
      ADD PRIMARY KEY (`request_id`);

    --
    -- Indexes for table `activities_permissions_users`
    --
    ALTER TABLE `activities_permissions_users`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_blocked_id` (`user_id`,`page_id`);

    --
    -- Indexes for table `ads_campaigns`
    --
    ALTER TABLE `ads_campaigns`
      ADD PRIMARY KEY (`campaign_id`),
      ADD KEY `campaign_user_id` (`campaign_user_id`);

    --
    -- Indexes for table `ads_system`
    --
    ALTER TABLE `ads_system`
      ADD PRIMARY KEY (`ads_id`);

    --
    -- Indexes for table `affiliates_payments`
    --
    ALTER TABLE `affiliates_payments`
      ADD PRIMARY KEY (`payment_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `announcements`
    --
    ALTER TABLE `announcements`
      ADD PRIMARY KEY (`announcement_id`);

    --
    -- Indexes for table `announcements_users`
    --
    ALTER TABLE `announcements_users`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `announcement_id_user_id` (`announcement_id`,`user_id`);

    --
    -- Indexes for table `auto_connect`
    --
    ALTER TABLE `auto_connect`
      ADD PRIMARY KEY (`id`),
      ADD KEY `country_id` (`country_id`);

    --
    -- Indexes for table `bank_transfers`
    --
    ALTER TABLE `bank_transfers`
      ADD PRIMARY KEY (`transfer_id`),
      ADD KEY `user_id` (`user_id`),
      ADD KEY `package_id` (`package_id`),
      ADD KEY `post_id` (`post_id`);

    --
    -- Indexes for table `blacklist`
    --
    ALTER TABLE `blacklist`
      ADD PRIMARY KEY (`node_id`),
      ADD KEY `node_value` (`node_value`);

    --
    -- Indexes for table `blogs_categories`
    --
    ALTER TABLE `blogs_categories`
      ADD PRIMARY KEY (`category_id`),
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `coinpayments_transactions`
    --
    ALTER TABLE `coinpayments_transactions`
      ADD PRIMARY KEY (`transaction_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `conversations`
    --
    ALTER TABLE `conversations`
      ADD PRIMARY KEY (`conversation_id`),
      ADD KEY `last_message_id` (`last_message_id`);

    --
    -- Indexes for table `conversations_calls_audio`
    --
    ALTER TABLE `conversations_calls_audio`
      ADD PRIMARY KEY (`call_id`),
      ADD KEY `from_user_id` (`from_user_id`),
      ADD KEY `to_user_id` (`to_user_id`);

    --
    -- Indexes for table `conversations_calls_video`
    --
    ALTER TABLE `conversations_calls_video`
      ADD PRIMARY KEY (`call_id`),
      ADD KEY `from_user_id` (`from_user_id`),
      ADD KEY `to_user_id` (`to_user_id`);

    --
    -- Indexes for table `conversations_messages`
    --
    ALTER TABLE `conversations_messages`
      ADD PRIMARY KEY (`message_id`),
      ADD KEY `conversation_id` (`conversation_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `conversations_users`
    --
    ALTER TABLE `conversations_users`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `conversation_id_user_id` (`conversation_id`,`user_id`);

    --
    -- Indexes for table `courses_categories`
    --
    ALTER TABLE `courses_categories`
      ADD PRIMARY KEY (`category_id`) USING BTREE,
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `custom_fields`
    --
    ALTER TABLE `custom_fields`
      ADD PRIMARY KEY (`field_id`);

    --
    -- Indexes for table `custom_fields_values`
    --
    ALTER TABLE `custom_fields_values`
      ADD PRIMARY KEY (`value_id`),
      ADD UNIQUE KEY `field_id_node_id_node_type` (`field_id`,`node_id`,`node_type`),
      ADD KEY `value` (`value`(20));

    --
    -- Indexes for table `developers_apps`
    --
    ALTER TABLE `developers_apps`
      ADD PRIMARY KEY (`app_id`),
      ADD UNIQUE KEY `app_auth_id` (`app_auth_id`),
      ADD UNIQUE KEY `app_auth_secret` (`app_auth_secret`),
      ADD KEY `app_user_id` (`app_user_id`),
      ADD KEY `app_category_id` (`app_category_id`);

    --
    -- Indexes for table `developers_apps_categories`
    --
    ALTER TABLE `developers_apps_categories`
      ADD PRIMARY KEY (`category_id`),
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `developers_apps_users`
    --
    ALTER TABLE `developers_apps_users`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `app_id_user_id` (`app_id`,`user_id`) USING BTREE;

    --
    -- Indexes for table `emojis`
    --
    ALTER TABLE `emojis`
      ADD PRIMARY KEY (`emoji_id`);

    --
    -- Indexes for table `events`
    --
    ALTER TABLE `events`
      ADD PRIMARY KEY (`event_id`),
      ADD KEY `event_admin` (`event_admin`),
      ADD KEY `event_category` (`event_category`),
      ADD KEY `event_cover_id` (`event_cover_id`),
      ADD KEY `event_album_covers` (`event_album_covers`),
      ADD KEY `event_album_timeline` (`event_album_timeline`),
      ADD KEY `event_date` (`event_date`) USING BTREE,
      ADD KEY `event_title_idx` (`event_title`) USING BTREE;

    --
    -- Indexes for table `events_categories`
    --
    ALTER TABLE `events_categories`
      ADD PRIMARY KEY (`category_id`),
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `events_members`
    --
    ALTER TABLE `events_members`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `event_id_user_id` (`event_id`,`user_id`) USING BTREE;

    --
    -- Indexes for table `followings`
    --
    ALTER TABLE `followings`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_following_id` (`user_id`,`following_id`),
      ADD KEY `user_id` (`user_id`) USING BTREE,
      ADD KEY `following_id` (`following_id`) USING BTREE;

    --
    -- Indexes for table `forums`
    --
    ALTER TABLE `forums`
      ADD PRIMARY KEY (`forum_id`),
      ADD KEY `forum_section` (`forum_section`);

    --
    -- Indexes for table `forums_replies`
    --
    ALTER TABLE `forums_replies`
      ADD PRIMARY KEY (`reply_id`),
      ADD KEY `thread_id` (`thread_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `forums_threads`
    --
    ALTER TABLE `forums_threads`
      ADD PRIMARY KEY (`thread_id`),
      ADD KEY `forum_id` (`forum_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `friends`
    --
    ALTER TABLE `friends`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_one_id_user_two_id` (`user_one_id`,`user_two_id`),
      ADD KEY `user_one_id` (`user_one_id`) USING BTREE,
      ADD KEY `user_two_id` (`user_two_id`) USING BTREE,
      ADD KEY `status` (`status`) USING BTREE;

    --
    -- Indexes for table `funding_payments`
    --
    ALTER TABLE `funding_payments`
      ADD PRIMARY KEY (`payment_id`) USING BTREE,
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `games`
    --
    ALTER TABLE `games`
      ADD PRIMARY KEY (`game_id`);

    --
    -- Indexes for table `games_genres`
    --
    ALTER TABLE `games_genres`
      ADD PRIMARY KEY (`genre_id`);

    --
    -- Indexes for table `games_players`
    --
    ALTER TABLE `games_players`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `game_id_user_id` (`game_id`,`user_id`);

    --
    -- Indexes for table `gifts`
    --
    ALTER TABLE `gifts`
      ADD PRIMARY KEY (`gift_id`);

    --
    -- Indexes for table `groups`
    --
    ALTER TABLE `groups`
      ADD PRIMARY KEY (`group_id`),
      ADD UNIQUE KEY `group_name` (`group_name`) USING BTREE,
      ADD KEY `group_admin` (`group_admin`),
      ADD KEY `group_category` (`group_category`),
      ADD KEY `group_picture_id` (`group_picture_id`),
      ADD KEY `group_cover_id` (`group_cover_id`),
      ADD KEY `group_album_pictures` (`group_album_pictures`),
      ADD KEY `group_album_covers` (`group_album_covers`),
      ADD KEY `group_album_timeline` (`group_album_timeline`),
      ADD KEY `group_date` (`group_date`) USING BTREE,
      ADD KEY `group_title_idx` (`group_title`) USING BTREE,
      ADD KEY `group_name_idx` (`group_name`) USING BTREE;

    --
    -- Indexes for table `groups_admins`
    --
    ALTER TABLE `groups_admins`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `group_id_user_id` (`group_id`,`user_id`);

    --
    -- Indexes for table `groups_categories`
    --
    ALTER TABLE `groups_categories`
      ADD PRIMARY KEY (`category_id`),
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `groups_invites`
    --
    ALTER TABLE `groups_invites`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `page_id_user_id_from_user_id` (`group_id`,`user_id`,`from_user_id`);

    --
    -- Indexes for table `groups_members`
    --
    ALTER TABLE `groups_members`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `group_id_user_id` (`group_id`,`user_id`);

    --
    -- Indexes for table `hashtags`
    --
    ALTER TABLE `hashtags`
      ADD PRIMARY KEY (`hashtag_id`),
      ADD KEY `hashtag` (`hashtag`);

    --
    -- Indexes for table `hashtags_posts`
    --
    ALTER TABLE `hashtags_posts`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `post_id_hashtag_id` (`post_id`,`hashtag_id`),
      ADD KEY `post_id` (`post_id`) USING BTREE,
      ADD KEY `hashtag_id` (`hashtag_id`) USING BTREE;

    --
    -- Indexes for table `invitation_codes`
    --
    ALTER TABLE `invitation_codes`
      ADD PRIMARY KEY (`code_id`),
      ADD KEY `created_by` (`created_by`),
      ADD KEY `used_by` (`used_by`);

    --
    -- Indexes for table `jobs_categories`
    --
    ALTER TABLE `jobs_categories`
      ADD PRIMARY KEY (`category_id`) USING BTREE,
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `log_commissions`
    --
    ALTER TABLE `log_commissions`
      ADD PRIMARY KEY (`payment_id`) USING BTREE,
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `log_payments`
    --
    ALTER TABLE `log_payments`
      ADD PRIMARY KEY (`payment_id`) USING BTREE,
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `log_points`
    --
    ALTER TABLE `log_points`
      ADD PRIMARY KEY (`log_id`) USING BTREE,
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `log_sessions`
    --
    ALTER TABLE `log_sessions`
      ADD PRIMARY KEY (`session_id`),
      ADD KEY `session_ip` (`session_ip`) USING BTREE,
      ADD KEY `session_user_agent` (`session_user_agent`) USING BTREE,
      ADD KEY `idx_session_ip_user_agent` (`session_ip`,`session_user_agent`);

    --
    -- Indexes for table `log_subscriptions`
    --
    ALTER TABLE `log_subscriptions`
      ADD PRIMARY KEY (`payment_id`) USING BTREE,
      ADD KEY `user_id` (`node_id`);

    --
    -- Indexes for table `market_categories`
    --
    ALTER TABLE `market_categories`
      ADD PRIMARY KEY (`category_id`),
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `market_payments`
    --
    ALTER TABLE `market_payments`
      ADD PRIMARY KEY (`payment_id`) USING BTREE,
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `monetization_payments`
    --
    ALTER TABLE `monetization_payments`
      ADD PRIMARY KEY (`payment_id`) USING BTREE,
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `monetization_plans`
    --
    ALTER TABLE `monetization_plans`
      ADD PRIMARY KEY (`plan_id`);

    --
    -- Indexes for table `movies`
    --
    ALTER TABLE `movies`
      ADD PRIMARY KEY (`movie_id`);

    --
    -- Indexes for table `movies_genres`
    --
    ALTER TABLE `movies_genres`
      ADD PRIMARY KEY (`genre_id`);

    --
    -- Indexes for table `movies_payments`
    --
    ALTER TABLE `movies_payments`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `move_id_user_id` (`movie_id`,`user_id`) USING BTREE;

    --
    -- Indexes for table `notifications`
    --
    ALTER TABLE `notifications`
      ADD PRIMARY KEY (`notification_id`),
      ADD KEY `to_user_id` (`to_user_id`),
      ADD KEY `from_user_id` (`from_user_id`,`from_user_type`);

    --
    -- Indexes for table `offers_categories`
    --
    ALTER TABLE `offers_categories`
      ADD PRIMARY KEY (`category_id`) USING BTREE,
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `orders`
    --
    ALTER TABLE `orders`
      ADD PRIMARY KEY (`order_id`),
      ADD KEY `seller_id` (`seller_id`) USING BTREE,
      ADD KEY `buyer_id` (`buyer_id`) USING BTREE,
      ADD KEY `buyer_address_id` (`buyer_address_id`) USING BTREE,
      ADD KEY `order_collection_id` (`order_collection_id`) USING BTREE,
      ADD KEY `order_hash` (`order_hash`) USING BTREE;

    --
    -- Indexes for table `orders_items`
    --
    ALTER TABLE `orders_items`
      ADD PRIMARY KEY (`id`),
      ADD KEY `product_post_id` (`product_post_id`) USING BTREE,
      ADD KEY `order_id` (`order_id`) USING BTREE;

    --
    -- Indexes for table `packages`
    --
    ALTER TABLE `packages`
      ADD PRIMARY KEY (`package_id`),
      ADD KEY `package_permissions_group_id` (`package_permissions_group_id`) USING BTREE;

    --
    -- Indexes for table `packages_payments`
    --
    ALTER TABLE `packages_payments`
      ADD PRIMARY KEY (`payment_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `pages`
    --
    ALTER TABLE `pages`
      ADD PRIMARY KEY (`page_id`),
      ADD UNIQUE KEY `page_name` (`page_name`) USING BTREE,
      ADD KEY `page_admin` (`page_admin`),
      ADD KEY `page_category` (`page_category`),
      ADD KEY `page_cover_id` (`page_cover_id`),
      ADD KEY `page_picture_id` (`page_picture_id`),
      ADD KEY `page_country` (`page_country`),
      ADD KEY `page_album_pictures` (`page_album_pictures`),
      ADD KEY `page_album_covers` (`page_album_covers`),
      ADD KEY `page_album_timeline` (`page_album_timeline`),
      ADD KEY `page_boosted` (`page_boosted`) USING BTREE,
      ADD KEY `page_date` (`page_date`) USING BTREE,
      ADD KEY `page_name_idx` (`page_name`) USING BTREE,
      ADD KEY `page_title_idx` (`page_title`) USING BTREE;

    --
    -- Indexes for table `pages_admins`
    --
    ALTER TABLE `pages_admins`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `page_id_user_id` (`page_id`,`user_id`);

    --
    -- Indexes for table `pages_categories`
    --
    ALTER TABLE `pages_categories`
      ADD PRIMARY KEY (`category_id`),
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `pages_invites`
    --
    ALTER TABLE `pages_invites`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `page_id_user_id_from_user_id` (`page_id`,`user_id`,`from_user_id`);

    --
    -- Indexes for table `pages_likes`
    --
    ALTER TABLE `pages_likes`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `page_id_user_id` (`page_id`,`user_id`);

    --
    -- Indexes for table `permissions_groups`
    --
    ALTER TABLE `permissions_groups`
      ADD PRIMARY KEY (`permissions_group_id`);

    --
    -- Indexes for table `points_payments`
    --
    ALTER TABLE `points_payments`
      ADD PRIMARY KEY (`payment_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `posts`
    --
    ALTER TABLE `posts`
      ADD PRIMARY KEY (`post_id`),
      ADD KEY `group_id` (`group_id`),
      ADD KEY `event_id` (`event_id`),
      ADD KEY `wall_id` (`wall_id`),
      ADD KEY `colored_pattern` (`colored_pattern`),
      ADD KEY `origin_id` (`origin_id`),
      ADD KEY `boosted_by` (`boosted_by`),
      ADD KEY `user_id` (`user_id`,`user_type`),
      ADD KEY `boosted` (`boosted`) USING BTREE,
      ADD KEY `time` (`time`) USING BTREE;

    --
    -- Indexes for table `posts_articles`
    --
    ALTER TABLE `posts_articles`
      ADD PRIMARY KEY (`article_id`),
      ADD KEY `post_id` (`post_id`),
      ADD KEY `category_id` (`category_id`),
      ADD KEY `title_idx` (`title`) USING BTREE;
    ALTER TABLE `posts_articles` ADD FULLTEXT KEY `ft_title` (`title`);
    ALTER TABLE `posts_articles` ADD FULLTEXT KEY `ft_tags` (`tags`);

    --
    -- Indexes for table `posts_audios`
    --
    ALTER TABLE `posts_audios`
      ADD PRIMARY KEY (`audio_id`),
      ADD KEY `post_id` (`post_id`);

    --
    -- Indexes for table `posts_cache`
    --
    ALTER TABLE `posts_cache`
      ADD PRIMARY KEY (`cache_id`),
      ADD KEY `user_id` (`user_id`),
      ADD KEY `post_id` (`post_id`) USING BTREE;

    --
    -- Indexes for table `posts_colored_patterns`
    --
    ALTER TABLE `posts_colored_patterns`
      ADD PRIMARY KEY (`pattern_id`);

    --
    -- Indexes for table `posts_comments`
    --
    ALTER TABLE `posts_comments`
      ADD PRIMARY KEY (`comment_id`),
      ADD KEY `node_id` (`node_id`,`node_type`),
      ADD KEY `user_id` (`user_id`,`user_type`);

    --
    -- Indexes for table `posts_comments_reactions`
    --
    ALTER TABLE `posts_comments_reactions`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `comment_id_user_id` (`comment_id`,`user_id`);

    --
    -- Indexes for table `posts_courses`
    --
    ALTER TABLE `posts_courses`
      ADD PRIMARY KEY (`course_id`) USING BTREE,
      ADD KEY `post_id` (`post_id`),
      ADD KEY `category_id` (`category_id`);

    --
    -- Indexes for table `posts_courses_applications`
    --
    ALTER TABLE `posts_courses_applications`
      ADD PRIMARY KEY (`application_id`) USING BTREE,
      ADD KEY `post_id` (`post_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `posts_files`
    --
    ALTER TABLE `posts_files`
      ADD PRIMARY KEY (`file_id`),
      ADD KEY `post_id` (`post_id`);

    --
    -- Indexes for table `posts_funding`
    --
    ALTER TABLE `posts_funding`
      ADD PRIMARY KEY (`funding_id`) USING BTREE,
      ADD KEY `post_id` (`post_id`);

    --
    -- Indexes for table `posts_funding_donors`
    --
    ALTER TABLE `posts_funding_donors`
      ADD PRIMARY KEY (`donation_id`) USING BTREE,
      ADD KEY `user_id` (`user_id`),
      ADD KEY `post_id` (`post_id`);

    --
    -- Indexes for table `posts_hidden`
    --
    ALTER TABLE `posts_hidden`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

    --
    -- Indexes for table `posts_jobs`
    --
    ALTER TABLE `posts_jobs`
      ADD PRIMARY KEY (`job_id`) USING BTREE,
      ADD KEY `post_id` (`post_id`),
      ADD KEY `category_id` (`category_id`);

    --
    -- Indexes for table `posts_jobs_applications`
    --
    ALTER TABLE `posts_jobs_applications`
      ADD PRIMARY KEY (`application_id`) USING BTREE,
      ADD KEY `post_id` (`post_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `posts_links`
    --
    ALTER TABLE `posts_links`
      ADD PRIMARY KEY (`link_id`),
      ADD KEY `post_id` (`post_id`);

    --
    -- Indexes for table `posts_live`
    --
    ALTER TABLE `posts_live`
      ADD PRIMARY KEY (`live_id`) USING BTREE,
      ADD KEY `post_id` (`post_id`);

    --
    -- Indexes for table `posts_live_users`
    --
    ALTER TABLE `posts_live_users`
      ADD PRIMARY KEY (`id`) USING BTREE,
      ADD UNIQUE KEY `user_id_post_id` (`user_id`,`post_id`);

    --
    -- Indexes for table `posts_media`
    --
    ALTER TABLE `posts_media`
      ADD PRIMARY KEY (`media_id`),
      ADD KEY `post_id` (`post_id`);

    --
    -- Indexes for table `posts_offers`
    --
    ALTER TABLE `posts_offers`
      ADD PRIMARY KEY (`offer_id`) USING BTREE,
      ADD KEY `post_id` (`post_id`),
      ADD KEY `category_id` (`category_id`);

    --
    -- Indexes for table `posts_paid`
    --
    ALTER TABLE `posts_paid`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

    --
    -- Indexes for table `posts_photos`
    --
    ALTER TABLE `posts_photos`
      ADD PRIMARY KEY (`photo_id`),
      ADD KEY `post_id` (`post_id`),
      ADD KEY `album_id` (`album_id`);

    --
    -- Indexes for table `posts_photos_albums`
    --
    ALTER TABLE `posts_photos_albums`
      ADD PRIMARY KEY (`album_id`),
      ADD KEY `user_id` (`user_id`,`user_type`),
      ADD KEY `group_id` (`group_id`),
      ADD KEY `event_id` (`event_id`);

    --
    -- Indexes for table `posts_photos_reactions`
    --
    ALTER TABLE `posts_photos_reactions`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_photo_id` (`user_id`,`photo_id`);

    --
    -- Indexes for table `posts_polls`
    --
    ALTER TABLE `posts_polls`
      ADD PRIMARY KEY (`poll_id`),
      ADD KEY `post_id` (`post_id`);

    --
    -- Indexes for table `posts_polls_options`
    --
    ALTER TABLE `posts_polls_options`
      ADD PRIMARY KEY (`option_id`),
      ADD KEY `poll_id` (`poll_id`);

    --
    -- Indexes for table `posts_polls_options_users`
    --
    ALTER TABLE `posts_polls_options_users`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_poll_id` (`user_id`,`poll_id`);

    --
    -- Indexes for table `posts_products`
    --
    ALTER TABLE `posts_products`
      ADD PRIMARY KEY (`product_id`),
      ADD KEY `post_id` (`post_id`),
      ADD KEY `category_id` (`category_id`);

    --
    -- Indexes for table `posts_reactions`
    --
    ALTER TABLE `posts_reactions`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

    --
    -- Indexes for table `posts_reels`
    --
    ALTER TABLE `posts_reels`
      ADD PRIMARY KEY (`reel_id`),
      ADD KEY `post_id` (`post_id`);

    --
    -- Indexes for table `posts_saved`
    --
    ALTER TABLE `posts_saved`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

    --
    -- Indexes for table `posts_videos`
    --
    ALTER TABLE `posts_videos`
      ADD PRIMARY KEY (`video_id`),
      ADD KEY `post_id` (`post_id`),
      ADD KEY `category_id` (`category_id`) USING BTREE;

    --
    -- Indexes for table `posts_videos_categories`
    --
    ALTER TABLE `posts_videos_categories`
      ADD PRIMARY KEY (`category_id`),
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `posts_views`
    --
    ALTER TABLE `posts_views`
      ADD PRIMARY KEY (`view_id`),
      ADD KEY `user_id` (`user_id`),
      ADD KEY `post_id` (`post_id`) USING BTREE,
      ADD KEY `guest_ip` (`guest_ip`) USING BTREE;

    --
    -- Indexes for table `reports`
    --
    ALTER TABLE `reports`
      ADD PRIMARY KEY (`report_id`),
      ADD KEY `user_id` (`user_id`),
      ADD KEY `category_id` (`category_id`),
      ADD KEY `node_id` (`node_id`);

    --
    -- Indexes for table `reports_categories`
    --
    ALTER TABLE `reports_categories`
      ADD PRIMARY KEY (`category_id`),
      ADD KEY `category_parent_id` (`category_parent_id`);

    --
    -- Indexes for table `reviews`
    --
    ALTER TABLE `reviews`
      ADD PRIMARY KEY (`review_id`),
      ADD KEY `user_id` (`user_id`),
      ADD KEY `page_id` (`node_id`) USING BTREE;

    --
    -- Indexes for table `reviews_photos`
    --
    ALTER TABLE `reviews_photos`
      ADD PRIMARY KEY (`photo_id`),
      ADD KEY `review_id` (`review_id`) USING BTREE;

    --
    -- Indexes for table `shopping_cart`
    --
    ALTER TABLE `shopping_cart`
      ADD PRIMARY KEY (`id`),
      ADD KEY `user_id` (`user_id`) USING BTREE,
      ADD KEY `product_post_id` (`product_post_id`) USING BTREE;

    --
    -- Indexes for table `sneak_peaks`
    --
    ALTER TABLE `sneak_peaks`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_node_id_node_type` (`user_id`,`node_id`,`node_type`) USING BTREE;

    --
    -- Indexes for table `static_pages`
    --
    ALTER TABLE `static_pages`
      ADD PRIMARY KEY (`page_id`),
      ADD UNIQUE KEY `page_url` (`page_url`);

    --
    -- Indexes for table `stickers`
    --
    ALTER TABLE `stickers`
      ADD PRIMARY KEY (`sticker_id`);

    --
    -- Indexes for table `stories`
    --
    ALTER TABLE `stories`
      ADD PRIMARY KEY (`story_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `stories_media`
    --
    ALTER TABLE `stories_media`
      ADD PRIMARY KEY (`media_id`),
      ADD KEY `story_id` (`story_id`);

    --
    -- Indexes for table `subscribers`
    --
    ALTER TABLE `subscribers`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_node_id_node_type` (`user_id`,`node_id`,`node_type`) USING BTREE;

    --
    -- Indexes for table `system_countries`
    --
    ALTER TABLE `system_countries`
      ADD PRIMARY KEY (`country_id`);

    --
    -- Indexes for table `system_currencies`
    --
    ALTER TABLE `system_currencies`
      ADD PRIMARY KEY (`currency_id`);

    --
    -- Indexes for table `system_genders`
    --
    ALTER TABLE `system_genders`
      ADD PRIMARY KEY (`gender_id`) USING BTREE,
      ADD UNIQUE KEY `name` (`gender_name`) USING BTREE;

    --
    -- Indexes for table `system_languages`
    --
    ALTER TABLE `system_languages`
      ADD PRIMARY KEY (`language_id`),
      ADD UNIQUE KEY `code` (`code`);

    --
    -- Indexes for table `system_options`
    --
    ALTER TABLE `system_options`
      ADD PRIMARY KEY (`option_id`),
      ADD UNIQUE KEY `option_name` (`option_name`);

    --
    -- Indexes for table `system_reactions`
    --
    ALTER TABLE `system_reactions`
      ADD PRIMARY KEY (`reaction_id`);

    --
    -- Indexes for table `system_themes`
    --
    ALTER TABLE `system_themes`
      ADD PRIMARY KEY (`theme_id`),
      ADD UNIQUE KEY `name` (`name`);

    --
    -- Indexes for table `users`
    --
    ALTER TABLE `users`
      ADD PRIMARY KEY (`user_id`),
      ADD UNIQUE KEY `user_email` (`user_email`),
      ADD UNIQUE KEY `username` (`user_name`) USING BTREE,
      ADD UNIQUE KEY `facebook_id` (`facebook_id`),
      ADD UNIQUE KEY `twitter_id` (`twitter_id`),
      ADD UNIQUE KEY `linkedin_id` (`linkedin_id`),
      ADD UNIQUE KEY `vkontakte_id` (`vkontakte_id`),
      ADD UNIQUE KEY `instagram_id` (`instagram_id`),
      ADD UNIQUE KEY `user_phone` (`user_phone`),
      ADD UNIQUE KEY `google_id` (`google_id`),
      ADD KEY `user_picture_id` (`user_picture_id`),
      ADD KEY `user_gender` (`user_gender`),
      ADD KEY `user_cover_id` (`user_cover_id`),
      ADD KEY `user_country` (`user_country`),
      ADD KEY `user_album_pictures` (`user_album_pictures`),
      ADD KEY `user_album_covers` (`user_album_covers`),
      ADD KEY `user_album_timeline` (`user_album_timeline`),
      ADD KEY `user_banned` (`user_banned`) USING BTREE,
      ADD KEY `user_subscribed` (`user_subscribed`) USING BTREE,
      ADD KEY `user_registered` (`user_registered`) USING BTREE,
      ADD KEY `user_id_idx` (`user_id`) USING BTREE,
      ADD KEY `user_lastname_idx` (`user_lastname`) USING BTREE,
      ADD KEY `user_name_idx` (`user_name`) USING BTREE,
      ADD KEY `user_firstname_idx` (`user_firstname`) USING BTREE;

    --
    -- Indexes for table `users_accounts`
    --
    ALTER TABLE `users_accounts`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_account_id` (`user_id`,`account_id`) USING BTREE;

    --
    -- Indexes for table `users_addresses`
    --
    ALTER TABLE `users_addresses`
      ADD PRIMARY KEY (`address_id`),
      ADD KEY `user_id` (`user_id`) USING BTREE;

    --
    -- Indexes for table `users_affiliates`
    --
    ALTER TABLE `users_affiliates`
      ADD PRIMARY KEY (`id`) USING BTREE,
      ADD UNIQUE KEY `referrer_id_referee_id` (`referrer_id`,`referee_id`) USING BTREE;

    --
    -- Indexes for table `users_blocks`
    --
    ALTER TABLE `users_blocks`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_blocked_id` (`user_id`,`blocked_id`);

    --
    -- Indexes for table `users_gifts`
    --
    ALTER TABLE `users_gifts`
      ADD PRIMARY KEY (`id`),
      ADD KEY `from_user_id` (`from_user_id`),
      ADD KEY `to_user_id` (`to_user_id`),
      ADD KEY `gift_id` (`gift_id`);

    --
    -- Indexes for table `users_groups`
    --
    ALTER TABLE `users_groups`
      ADD PRIMARY KEY (`user_group_id`),
      ADD KEY `permissions_group_id` (`permissions_group_id`) USING BTREE;

    --
    -- Indexes for table `users_invitations`
    --
    ALTER TABLE `users_invitations`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_email_phone` (`user_id`,`email_phone`) USING BTREE;

    --
    -- Indexes for table `users_pokes`
    --
    ALTER TABLE `users_pokes`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_poked_id` (`user_id`,`poked_id`) USING BTREE;

    --
    -- Indexes for table `users_recurring_payments`
    --
    ALTER TABLE `users_recurring_payments`
      ADD PRIMARY KEY (`id`),
      ADD KEY `user_id` (`user_id`) USING BTREE;

    --
    -- Indexes for table `users_searches`
    --
    ALTER TABLE `users_searches`
      ADD PRIMARY KEY (`log_id`),
      ADD UNIQUE KEY `user_id_node_id_node_type` (`user_id`,`node_id`,`node_type`) USING BTREE,
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `users_sessions`
    --
    ALTER TABLE `users_sessions`
      ADD PRIMARY KEY (`session_id`),
      ADD UNIQUE KEY `session_token` (`session_token`),
      ADD KEY `user_ip` (`user_ip`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `users_sms`
    --
    ALTER TABLE `users_sms`
      ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `users_top_friends`
    --
    ALTER TABLE `users_top_friends`
      ADD PRIMARY KEY (`id`),
      ADD UNIQUE KEY `user_id_friend_id` (`user_id`,`friend_id`) USING BTREE;

    --
    -- Indexes for table `users_uploads`
    --
    ALTER TABLE `users_uploads`
      ADD PRIMARY KEY (`id`);

    --
    -- Indexes for table `verification_requests`
    --
    ALTER TABLE `verification_requests`
      ADD PRIMARY KEY (`request_id`);

    --
    -- Indexes for table `wallet_payments`
    --
    ALTER TABLE `wallet_payments`
      ADD PRIMARY KEY (`payment_id`) USING BTREE,
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `wallet_transactions`
    --
    ALTER TABLE `wallet_transactions`
      ADD PRIMARY KEY (`transaction_id`),
      ADD KEY `user_id` (`user_id`);

    --
    -- Indexes for table `widgets`
    --
    ALTER TABLE `widgets`
      ADD PRIMARY KEY (`widget_id`);

    --
    -- AUTO_INCREMENT for dumped tables
    --

    --
    -- AUTO_INCREMENT for table `activities`
    --
    ALTER TABLE `activities`
      MODIFY `activity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `activities_categories`
    --
    ALTER TABLE `activities_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `activities_permisions_requests`
    --
    ALTER TABLE `activities_permisions_requests`
      MODIFY `request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `activities_permissions_users`
    --
    ALTER TABLE `activities_permissions_users`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `ads_campaigns`
    --
    ALTER TABLE `ads_campaigns`
      MODIFY `campaign_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `ads_system`
    --
    ALTER TABLE `ads_system`
      MODIFY `ads_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `affiliates_payments`
    --
    ALTER TABLE `affiliates_payments`
      MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `announcements`
    --
    ALTER TABLE `announcements`
      MODIFY `announcement_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `announcements_users`
    --
    ALTER TABLE `announcements_users`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `auto_connect`
    --
    ALTER TABLE `auto_connect`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `bank_transfers`
    --
    ALTER TABLE `bank_transfers`
      MODIFY `transfer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `blacklist`
    --
    ALTER TABLE `blacklist`
      MODIFY `node_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `blogs_categories`
    --
    ALTER TABLE `blogs_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

    --
    -- AUTO_INCREMENT for table `coinpayments_transactions`
    --
    ALTER TABLE `coinpayments_transactions`
      MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `conversations`
    --
    ALTER TABLE `conversations`
      MODIFY `conversation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `conversations_calls_audio`
    --
    ALTER TABLE `conversations_calls_audio`
      MODIFY `call_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `conversations_calls_video`
    --
    ALTER TABLE `conversations_calls_video`
      MODIFY `call_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `conversations_messages`
    --
    ALTER TABLE `conversations_messages`
      MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `conversations_users`
    --
    ALTER TABLE `conversations_users`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `courses_categories`
    --
    ALTER TABLE `courses_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

    --
    -- AUTO_INCREMENT for table `custom_fields`
    --
    ALTER TABLE `custom_fields`
      MODIFY `field_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `custom_fields_values`
    --
    ALTER TABLE `custom_fields_values`
      MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `developers_apps`
    --
    ALTER TABLE `developers_apps`
      MODIFY `app_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `developers_apps_categories`
    --
    ALTER TABLE `developers_apps_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

    --
    -- AUTO_INCREMENT for table `developers_apps_users`
    --
    ALTER TABLE `developers_apps_users`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `emojis`
    --
    ALTER TABLE `emojis`
      MODIFY `emoji_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1803;

    --
    -- AUTO_INCREMENT for table `events`
    --
    ALTER TABLE `events`
      MODIFY `event_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `events_categories`
    --
    ALTER TABLE `events_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

    --
    -- AUTO_INCREMENT for table `events_members`
    --
    ALTER TABLE `events_members`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `followings`
    --
    ALTER TABLE `followings`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `forums`
    --
    ALTER TABLE `forums`
      MODIFY `forum_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `forums_replies`
    --
    ALTER TABLE `forums_replies`
      MODIFY `reply_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `forums_threads`
    --
    ALTER TABLE `forums_threads`
      MODIFY `thread_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `friends`
    --
    ALTER TABLE `friends`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `funding_payments`
    --
    ALTER TABLE `funding_payments`
      MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `games`
    --
    ALTER TABLE `games`
      MODIFY `game_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `games_genres`
    --
    ALTER TABLE `games_genres`
      MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

    --
    -- AUTO_INCREMENT for table `games_players`
    --
    ALTER TABLE `games_players`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `gifts`
    --
    ALTER TABLE `gifts`
      MODIFY `gift_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `groups`
    --
    ALTER TABLE `groups`
      MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `groups_admins`
    --
    ALTER TABLE `groups_admins`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `groups_categories`
    --
    ALTER TABLE `groups_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

    --
    -- AUTO_INCREMENT for table `groups_invites`
    --
    ALTER TABLE `groups_invites`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `groups_members`
    --
    ALTER TABLE `groups_members`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `hashtags`
    --
    ALTER TABLE `hashtags`
      MODIFY `hashtag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `hashtags_posts`
    --
    ALTER TABLE `hashtags_posts`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `invitation_codes`
    --
    ALTER TABLE `invitation_codes`
      MODIFY `code_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `jobs_categories`
    --
    ALTER TABLE `jobs_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

    --
    -- AUTO_INCREMENT for table `log_commissions`
    --
    ALTER TABLE `log_commissions`
      MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `log_payments`
    --
    ALTER TABLE `log_payments`
      MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `log_points`
    --
    ALTER TABLE `log_points`
      MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `log_sessions`
    --
    ALTER TABLE `log_sessions`
      MODIFY `session_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `log_subscriptions`
    --
    ALTER TABLE `log_subscriptions`
      MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `market_categories`
    --
    ALTER TABLE `market_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

    --
    -- AUTO_INCREMENT for table `market_payments`
    --
    ALTER TABLE `market_payments`
      MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `monetization_payments`
    --
    ALTER TABLE `monetization_payments`
      MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `monetization_plans`
    --
    ALTER TABLE `monetization_plans`
      MODIFY `plan_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `movies`
    --
    ALTER TABLE `movies`
      MODIFY `movie_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `movies_genres`
    --
    ALTER TABLE `movies_genres`
      MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

    --
    -- AUTO_INCREMENT for table `movies_payments`
    --
    ALTER TABLE `movies_payments`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `notifications`
    --
    ALTER TABLE `notifications`
      MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `offers_categories`
    --
    ALTER TABLE `offers_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

    --
    -- AUTO_INCREMENT for table `orders`
    --
    ALTER TABLE `orders`
      MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `orders_items`
    --
    ALTER TABLE `orders_items`
      MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `packages`
    --
    ALTER TABLE `packages`
      MODIFY `package_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `packages_payments`
    --
    ALTER TABLE `packages_payments`
      MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `pages`
    --
    ALTER TABLE `pages`
      MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `pages_admins`
    --
    ALTER TABLE `pages_admins`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `pages_categories`
    --
    ALTER TABLE `pages_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

    --
    -- AUTO_INCREMENT for table `pages_invites`
    --
    ALTER TABLE `pages_invites`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `pages_likes`
    --
    ALTER TABLE `pages_likes`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `permissions_groups`
    --
    ALTER TABLE `permissions_groups`
      MODIFY `permissions_group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

    --
    -- AUTO_INCREMENT for table `points_payments`
    --
    ALTER TABLE `points_payments`
      MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts`
    --
    ALTER TABLE `posts`
      MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_articles`
    --
    ALTER TABLE `posts_articles`
      MODIFY `article_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_audios`
    --
    ALTER TABLE `posts_audios`
      MODIFY `audio_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_cache`
    --
    ALTER TABLE `posts_cache`
      MODIFY `cache_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_colored_patterns`
    --
    ALTER TABLE `posts_colored_patterns`
      MODIFY `pattern_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

    --
    -- AUTO_INCREMENT for table `posts_comments`
    --
    ALTER TABLE `posts_comments`
      MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_comments_reactions`
    --
    ALTER TABLE `posts_comments_reactions`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_courses`
    --
    ALTER TABLE `posts_courses`
      MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_courses_applications`
    --
    ALTER TABLE `posts_courses_applications`
      MODIFY `application_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_files`
    --
    ALTER TABLE `posts_files`
      MODIFY `file_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_funding`
    --
    ALTER TABLE `posts_funding`
      MODIFY `funding_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_funding_donors`
    --
    ALTER TABLE `posts_funding_donors`
      MODIFY `donation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_hidden`
    --
    ALTER TABLE `posts_hidden`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_jobs`
    --
    ALTER TABLE `posts_jobs`
      MODIFY `job_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_jobs_applications`
    --
    ALTER TABLE `posts_jobs_applications`
      MODIFY `application_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_links`
    --
    ALTER TABLE `posts_links`
      MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_live`
    --
    ALTER TABLE `posts_live`
      MODIFY `live_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_live_users`
    --
    ALTER TABLE `posts_live_users`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_media`
    --
    ALTER TABLE `posts_media`
      MODIFY `media_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_offers`
    --
    ALTER TABLE `posts_offers`
      MODIFY `offer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_paid`
    --
    ALTER TABLE `posts_paid`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_photos`
    --
    ALTER TABLE `posts_photos`
      MODIFY `photo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_photos_albums`
    --
    ALTER TABLE `posts_photos_albums`
      MODIFY `album_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_photos_reactions`
    --
    ALTER TABLE `posts_photos_reactions`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_polls`
    --
    ALTER TABLE `posts_polls`
      MODIFY `poll_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_polls_options`
    --
    ALTER TABLE `posts_polls_options`
      MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_polls_options_users`
    --
    ALTER TABLE `posts_polls_options_users`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_products`
    --
    ALTER TABLE `posts_products`
      MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_reactions`
    --
    ALTER TABLE `posts_reactions`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_reels`
    --
    ALTER TABLE `posts_reels`
      MODIFY `reel_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_saved`
    --
    ALTER TABLE `posts_saved`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_videos`
    --
    ALTER TABLE `posts_videos`
      MODIFY `video_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `posts_videos_categories`
    --
    ALTER TABLE `posts_videos_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

    --
    -- AUTO_INCREMENT for table `posts_views`
    --
    ALTER TABLE `posts_views`
      MODIFY `view_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `reports`
    --
    ALTER TABLE `reports`
      MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `reports_categories`
    --
    ALTER TABLE `reports_categories`
      MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

    --
    -- AUTO_INCREMENT for table `reviews`
    --
    ALTER TABLE `reviews`
      MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `reviews_photos`
    --
    ALTER TABLE `reviews_photos`
      MODIFY `photo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `shopping_cart`
    --
    ALTER TABLE `shopping_cart`
      MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `sneak_peaks`
    --
    ALTER TABLE `sneak_peaks`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `static_pages`
    --
    ALTER TABLE `static_pages`
      MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

    --
    -- AUTO_INCREMENT for table `stickers`
    --
    ALTER TABLE `stickers`
      MODIFY `sticker_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

    --
    -- AUTO_INCREMENT for table `stories`
    --
    ALTER TABLE `stories`
      MODIFY `story_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `stories_media`
    --
    ALTER TABLE `stories_media`
      MODIFY `media_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `subscribers`
    --
    ALTER TABLE `subscribers`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `system_countries`
    --
    ALTER TABLE `system_countries`
      MODIFY `country_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

    --
    -- AUTO_INCREMENT for table `system_currencies`
    --
    ALTER TABLE `system_currencies`
      MODIFY `currency_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

    --
    -- AUTO_INCREMENT for table `system_genders`
    --
    ALTER TABLE `system_genders`
      MODIFY `gender_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

    --
    -- AUTO_INCREMENT for table `system_languages`
    --
    ALTER TABLE `system_languages`
      MODIFY `language_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

    --
    -- AUTO_INCREMENT for table `system_options`
    --
    ALTER TABLE `system_options`
      MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5095;

    --
    -- AUTO_INCREMENT for table `system_reactions`
    --
    ALTER TABLE `system_reactions`
      MODIFY `reaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

    --
    -- AUTO_INCREMENT for table `system_themes`
    --
    ALTER TABLE `system_themes`
      MODIFY `theme_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

    --
    -- AUTO_INCREMENT for table `users`
    --
    ALTER TABLE `users`
      MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_accounts`
    --
    ALTER TABLE `users_accounts`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_addresses`
    --
    ALTER TABLE `users_addresses`
      MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_affiliates`
    --
    ALTER TABLE `users_affiliates`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_blocks`
    --
    ALTER TABLE `users_blocks`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_gifts`
    --
    ALTER TABLE `users_gifts`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_groups`
    --
    ALTER TABLE `users_groups`
      MODIFY `user_group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_invitations`
    --
    ALTER TABLE `users_invitations`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_pokes`
    --
    ALTER TABLE `users_pokes`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_recurring_payments`
    --
    ALTER TABLE `users_recurring_payments`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_searches`
    --
    ALTER TABLE `users_searches`
      MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_sessions`
    --
    ALTER TABLE `users_sessions`
      MODIFY `session_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_sms`
    --
    ALTER TABLE `users_sms`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_top_friends`
    --
    ALTER TABLE `users_top_friends`
      MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `users_uploads`
    --
    ALTER TABLE `users_uploads`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `verification_requests`
    --
    ALTER TABLE `verification_requests`
      MODIFY `request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `wallet_payments`
    --
    ALTER TABLE `wallet_payments`
      MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `wallet_transactions`
    --
    ALTER TABLE `wallet_transactions`
      MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT;

    --
    -- AUTO_INCREMENT for table `widgets`
    --
    ALTER TABLE `widgets`
      MODIFY `widget_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
    COMMIT;

    /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
    /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
    /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;