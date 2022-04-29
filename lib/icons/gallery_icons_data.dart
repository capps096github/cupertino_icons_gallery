import 'package:flutter/cupertino.dart';

import 'gallery_icon.dart';

// TODO: Sort this list in Ascending order A-Z when displaying it in the app
//  use riverpod to filter this list

// this is the full list of all cupertino icons in Alphabetical order
//source: https://api.flutter.dev/flutter/cupertino/CupertinoIcons-class.html#constants

const List<GalleryIcon> cupertinoIcons = [
// BEGIN LEGACY PRE SF SYMBOLS NAMES
// We need to leave them as-is with the same codepoints for backward
// compatibility with cupertino_icons <0.1.3.

  // left_chevron
  GalleryIcon(
    icon: CupertinoIcons.left_chevron,
    name: 'left_chevron',
    aliases: [
      'chevron_left',
    ],
  ),

  // right_chevron

  GalleryIcon(
    icon: CupertinoIcons.right_chevron,
    name: 'right_chevron',
    aliases: [
      'chevron_right',
    ],
  ),

  // share
  GalleryIcon(
    icon: CupertinoIcons.share,
    name: 'share',
    aliases: [
      'share_solid',
    ],
  ),

  // share_solid
  GalleryIcon(
    icon: CupertinoIcons.share_solid,
    name: 'share_solid',
    aliases: [
      'share',
    ],
  ),

  // book
  GalleryIcon(
    icon: CupertinoIcons.book,
    name: 'book',
    aliases: [
      'book_solid',
    ],
  ),

  // book_solid
  GalleryIcon(
    icon: CupertinoIcons.book_solid,
    name: 'book_solid',
    aliases: [
      'book',
    ],
  ),
// bookmark
  GalleryIcon(
    icon: CupertinoIcons.bookmark,
    name: 'bookmark',
    aliases: [
      'bookmark_solid',
    ],
  ),

  // bookmark_solid
  GalleryIcon(
    icon: CupertinoIcons.bookmark_solid,
    name: 'bookmark_solid',
    aliases: [
      'bookmark',
    ],
  ),

  // info
  GalleryIcon(
    icon: CupertinoIcons.info,
    name: 'info',
    aliases: [
      'info_solid',
    ],
  ),

  // reply
  GalleryIcon(
    icon: CupertinoIcons.reply,
    name: 'reply',
    aliases: [
      'reply_solid',
    ],
  ),

  // conversation_bubble
  GalleryIcon(
    icon: CupertinoIcons.conversation_bubble,
    name: 'conversation_bubble',
    aliases: [
      'conversation_bubble_solid',
    ],
  ),

  // profile_circled
  GalleryIcon(
    icon: CupertinoIcons.profile_circled,
    name: 'profile_circled',
    aliases: [
      'profile_circled_solid',
    ],
  ),

  // plus_circled
  GalleryIcon(
    icon: CupertinoIcons.plus_circled,
    name: 'plus_circled',
    aliases: [
      'plus_circled_solid',
    ],
  ),

  // minus_circled
  GalleryIcon(
    icon: CupertinoIcons.minus_circled,
    name: 'minus_circled',
    aliases: [
      'minus_circled_solid',
    ],
  ),

  // flag
  GalleryIcon(
    icon: CupertinoIcons.flag,
    name: 'flag',
    aliases: [
      'flag_solid',
    ],
  ),

  // search
  GalleryIcon(
    icon: CupertinoIcons.search,
    name: 'search',
    aliases: [
      'search_solid',
    ],
  ),

  // check_mark
  GalleryIcon(
    icon: CupertinoIcons.check_mark,
    name: 'check_mark',
    aliases: [
      'check_mark_solid',
    ],
  ),

  // check_mark_circled
  GalleryIcon(
    icon: CupertinoIcons.check_mark_circled,
    name: 'check_mark_circled',
    aliases: [
      'check_mark_circled_solid',
    ],
  ),

  // check_mark_circled_solid
  GalleryIcon(
    icon: CupertinoIcons.check_mark_circled_solid,
    name: 'check_mark_circled_solid',
    aliases: [
      'check_mark_circled',
    ],
  ),
// circle
  GalleryIcon(
    icon: CupertinoIcons.circle,
    name: 'circle',
    aliases: [
      'circle_solid',
    ],
  ),

  // circle_filled
  GalleryIcon(
    icon: CupertinoIcons.circle_filled,
    name: 'circle_filled',
    aliases: [
      'circle',
    ],
  ),

  // back
  GalleryIcon(
    icon: CupertinoIcons.back,
    name: 'back',
    aliases: [
      'back_solid',
    ],
  ),

  // forward
  GalleryIcon(
    icon: CupertinoIcons.forward,
    name: 'forward',
    aliases: [
      'forward_solid',
    ],
  ),

  // home
  GalleryIcon(
    icon: CupertinoIcons.home,
    name: 'home',
    aliases: [
      'home_solid',
    ],
  ),

  // shopping_cart
  GalleryIcon(
    icon: CupertinoIcons.shopping_cart,
    name: 'shopping_cart',
    aliases: [
      'shopping_cart_solid',
    ],
  ),

  // ellipsis
  GalleryIcon(
    icon: CupertinoIcons.ellipsis,
    name: 'ellipsis',
    aliases: [
      'ellipsis_solid',
    ],
  ),

  // phone
  GalleryIcon(
    icon: CupertinoIcons.phone,
    name: 'phone',
    aliases: [
      'phone_solid',
    ],
  ),

  // phone_solid
  GalleryIcon(
    icon: CupertinoIcons.phone_solid,
    name: 'phone_solid',
    aliases: [
      'phone',
    ],
  ),

  // down_arrow
  GalleryIcon(
    icon: CupertinoIcons.down_arrow,
    name: 'down_arrow',
    aliases: [
      'down_arrow_solid',
    ],
  ),

  // up_arrow
  GalleryIcon(
    icon: CupertinoIcons.up_arrow,
    name: 'up_arrow',
    aliases: [
      'up_arrow_solid',
    ],
  ),

  // battery_charging
  GalleryIcon(
    icon: CupertinoIcons.battery_charging,
    name: 'battery_charging',
    aliases: [
      'battery_charging_solid',
    ],
  ),

  // battery_empty
  GalleryIcon(
    icon: CupertinoIcons.battery_empty,
    name: 'battery_empty',
    aliases: [
      'battery_empty_solid',
    ],
  ),

  // battery_full
  GalleryIcon(
    icon: CupertinoIcons.battery_full,
    name: 'battery_full',
    aliases: [
      'battery_full_solid',
    ],
  ),

  // battery_75_percent
  GalleryIcon(
    icon: CupertinoIcons.battery_75_percent,
    name: 'battery_75_percent',
  ),

  // battery_25_percent
  GalleryIcon(
    icon: CupertinoIcons.battery_25_percent,
    name: 'battery_25_percent',
  ),

  // bluetooth
  GalleryIcon(
    icon: CupertinoIcons.bluetooth,
    name: 'bluetooth',
    aliases: [
      'bluetooth_solid',
    ],
  ),

  // restart
  GalleryIcon(
    icon: CupertinoIcons.restart,
    name: 'restart',
    aliases: [
      'restart_solid',
    ],
  ),

  // reply_all
  GalleryIcon(
    icon: CupertinoIcons.reply_all,
    name: 'reply_all',
  ),

  // reply_thick_solid
  GalleryIcon(
    icon: CupertinoIcons.reply_thick_solid,
    name: 'reply_thick_solid',
  ),

  // share_up
  GalleryIcon(
    icon: CupertinoIcons.share_up,
    name: 'share_up',
  ),

  // shuffle
  GalleryIcon(
    icon: CupertinoIcons.shuffle,
    name: 'shuffle',
  ),

  // shuffle_medium
  GalleryIcon(
    icon: CupertinoIcons.shuffle_medium,
    name: 'shuffle_medium',
  ),

  // shuffle_thick
  GalleryIcon(
    icon: CupertinoIcons.shuffle_thick,
    name: 'shuffle_thick',
  ),

  // photo_camera
  GalleryIcon(
    icon: CupertinoIcons.photo_camera,
    name: 'photo_camera',
  ),

  // photo_camera_solid
  GalleryIcon(
    icon: CupertinoIcons.photo_camera_solid,
    name: 'photo_camera_solid',
  ),

  // video_camera
  GalleryIcon(
    icon: CupertinoIcons.video_camera,
    name: 'video_camera',
  ),

  // video_camera_solid
  GalleryIcon(
    icon: CupertinoIcons.video_camera_solid,
    name: 'video_camera_solid',
  ),

  // switch_camera
  GalleryIcon(
    icon: CupertinoIcons.switch_camera,
    name: 'switch_camera',
  ),

  // switch_camera_solid
  GalleryIcon(
    icon: CupertinoIcons.switch_camera_solid,
    name: 'switch_camera_solid',
  ),

  // collections
  GalleryIcon(icon: CupertinoIcons.collections, name: 'collections'),

  // collections_solid
  GalleryIcon(
      icon: CupertinoIcons.collections_solid, name: 'collections_solid'),

  // folder
  GalleryIcon(icon: CupertinoIcons.folder, name: 'folder'),

  // folder_solid
  GalleryIcon(icon: CupertinoIcons.folder_solid, name: 'folder_solid'),

  // folder_open
  GalleryIcon(icon: CupertinoIcons.folder_open, name: 'folder_open'),

  // delete
  GalleryIcon(icon: CupertinoIcons.delete, name: 'delete'),

  // delete_solid
  GalleryIcon(icon: CupertinoIcons.delete_solid, name: 'delete_solid'),

  // delete_simple
  GalleryIcon(icon: CupertinoIcons.delete_simple, name: 'delete_simple'),
// pen
  GalleryIcon(icon: CupertinoIcons.pen, name: 'pen'),
// pencil
  GalleryIcon(icon: CupertinoIcons.pencil, name: 'pencil'),

  // create
  GalleryIcon(icon: CupertinoIcons.create, name: 'create'),

  // create_solid
  GalleryIcon(icon: CupertinoIcons.create_solid, name: 'create_solid'),

  // refresh
  GalleryIcon(icon: CupertinoIcons.refresh, name: 'refresh'),

  // refresh_circled
  GalleryIcon(icon: CupertinoIcons.refresh_circled, name: 'refresh_circled'),

  // refresh_circled_solid
  GalleryIcon(
      icon: CupertinoIcons.refresh_circled_solid,
      name: 'refresh_circled_solid'),

  // refresh_thin
  GalleryIcon(icon: CupertinoIcons.refresh_thin, name: 'refresh_thin'),

  // refresh_thick
  GalleryIcon(icon: CupertinoIcons.refresh_thick, name: 'refresh_thick'),

  // refresh_bold
  GalleryIcon(icon: CupertinoIcons.refresh_bold, name: 'refresh_bold'),

  // clear_thick
  GalleryIcon(icon: CupertinoIcons.clear_thick, name: 'clear_thick'),

  // clear_thick_circled
  GalleryIcon(
      icon: CupertinoIcons.clear_thick_circled, name: 'clear_thick_circled'),

  // clear
  GalleryIcon(icon: CupertinoIcons.clear, name: 'clear'),

  // clear_circled
  GalleryIcon(icon: CupertinoIcons.clear_circled, name: 'clear_circled'),

  // clear_circled_solid
  GalleryIcon(
      icon: CupertinoIcons.clear_circled_solid, name: 'clear_circled_solid'),

  // gear
  GalleryIcon(icon: CupertinoIcons.gear, name: 'gear'),

  // gear_solid
  GalleryIcon(icon: CupertinoIcons.gear_solid, name: 'gear_solid'),

  // gear_big
  GalleryIcon(icon: CupertinoIcons.gear_big, name: 'gear_big'),

  // settings
  GalleryIcon(icon: CupertinoIcons.settings, name: 'settings'),

  // settings_solid
  GalleryIcon(icon: CupertinoIcons.settings_solid, name: 'settings_solid'),

// music_note
  GalleryIcon(icon: CupertinoIcons.music_note, name: 'music_note'),

  // double_music_note
  GalleryIcon(
      icon: CupertinoIcons.double_music_note, name: 'double_music_note'),

  // play_arrow
  GalleryIcon(icon: CupertinoIcons.play_arrow, name: 'play_arrow'),

  // play_arrow_solid
  GalleryIcon(icon: CupertinoIcons.play_arrow_solid, name: 'play_arrow_solid'),
// pause
  GalleryIcon(icon: CupertinoIcons.pause, name: 'pause'),

  // pause_solid
  GalleryIcon(icon: CupertinoIcons.pause_solid, name: 'pause_solid'),

  // loop
  GalleryIcon(icon: CupertinoIcons.loop, name: 'loop'),

  // loop_thick
  GalleryIcon(icon: CupertinoIcons.loop_thick, name: 'loop_thick'),

  // volume_down
  GalleryIcon(icon: CupertinoIcons.volume_down, name: 'volume_down'),

  // volume_mute
  GalleryIcon(icon: CupertinoIcons.volume_mute, name: 'volume_mute'),

  // volume_off
  GalleryIcon(icon: CupertinoIcons.volume_off, name: 'volume_off'),

  // volume_up
  GalleryIcon(icon: CupertinoIcons.volume_up, name: 'volume_up'),

  // fullscreen
  GalleryIcon(icon: CupertinoIcons.fullscreen, name: 'fullscreen'),

  // fullscreen_exit
  GalleryIcon(icon: CupertinoIcons.fullscreen_exit, name: 'fullscreen_exit'),

  // mic_off
  GalleryIcon(icon: CupertinoIcons.mic_off, name: 'mic_off'),

  // mic
  GalleryIcon(icon: CupertinoIcons.mic, name: 'mic'),

  // mic_solid
  GalleryIcon(icon: CupertinoIcons.mic_solid, name: 'mic_solid'),

  // clock
  GalleryIcon(icon: CupertinoIcons.clock, name: 'clock'),

  // clock_solid
  GalleryIcon(icon: CupertinoIcons.clock_solid, name: 'clock_solid'),

  // time
  GalleryIcon(icon: CupertinoIcons.time, name: 'time'),

  // time_solid
  GalleryIcon(icon: CupertinoIcons.time_solid, name: 'time_solid'),

  // padlock
  GalleryIcon(icon: CupertinoIcons.padlock, name: 'padlock'),

  // padlock_solid
  GalleryIcon(icon: CupertinoIcons.padlock_solid, name: 'padlock_solid'),
// eye
  GalleryIcon(icon: CupertinoIcons.eye, name: 'eye'),

  // eye_solid
  GalleryIcon(icon: CupertinoIcons.eye_solid, name: 'eye_solid'),

  // person
  GalleryIcon(icon: CupertinoIcons.person, name: 'person'),

  // person_solid
  GalleryIcon(icon: CupertinoIcons.person_solid, name: 'person_solid'),

  // person_add
  GalleryIcon(icon: CupertinoIcons.person_add, name: 'person_add'),

  // person_add_solid
  GalleryIcon(icon: CupertinoIcons.person_add_solid, name: 'person_add_solid'),

  // group
  GalleryIcon(icon: CupertinoIcons.group, name: 'group'),

  // group_solid
  GalleryIcon(icon: CupertinoIcons.group_solid, name: 'group_solid'),

  // mail
  GalleryIcon(icon: CupertinoIcons.mail, name: 'mail'),

  // mail_solid
  GalleryIcon(icon: CupertinoIcons.mail_solid, name: 'mail_solid'),

  // location
  GalleryIcon(icon: CupertinoIcons.location, name: 'location'),

  // location_solid
  GalleryIcon(icon: CupertinoIcons.location_solid, name: 'location_solid'),

  // tag
  GalleryIcon(icon: CupertinoIcons.tag, name: 'tag'),

  // tag_solid
  GalleryIcon(icon: CupertinoIcons.tag_solid, name: 'tag_solid'),

  // tags
  GalleryIcon(icon: CupertinoIcons.tags, name: 'tags'),

  // tags_solid
  GalleryIcon(icon: CupertinoIcons.tags_solid, name: 'tags_solid'),

  // bus
  GalleryIcon(icon: CupertinoIcons.bus, name: 'bus'),

  // car
  GalleryIcon(icon: CupertinoIcons.car, name: 'car'),

  // car_detailed
  GalleryIcon(icon: CupertinoIcons.car_detailed, name: 'car_detailed'),

  // train_style_one
  GalleryIcon(icon: CupertinoIcons.train_style_one, name: 'train_style_one'),

  // train_style_two
  GalleryIcon(icon: CupertinoIcons.train_style_two, name: 'train_style_two'),
// paw
  GalleryIcon(icon: CupertinoIcons.paw, name: 'paw'),

  // paw_solid
  GalleryIcon(icon: CupertinoIcons.paw_solid, name: 'paw_solid'),

  // game_controller
  GalleryIcon(icon: CupertinoIcons.game_controller, name: 'game_controller'),

  // game_controller_solid
  GalleryIcon(
      icon: CupertinoIcons.game_controller_solid,
      name: 'game_controller_solid'),

  // lab_flask
  GalleryIcon(icon: CupertinoIcons.lab_flask, name: 'lab_flask'),

  // lab_flask_solid
  GalleryIcon(icon: CupertinoIcons.lab_flask_solid, name: 'lab_flask_solid'),
// heart
  GalleryIcon(icon: CupertinoIcons.heart, name: 'heart'),

  // heart_solid
  GalleryIcon(icon: CupertinoIcons.heart_solid, name: 'heart_solid'),
// bell
  GalleryIcon(icon: CupertinoIcons.bell, name: 'bell'),

  // bell_solid
  GalleryIcon(icon: CupertinoIcons.bell_solid, name: 'bell_solid'),

  // news
  GalleryIcon(icon: CupertinoIcons.news, name: 'news'),

  // news_solid
  GalleryIcon(icon: CupertinoIcons.news_solid, name: 'news_solid'),

  // brightness
  GalleryIcon(icon: CupertinoIcons.brightness, name: 'brightness'),

  // brightness_solid
  GalleryIcon(icon: CupertinoIcons.brightness_solid, name: 'brightness_solid'),

  //
  // BEGIN GENERATED SF SYMBOLS NAMES
  // add
  GalleryIcon(
    name: "add",
    icon: CupertinoIcons.add,
  ),
  // add_circled
  GalleryIcon(
    name: "add_circled",
    icon: CupertinoIcons.add_circled,
  ),
  // add_circled_solid
  GalleryIcon(
    name: "add_circled_solid",
    icon: CupertinoIcons.add_circled_solid,
  ),
  // airplane
  GalleryIcon(
    name: "airplane",
    icon: CupertinoIcons.airplane,
  ),
  // alarm
  GalleryIcon(
    name: "alarm",
    icon: CupertinoIcons.alarm,
  ),
  // alarm_fill
  GalleryIcon(
    name: "alarm_fill",
    icon: CupertinoIcons.alarm_fill,
  ),
  // alt
  GalleryIcon(
    name: "alt",
    icon: CupertinoIcons.alt,
  ),
  // ant
  GalleryIcon(
    name: "ant",
    icon: CupertinoIcons.ant,
  ),
  // ant_circle
  GalleryIcon(
    name: "ant_circle",
    icon: CupertinoIcons.ant_circle,
  ),
  // ant_circle_fill
  GalleryIcon(
    name: "ant_circle_fill",
    icon: CupertinoIcons.ant_circle_fill,
  ),
  // ant_fill
  GalleryIcon(
    name: "ant_fill",
    icon: CupertinoIcons.ant_fill,
  ),
  // antenna_radiowaves_left_right
  GalleryIcon(
    name: "antenna_radiowaves_left_right",
    icon: CupertinoIcons.antenna_radiowaves_left_right,
  ),
  // app
  GalleryIcon(
    name: "app",
    icon: CupertinoIcons.app,
  ),
  // app_badge
  GalleryIcon(
    name: "app_badge",
    icon: CupertinoIcons.app_badge,
  ),
  // app_badge_fill
  GalleryIcon(
    name: "app_badge_fill",
    icon: CupertinoIcons.app_badge_fill,
  ),
  // app_fill
  GalleryIcon(
    name: "app_fill",
    icon: CupertinoIcons.app_fill,
  ),
  // archivebox
  GalleryIcon(
    name: "archivebox",
    icon: CupertinoIcons.archivebox,
  ),
  // archivebox_fill
  GalleryIcon(
    name: "archivebox_fill",
    icon: CupertinoIcons.archivebox_fill,
  ),
  // arrow_2_circlepath
  GalleryIcon(
    name: "arrow_2_circlepath",
    icon: CupertinoIcons.arrow_2_circlepath,
  ),
  // arrow_2_circlepath_circle
  GalleryIcon(
    name: "arrow_2_circlepath_circle",
    icon: CupertinoIcons.arrow_2_circlepath_circle,
  ),
  // arrow_2_circlepath_circle_fill
  GalleryIcon(
    name: "arrow_2_circlepath_circle_fill",
    icon: CupertinoIcons.arrow_2_circlepath_circle_fill,
  ),
  // arrow_2_squarepath
  GalleryIcon(
    name: "arrow_2_squarepath",
    icon: CupertinoIcons.arrow_2_squarepath,
  ),
  // arrow_3_trianglepath
  GalleryIcon(
    name: "arrow_3_trianglepath",
    icon: CupertinoIcons.arrow_3_trianglepath,
  ),
  // arrow_branch
  GalleryIcon(
    name: "arrow_branch",
    icon: CupertinoIcons.arrow_branch,
  ),
  // copy the order from above to here
  // arrow_clockwise
  GalleryIcon(
    name: "arrow_clockwise",
    icon: CupertinoIcons.arrow_clockwise,
  ),
  // arrow_clockwise_circle
  GalleryIcon(
    name: "arrow_clockwise_circle",
    icon: CupertinoIcons.arrow_clockwise_circle,
  ),
  // arrow_clockwise_circle_fill
  GalleryIcon(
    name: "arrow_clockwise_circle_fill",
    icon: CupertinoIcons.arrow_clockwise_circle_fill,
  ),
  // arrow_down
  GalleryIcon(
    name: "arrow_down",
    icon: CupertinoIcons.arrow_down,
  ),
  // arrow_down_circle
  GalleryIcon(
    name: "arrow_down_circle",
    icon: CupertinoIcons.arrow_down_circle,
  ),
  // arrow_down_circle_fill
  GalleryIcon(
    name: "arrow_down_circle_fill",
    icon: CupertinoIcons.arrow_down_circle_fill,
  ),
  // arrow_down_left_square
  GalleryIcon(
    name: "arrow_down_left_square",
    icon: CupertinoIcons.arrow_down_left_square,
  ),
  // arrow_down_left_square_fill
  GalleryIcon(
    name: "arrow_down_left_square_fill",
    icon: CupertinoIcons.arrow_down_left_square_fill,
  ),
  // arrow_down_right
  GalleryIcon(
    name: "arrow_down_right",
    icon: CupertinoIcons.arrow_down_right,
  ),
  // arrow_down_right_arrow_up_left
  GalleryIcon(
    name: "arrow_down_right_arrow_up_left",
    icon: CupertinoIcons.arrow_down_right_arrow_up_left,
  ),
  // arrow_down_right_circle
  GalleryIcon(
    name: "arrow_down_right_circle",
    icon: CupertinoIcons.arrow_down_right_circle,
  ),
  // arrow_down_right_circle_fill
  GalleryIcon(
    name: "arrow_down_right_circle_fill",
    icon: CupertinoIcons.arrow_down_right_circle_fill,
  ),
  // arrow_down_right_square
  GalleryIcon(
    name: "arrow_down_right_square",
    icon: CupertinoIcons.arrow_down_right_square,
  ),
  // arrow_down_right_square_fill
  GalleryIcon(
    name: "arrow_down_right_square_fill",
    icon: CupertinoIcons.arrow_down_right_square_fill,
  ),

  // arrow_down_square
  GalleryIcon(
    name: "arrow_down_square",
    icon: CupertinoIcons.arrow_down_square,
  ),
  // arrow_down_square_fill
  GalleryIcon(
    name: "arrow_down_square_fill",
    icon: CupertinoIcons.arrow_down_square_fill,
  ),
  // arrow_down_to_line
  GalleryIcon(
    name: "arrow_down_to_line",
    icon: CupertinoIcons.arrow_down_to_line,
  ),
  // arrow_down_to_line_alt
  GalleryIcon(
    name: "arrow_down_to_line_alt",
    icon: CupertinoIcons.arrow_down_to_line_alt,
  ),
  // arrow_left
  GalleryIcon(
    name: "arrow_left",
    icon: CupertinoIcons.arrow_left,
  ),
  //
  // arrow_left_circle
  GalleryIcon(
    name: "arrow_left_circle",
    icon: CupertinoIcons.arrow_left_circle,
  ),
  // arrow_left_circle_fill
  GalleryIcon(
    name: "arrow_left_circle_fill",
    icon: CupertinoIcons.arrow_left_circle_fill,
  ),
  // arrow_left_right
  GalleryIcon(
    name: "arrow_left_right",
    icon: CupertinoIcons.arrow_left_right,
  ),
  // arrow_left_right_circle
  GalleryIcon(
    name: "arrow_left_right_circle",
    icon: CupertinoIcons.arrow_left_right_circle,
  ),
  // arrow_left_right_circle_fill
  GalleryIcon(
    name: "arrow_left_right_circle_fill",
    icon: CupertinoIcons.arrow_left_right_circle_fill,
  ),
  // arrow_left_right_square
  GalleryIcon(
    name: "arrow_left_right_square",
    icon: CupertinoIcons.arrow_left_right_square,
  ),
  // arrow_left_right_square_fill
  GalleryIcon(
    name: "arrow_left_right_square_fill",
    icon: CupertinoIcons.arrow_left_right_square_fill,
  ),
  // arrow_left_square
  GalleryIcon(
    name: "arrow_left_square",
    icon: CupertinoIcons.arrow_left_square,
  ),
  // arrow_left_square_fill
  GalleryIcon(
    name: "arrow_left_square_fill",
    icon: CupertinoIcons.arrow_left_square_fill,
  ),
  // arrow_left_to_line
  GalleryIcon(
    name: "arrow_left_to_line",
    icon: CupertinoIcons.arrow_left_to_line,
  ),
  // arrow_left_to_line_alt
  GalleryIcon(
    name: "arrow_left_to_line_alt",
    icon: CupertinoIcons.arrow_left_to_line_alt,
  ),
  // arrow_merge
  GalleryIcon(
    name: "arrow_merge",
    icon: CupertinoIcons.arrow_merge,
  ),
  // arrow_right
  GalleryIcon(
    name: "arrow_right",
    icon: CupertinoIcons.arrow_right,
  ),
  // arrow_right_arrow_left
  GalleryIcon(
    name: "arrow_right_arrow_left",
    icon: CupertinoIcons.arrow_right_arrow_left,
  ),

// arrow_right_arrow_left_circle
  GalleryIcon(
    name: "arrow_right_arrow_left_circle",
    icon: CupertinoIcons.arrow_right_arrow_left_circle,
  ),
  // arrow_right_arrow_left_circle_fill
  GalleryIcon(
    name: "arrow_right_arrow_left_circle_fill",
    icon: CupertinoIcons.arrow_right_arrow_left_circle_fill,
  ),
  // arrow_right_arrow_left_square
  GalleryIcon(
    name: "arrow_right_arrow_left_square",
    icon: CupertinoIcons.arrow_right_arrow_left_square,
  ),
  // arrow_right_arrow_left_square_fill
  GalleryIcon(
    name: "arrow_right_arrow_left_square_fill",
    icon: CupertinoIcons.arrow_right_arrow_left_square_fill,
  ),
  // arrow_right_circle
  GalleryIcon(
    name: "arrow_right_circle",
    icon: CupertinoIcons.arrow_right_circle,
  ),
  // arrow_right_circle_fill
  GalleryIcon(
    name: "arrow_right_circle_fill",
    icon: CupertinoIcons.arrow_right_circle_fill,
  ),
  // arrow_right_square
  GalleryIcon(
    name: "arrow_right_square",
    icon: CupertinoIcons.arrow_right_square,
  ),
  // arrow_right_square_fill
  GalleryIcon(
    name: "arrow_right_square_fill",
    icon: CupertinoIcons.arrow_right_square_fill,
  ),
  // arrow_right_to_line
  GalleryIcon(
    name: "arrow_right_to_line",
    icon: CupertinoIcons.arrow_right_to_line,
  ),
  // arrow_right_to_line_alt
  GalleryIcon(
    name: "arrow_right_to_line_alt",
    icon: CupertinoIcons.arrow_right_to_line_alt,
  ),
  // arrow_swap
  GalleryIcon(
    name: "arrow_swap",
    icon: CupertinoIcons.arrow_swap,
  ),
  // arrow_turn_down_left
  GalleryIcon(
    name: "arrow_turn_down_left",
    icon: CupertinoIcons.arrow_turn_down_left,
  ),
  // arrow_turn_down_right
  GalleryIcon(
    name: "arrow_turn_down_right",
    icon: CupertinoIcons.arrow_turn_down_right,
  ),
  // arrow_turn_left_down
  GalleryIcon(
    name: "arrow_turn_left_down",
    icon: CupertinoIcons.arrow_turn_left_down,
  ),
  // arrow_turn_left_up
  GalleryIcon(
    name: "arrow_turn_left_up",
    icon: CupertinoIcons.arrow_turn_left_up,
  ),
  // arrow_turn_right_down
  GalleryIcon(
    name: "arrow_turn_right_down",
    icon: CupertinoIcons.arrow_turn_right_down,
  ),
  // arrow_turn_right_up
  GalleryIcon(
    name: "arrow_turn_right_up",
    icon: CupertinoIcons.arrow_turn_right_up,
  ),
  // arrow_turn_up_left
  GalleryIcon(
    name: "arrow_turn_up_left",
    icon: CupertinoIcons.arrow_turn_up_left,
  ),
  // arrow_turn_up_right
  GalleryIcon(
    name: "arrow_turn_up_right",
    icon: CupertinoIcons.arrow_turn_up_right,
  ),
  // arrow_up
  GalleryIcon(
    name: "arrow_up",
    icon: CupertinoIcons.arrow_up,
  ),
  // arrow_up_arrow_down
  GalleryIcon(
    name: "arrow_up_arrow_down",
    icon: CupertinoIcons.arrow_up_arrow_down,
  ),
  // arrow_up_arrow_down_circle
  GalleryIcon(
    name: "arrow_up_arrow_down_circle",
    icon: CupertinoIcons.arrow_up_arrow_down_circle,
  ),
  // arrow_up_arrow_down_circle_fill
  GalleryIcon(
    name: "arrow_up_arrow_down_circle_fill",
    icon: CupertinoIcons.arrow_up_arrow_down_circle_fill,
  ),
  // arrow_up_arrow_down_square
  GalleryIcon(
    name: "arrow_up_arrow_down_square",
    icon: CupertinoIcons.arrow_up_arrow_down_square,
  ),
  // arrow_up_arrow_down_square_fill
  GalleryIcon(
    name: "arrow_up_arrow_down_square_fill",
    icon: CupertinoIcons.arrow_up_arrow_down_square_fill,
  ),
  // arrow_turn_left_down
  GalleryIcon(
    name: "arrow_turn_left_down",
    icon: CupertinoIcons.arrow_turn_left_down,
  ),
  // arrow_up_bin
  GalleryIcon(
    name: "arrow_up_bin",
    icon: CupertinoIcons.arrow_up_bin,
  ),
  // arrow_up_bin_fill
  GalleryIcon(
    name: "arrow_up_bin_fill",
    icon: CupertinoIcons.arrow_up_bin_fill,
  ),
  // arrow_turn_left_down
  GalleryIcon(
    name: "arrow_turn_left_down",
    icon: CupertinoIcons.arrow_turn_left_down,
  ),
  // arrow_up_circle
  GalleryIcon(
    name: "arrow_up_circle",
    icon: CupertinoIcons.arrow_up_circle,
  ),
  // arrow_up_circle_fill
  GalleryIcon(
    name: "arrow_up_circle_fill",
    icon: CupertinoIcons.arrow_up_circle_fill,
  ),
  // arrow_turn_left_down
  GalleryIcon(
    name: "arrow_turn_left_down",
    icon: CupertinoIcons.arrow_turn_left_down,
  ),
  // arrow_up_doc
  GalleryIcon(
    name: "arrow_up_doc",
    icon: CupertinoIcons.arrow_up_doc,
  ),
  // arrow_up_doc_fill
  GalleryIcon(
    name: "arrow_up_doc_fill",
    icon: CupertinoIcons.arrow_up_doc_fill,
  ),
  // arrow_up_down
  GalleryIcon(
    name: "arrow_up_down",
    icon: CupertinoIcons.arrow_up_down,
  ),
  // arrow_up_down_circle
  GalleryIcon(
    name: "arrow_up_down_circle",
    icon: CupertinoIcons.arrow_up_down_circle,
  ),
  // arrow_turn_left_down
  GalleryIcon(
    name: "arrow_turn_left_down",
    icon: CupertinoIcons.arrow_turn_left_down,
  ),
  // arrow_up_down_circle_fill
  GalleryIcon(
    name: "arrow_up_down_circle_fill",
    icon: CupertinoIcons.arrow_up_down_circle_fill,
  ),
  // arrow_up_down_square
  GalleryIcon(
    name: "arrow_up_down_square",
    icon: CupertinoIcons.arrow_up_down_square,
  ),
  // arrow_up_down_square_fill
  GalleryIcon(
    name: "arrow_up_down_square_fill",
    icon: CupertinoIcons.arrow_up_down_square_fill,
  ),
  // arrow_up_left
  GalleryIcon(
    name: "arrow_up_left",
    icon: CupertinoIcons.arrow_up_left,
  ),
  // arrow_up_left_arrow_down_right
  GalleryIcon(
    name: "arrow_up_left_arrow_down_right",
    icon: CupertinoIcons.arrow_up_left_arrow_down_right,
  ),
  // arrow_up_left_circle
  GalleryIcon(
    name: "arrow_up_left_circle",
    icon: CupertinoIcons.arrow_up_left_circle,
  ),
  // arrow_up_left_circle_fill
  GalleryIcon(
    name: "arrow_up_left_circle_fill",
    icon: CupertinoIcons.arrow_up_left_circle_fill,
  ),
  // arrow_up_left_square
  GalleryIcon(
    name: "arrow_up_left_square",
    icon: CupertinoIcons.arrow_up_left_square,
  ),
  // arrow_up_left_square_fill
  GalleryIcon(
    name: "arrow_up_left_square_fill",
    icon: CupertinoIcons.arrow_up_left_square_fill,
  ),
  // arrow_up_bin
  GalleryIcon(
    name: "arrow_up_bin",
    icon: CupertinoIcons.arrow_up_bin,
  ),
  // arrow_up_bin_fill
  GalleryIcon(
    name: "arrow_up_bin_fill",
    icon: CupertinoIcons.arrow_up_bin_fill,
  ),
  // arrow_up_circle
  GalleryIcon(
    name: "arrow_up_circle",
    icon: CupertinoIcons.arrow_up_circle,
  ),
  // arrow_up_circle_fill
  GalleryIcon(
    name: "arrow_up_circle_fill",
    icon: CupertinoIcons.arrow_up_circle_fill,
  ),
  // arrow_up_doc
  GalleryIcon(
    name: "arrow_up_doc",
    icon: CupertinoIcons.arrow_up_doc,
  ),
  // arrow_up_doc_fill
  GalleryIcon(
    name: "arrow_up_doc_fill",
    icon: CupertinoIcons.arrow_up_doc_fill,
  ),
  // arrow_up_down
  GalleryIcon(
    name: "arrow_up_down",
    icon: CupertinoIcons.arrow_up_down,
  ),
  // arrow_up_down_circle
  GalleryIcon(
    name: "arrow_up_down_circle",
    icon: CupertinoIcons.arrow_up_down_circle,
  ),
  // arrow_up_down_circle_fill
  GalleryIcon(
    name: "arrow_up_down_circle_fill",
    icon: CupertinoIcons.arrow_up_down_circle_fill,
  ),
  // arrow_up_down_square
  GalleryIcon(
    name: "arrow_up_down_square",
    icon: CupertinoIcons.arrow_up_down_square,
  ),
  // arrow_up_down_square_fill
  GalleryIcon(
    name: "arrow_up_down_square_fill",
    icon: CupertinoIcons.arrow_up_down_square_fill,
  ),
  // arrow_up_left
  GalleryIcon(
    name: "arrow_up_left",
    icon: CupertinoIcons.arrow_up_left,
  ),
  // arrow_up_left_arrow_down_right
  GalleryIcon(
    name: "arrow_up_left_arrow_down_right",
    icon: CupertinoIcons.arrow_up_left_arrow_down_right,
  ),
  // arrow_up_left_circle
  GalleryIcon(
    name: "arrow_up_left_circle",
    icon: CupertinoIcons.arrow_up_left_circle,
  ),
  // arrow_up_left_circle_fill
  GalleryIcon(
    name: "arrow_up_left_circle_fill",
    icon: CupertinoIcons.arrow_up_left_circle_fill,
  ),
  // arrow_up_left_square
  GalleryIcon(
    name: "arrow_up_left_square",
    icon: CupertinoIcons.arrow_up_left_square,
  ),
  // arrow_up_left_square_fill
  GalleryIcon(
    name: "arrow_up_left_square_fill",
    icon: CupertinoIcons.arrow_up_left_square_fill,
  ),
  // arrow_up_right
  GalleryIcon(
    name: "arrow_up_right",
    icon: CupertinoIcons.arrow_up_right,
  ),
  // arrow_up_right_circle
  GalleryIcon(
    name: "arrow_up_right_circle",
    icon: CupertinoIcons.arrow_up_right_circle,
  ),
  // arrow_up_right_circle_fill
  GalleryIcon(
    name: "arrow_up_right_circle_fill",
    icon: CupertinoIcons.arrow_up_right_circle_fill,
  ),
  // arrow_up_right_diamond
  GalleryIcon(
    name: "arrow_up_right_diamond",
    icon: CupertinoIcons.arrow_up_right_diamond,
  ),
  // arrow_up_right_diamond_fill
  GalleryIcon(
    name: "arrow_up_right_diamond_fill",
    icon: CupertinoIcons.arrow_up_right_diamond_fill,
  ),
  // arrow_up_right_square
  GalleryIcon(
    name: "arrow_up_right_square",
    icon: CupertinoIcons.arrow_up_right_square,
  ),
  // arrow_up_right_square_fill
  GalleryIcon(
    name: "arrow_up_right_square_fill",
    icon: CupertinoIcons.arrow_up_right_square_fill,
  ),
  // arrow_up_square
  GalleryIcon(
    name: "arrow_up_square",
    icon: CupertinoIcons.arrow_up_square,
  ),
  // arrow_up_square_fill
  GalleryIcon(
    name: "arrow_up_square_fill",
    icon: CupertinoIcons.arrow_up_square_fill,
  ),
  // arrow_up_to_line
  GalleryIcon(
    name: "arrow_up_to_line",
    icon: CupertinoIcons.arrow_up_to_line,
  ),
  // arrow_up_to_line_alt
  GalleryIcon(
    name: "arrow_up_to_line_alt",
    icon: CupertinoIcons.arrow_up_to_line_alt,
  ),
  // arrow_uturn_down
  GalleryIcon(
    name: "arrow_uturn_down",
    icon: CupertinoIcons.arrow_uturn_down,
  ),
  // arrow_uturn_down_circle
  GalleryIcon(
    name: "arrow_uturn_down_circle",
    icon: CupertinoIcons.arrow_uturn_down_circle,
  ),
  // arrow_uturn_down_circle_fill
  GalleryIcon(
    name: "arrow_uturn_down_circle_fill",
    icon: CupertinoIcons.arrow_uturn_down_circle_fill,
  ),
  // arrow_uturn_down_square
  GalleryIcon(
    name: "arrow_uturn_down_square",
    icon: CupertinoIcons.arrow_uturn_down_square,
  ),
  // arrow_uturn_down_square_fill
  GalleryIcon(
    name: "arrow_uturn_down_square_fill",
    icon: CupertinoIcons.arrow_uturn_down_square_fill,
  ),
  // arrow_uturn_left
  GalleryIcon(
    name: "arrow_uturn_left",
    icon: CupertinoIcons.arrow_uturn_left,
  ),
  // arrow_uturn_left_circle
  GalleryIcon(
    name: "arrow_uturn_left_circle",
    icon: CupertinoIcons.arrow_uturn_left_circle,
  ),
  // arrow_uturn_left_circle
  GalleryIcon(
    name: "arrow_uturn_left_circle",
    icon: CupertinoIcons.arrow_uturn_left_circle,
  ),
  // arrow_uturn_left_circle
  GalleryIcon(
    name: "arrow_uturn_left_circle",
    icon: CupertinoIcons.arrow_uturn_left_circle,
  ),
  // arrow_uturn_left_circle_fill
  GalleryIcon(
    name: "arrow_uturn_left_circle_fill",
    icon: CupertinoIcons.arrow_uturn_left_circle_fill,
  ),
  // arrow_uturn_left_square
  GalleryIcon(
    name: "arrow_uturn_left_square",
    icon: CupertinoIcons.arrow_uturn_left_square,
  ),
  // arrow_uturn_left_square_fill
  GalleryIcon(
    name: "arrow_uturn_left_square_fill",
    icon: CupertinoIcons.arrow_uturn_left_square_fill,
  ),
  // arrow_uturn_right
  GalleryIcon(
    name: "arrow_uturn_right",
    icon: CupertinoIcons.arrow_uturn_right,
  ),
  // arrow_uturn_right_circle
  GalleryIcon(
    name: "arrow_uturn_right_circle",
    icon: CupertinoIcons.arrow_uturn_right_circle,
  ),
  // arrow_uturn_right_circle_fill
  GalleryIcon(
    name: "arrow_uturn_right_circle_fill",
    icon: CupertinoIcons.arrow_uturn_right_circle_fill,
  ),
  // arrow_uturn_right_square
  GalleryIcon(
    name: "arrow_uturn_right_square",
    icon: CupertinoIcons.arrow_uturn_right_square,
  ),
  // arrow_uturn_right_square_fill
  GalleryIcon(
    name: "arrow_uturn_right_square_fill",
    icon: CupertinoIcons.arrow_uturn_right_square_fill,
  ),
  // arrow_uturn_up
  GalleryIcon(
    name: "arrow_uturn_up",
    icon: CupertinoIcons.arrow_uturn_up,
  ),
  // arrow_uturn_up_circle
  GalleryIcon(
    name: "arrow_uturn_up_circle",
    icon: CupertinoIcons.arrow_uturn_up_circle,
  ),
  // arrow_uturn_up_circle_fill
  GalleryIcon(
    name: "arrow_uturn_up_circle_fill",
    icon: CupertinoIcons.arrow_uturn_up_circle_fill,
  ),
  // arrow_uturn_up_square
  GalleryIcon(
    name: "arrow_uturn_up_square",
    icon: CupertinoIcons.arrow_uturn_up_square,
  ),
  // arrow_uturn_up_square_fill
  GalleryIcon(
    name: "arrow_uturn_up_square_fill",
    icon: CupertinoIcons.arrow_uturn_up_square_fill,
  ),
  // arrowshape_turn_up_left
  GalleryIcon(
    name: "arrowshape_turn_up_left",
    icon: CupertinoIcons.arrowshape_turn_up_left,
  ),
  // arrowshape_turn_up_left_2
  GalleryIcon(
    name: "arrowshape_turn_up_left_2",
    icon: CupertinoIcons.arrowshape_turn_up_left_2,
  ),
  // arrowshape_turn_up_left_2_fill
  GalleryIcon(
    name: "arrowshape_turn_up_left_2_fill",
    icon: CupertinoIcons.arrowshape_turn_up_left_2_fill,
  ),
  // arrowshape_turn_up_left_circle
  GalleryIcon(
    name: "arrowshape_turn_up_left_circle",
    icon: CupertinoIcons.arrowshape_turn_up_left_circle,
  ),
  // arrowshape_turn_up_left_circle_fill
  GalleryIcon(
    name: "arrowshape_turn_up_left_circle_fill",
    icon: CupertinoIcons.arrowshape_turn_up_left_circle_fill,
  ),
  // arrowshape_turn_up_left_fill
  GalleryIcon(
    name: "arrowshape_turn_up_left_fill",
    icon: CupertinoIcons.arrowshape_turn_up_left_fill,
  ),
  // arrowshape_turn_up_right
  GalleryIcon(
    name: "arrowshape_turn_up_right",
    icon: CupertinoIcons.arrowshape_turn_up_right,
  ),
  // arrowshape_turn_up_right_circle
  GalleryIcon(
    name: "arrowshape_turn_up_right_circle",
    icon: CupertinoIcons.arrowshape_turn_up_right_circle,
  ),
  // arrowshape_turn_up_right_circle_fill
  GalleryIcon(
    name: "arrowshape_turn_up_right_circle_fill",
    icon: CupertinoIcons.arrowshape_turn_up_right_circle_fill,
  ),
  // arrowshape_turn_up_right_fill
  GalleryIcon(
    name: "arrowshape_turn_up_right_fill",
    icon: CupertinoIcons.arrowshape_turn_up_right_fill,
  ),
  // arrowtriangle_down
  GalleryIcon(
    name: "arrowtriangle_down",
    icon: CupertinoIcons.arrowtriangle_down,
  ),
  // arrowtriangle_down_circle
  GalleryIcon(
    name: "arrowtriangle_down_circle",
    icon: CupertinoIcons.arrowtriangle_down_circle,
  ),
  // arrowtriangle_down_circle_fill
  GalleryIcon(
    name: "arrowtriangle_down_circle_fill",
    icon: CupertinoIcons.arrowtriangle_down_circle_fill,
  ),
  // arrowtriangle_down_fill
  GalleryIcon(
    name: "arrowtriangle_down_fill",
    icon: CupertinoIcons.arrowtriangle_down_fill,
  ),
  // arrowtriangle_down_square
  GalleryIcon(
    name: "arrowtriangle_down_square",
    icon: CupertinoIcons.arrowtriangle_down_square,
  ),
  // arrowtriangle_down_square_fill
  GalleryIcon(
    name: "arrowtriangle_down_square_fill",
    icon: CupertinoIcons.arrowtriangle_down_square_fill,
  ),
  // arrowtriangle_left
  GalleryIcon(
    name: "arrowtriangle_left",
    icon: CupertinoIcons.arrowtriangle_left,
  ),
  // arrowtriangle_left_circle
  GalleryIcon(
    name: "arrowtriangle_left_circle",
    icon: CupertinoIcons.arrowtriangle_left_circle,
  ),
  // arrowtriangle_left_circle_fill
  GalleryIcon(
    name: "arrowtriangle_left_circle_fill",
    icon: CupertinoIcons.arrowtriangle_left_circle_fill,
  ),
  // arrowtriangle_left_fill
  GalleryIcon(
    name: "arrowtriangle_left_fill",
    icon: CupertinoIcons.arrowtriangle_left_fill,
  ),
  // arrowtriangle_left_square
  GalleryIcon(
    name: "arrowtriangle_left_square",
    icon: CupertinoIcons.arrowtriangle_left_square,
  ),
  // arrowtriangle_left_square_fill
  GalleryIcon(
    name: "arrowtriangle_left_square_fill",
    icon: CupertinoIcons.arrowtriangle_left_square_fill,
  ),
  // arrowtriangle_right
  GalleryIcon(
    name: "arrowtriangle_right",
    icon: CupertinoIcons.arrowtriangle_right,
  ),
  // arrowtriangle_right_circle
  GalleryIcon(
    name: "arrowtriangle_right_circle",
    icon: CupertinoIcons.arrowtriangle_right_circle,
  ),
  // arrowtriangle_right_circle_fill
  GalleryIcon(
    name: "arrowtriangle_right_circle_fill",
    icon: CupertinoIcons.arrowtriangle_right_circle_fill,
  ),
  // arrowtriangle_right_fill
  GalleryIcon(
    name: "arrowtriangle_right_fill",
    icon: CupertinoIcons.arrowtriangle_right_fill,
  ),
  // arrowtriangle_right_square
  GalleryIcon(
    name: "arrowtriangle_right_square",
    icon: CupertinoIcons.arrowtriangle_right_square,
  ),
  // arrowtriangle_right_square_fill
  GalleryIcon(
    name: "arrowtriangle_right_square_fill",
    icon: CupertinoIcons.arrowtriangle_right_square_fill,
  ),
  // arrowtriangle_up
  GalleryIcon(
    name: "arrowtriangle_up",
    icon: CupertinoIcons.arrowtriangle_up,
  ),
  // arrowtriangle_up_circle
  GalleryIcon(
    name: "arrowtriangle_up_circle",
    icon: CupertinoIcons.arrowtriangle_up_circle,
  ),
  // arrowtriangle_up_circle_fill
  GalleryIcon(
    name: "arrowtriangle_up_circle_fill",
    icon: CupertinoIcons.arrowtriangle_up_circle_fill,
  ),
  // arrowtriangle_up_fill
  GalleryIcon(
    name: "arrowtriangle_up_fill",
    icon: CupertinoIcons.arrowtriangle_up_fill,
  ),
  // arrowtriangle_up_square
  GalleryIcon(
    name: "arrowtriangle_up_square",
    icon: CupertinoIcons.arrowtriangle_up_square,
  ),
  // arrowtriangle_up_square_fill
  GalleryIcon(
    name: "arrowtriangle_up_square_fill",
    icon: CupertinoIcons.arrowtriangle_up_square_fill,
  ),
  // asterisk_circle
  GalleryIcon(
    name: "asterisk_circle",
    icon: CupertinoIcons.asterisk_circle,
  ),
  // asterisk_circle_fill
  GalleryIcon(
    name: "asterisk_circle_fill",
    icon: CupertinoIcons.asterisk_circle_fill,
  ),
  // at
  GalleryIcon(
    name: "at",
    icon: CupertinoIcons.at,
  ),
  // at_badge_minus
  GalleryIcon(
    name: "at_badge_minus",
    icon: CupertinoIcons.at_badge_minus,
  ),
  // at_badge_plus
  GalleryIcon(
    name: "at_badge_plus",
    icon: CupertinoIcons.at_badge_plus,
  ),
  // at_circle
  GalleryIcon(
    name: "at_circle",
    icon: CupertinoIcons.at_circle,
  ),
  // at_circle_fill
  GalleryIcon(
    name: "at_circle_fill",
    icon: CupertinoIcons.at_circle_fill,
  ),
  // backward
  GalleryIcon(
    name: "backward",
    icon: CupertinoIcons.backward,
  ),
  // backward_end
  GalleryIcon(
    name: "backward_end",
    icon: CupertinoIcons.backward_end,
  ),
  // backward_end_alt
  GalleryIcon(
    name: "backward_end_alt",
    icon: CupertinoIcons.backward_end_alt,
  ),
  // backward_end_alt_fill
  GalleryIcon(
    name: "backward_end_alt_fill",
    icon: CupertinoIcons.backward_end_alt_fill,
  ),
  // backward_end_fill
  GalleryIcon(
    name: "backward_end_fill",
    icon: CupertinoIcons.backward_end_fill,
  ),
  // backward_fill
  GalleryIcon(
    name: "backward_fill",
    icon: CupertinoIcons.backward_fill,
  ),
  // badge_plus_radiowaves_right
  GalleryIcon(
    name: "badge_plus_radiowaves_right",
    icon: CupertinoIcons.badge_plus_radiowaves_right,
  ),
  // bag
  GalleryIcon(
    name: "bag",
    icon: CupertinoIcons.bag,
  ),
  // bag_badge_minus
  GalleryIcon(
    name: "bag_badge_minus",
    icon: CupertinoIcons.bag_badge_minus,
  ),
  // bag_badge_plus
  GalleryIcon(
    name: "bag_badge_plus",
    icon: CupertinoIcons.bag_badge_plus,
  ),
  // bag_fill
  GalleryIcon(
    name: "bag_fill",
    icon: CupertinoIcons.bag_fill,
  ),
  // bag_fill_badge_minus
  GalleryIcon(
    name: "bag_fill_badge_minus",
    icon: CupertinoIcons.bag_fill_badge_minus,
  ),
  // bag_fill_badge_plus
  GalleryIcon(
    name: "bag_fill_badge_plus",
    icon: CupertinoIcons.bag_fill_badge_plus,
  ),
  // bandage
  GalleryIcon(
    name: "bandage",
    icon: CupertinoIcons.bandage,
  ),
  // bandage_fill
  GalleryIcon(
    name: "bandage_fill",
    icon: CupertinoIcons.bandage_fill,
  ),
  // barcode
  GalleryIcon(
    name: "barcode",
    icon: CupertinoIcons.barcode,
  ),
  // barcode_viewfinder
  GalleryIcon(
    name: "barcode_viewfinder",
    icon: CupertinoIcons.barcode_viewfinder,
  ),
  // bars
  GalleryIcon(
    name: "bars",
    icon: CupertinoIcons.bars,
  ),
  // battery_0
  GalleryIcon(
    name: "battery_0",
    icon: CupertinoIcons.battery_0,
  ),
  // battery_100
  GalleryIcon(
    name: "battery_100",
    icon: CupertinoIcons.battery_100,
  ),
  // battery_25
  GalleryIcon(
    name: "battery_25",
    icon: CupertinoIcons.battery_25,
  ),
  // bed_double
  GalleryIcon(
    name: "bed_double",
    icon: CupertinoIcons.bed_double,
  ),
  // bed_double_fill
  GalleryIcon(
    name: "bed_double_fill",
    icon: CupertinoIcons.bed_double_fill,
  ),
  // bell_circle
  GalleryIcon(
    name: "bell_circle",
    icon: CupertinoIcons.bell_circle,
  ),
  // bell_circle_fill
  GalleryIcon(
    name: "bell_circle_fill",
    icon: CupertinoIcons.bell_circle_fill,
  ),
  // bell_fill
  GalleryIcon(
    name: "bell_fill",
    icon: CupertinoIcons.bell_fill,
  ),
  // bell_slash
  GalleryIcon(
    name: "bell_slash",
    icon: CupertinoIcons.bell_slash,
  ),
  // bell_slash_fill
  GalleryIcon(
    name: "bell_slash_fill",
    icon: CupertinoIcons.bell_slash_fill,
  ),
  // bin_xmark
  GalleryIcon(
    name: "bin_xmark",
    icon: CupertinoIcons.bin_xmark,
  ),
  // bin_xmark_fill
  GalleryIcon(
    name: "bin_xmark_fill",
    icon: CupertinoIcons.bin_xmark_fill,
  ),
  // bitcoin
  GalleryIcon(
    name: "bitcoin",
    icon: CupertinoIcons.bitcoin,
  ),
  // bitcoin_circle
  GalleryIcon(
    name: "bitcoin_circle",
    icon: CupertinoIcons.bitcoin_circle,
  ),
  // bitcoin_circle_fill
  GalleryIcon(
    name: "bitcoin_circle_fill",
    icon: CupertinoIcons.bitcoin_circle_fill,
  ),
  // bold
  GalleryIcon(
    name: "bold",
    icon: CupertinoIcons.bold,
  ),
  // bold_italic_underline
  GalleryIcon(
    name: "bold_italic_underline",
    icon: CupertinoIcons.bold_italic_underline,
  ),
  // bold_underline
  GalleryIcon(
    name: "bold_underline",
    icon: CupertinoIcons.bold_underline,
  ),
  // bolt
  GalleryIcon(
    name: "bolt",
    icon: CupertinoIcons.bolt,
  ),
  // bolt_badge_a
  GalleryIcon(
    name: "bolt_badge_a",
    icon: CupertinoIcons.bolt_badge_a,
  ),
  // bolt_badge_a_fill
  GalleryIcon(
    name: "bolt_badge_a_fill",
    icon: CupertinoIcons.bolt_badge_a_fill,
  ),
  // bolt_circle
  GalleryIcon(
    name: "bolt_circle",
    icon: CupertinoIcons.bolt_circle,
  ),
  // bolt_circle_fill
  GalleryIcon(
    name: "bolt_circle_fill",
    icon: CupertinoIcons.bolt_circle_fill,
  ),
  // bolt_fill
  GalleryIcon(
    name: "bolt_fill",
    icon: CupertinoIcons.bolt_fill,
  ),
  // bolt_horizontal
  GalleryIcon(
    name: "bolt_horizontal",
    icon: CupertinoIcons.bolt_horizontal,
  ),
  // bolt_horizontal_circle
  GalleryIcon(
    name: "bolt_horizontal_circle",
    icon: CupertinoIcons.bolt_horizontal_circle,
  ),
  // bolt_horizontal_circle_fill
  GalleryIcon(
    name: "bolt_horizontal_circle_fill",
    icon: CupertinoIcons.bolt_horizontal_circle_fill,
  ),
  // bolt_horizontal_fill
  GalleryIcon(
    name: "bolt_horizontal_fill",
    icon: CupertinoIcons.bolt_horizontal_fill,
  ),
  // bolt_slash
  GalleryIcon(
    name: "bolt_slash",
    icon: CupertinoIcons.bolt_slash,
  ),
  // bolt_slash_fill
  GalleryIcon(
    name: "bolt_slash_fill",
    icon: CupertinoIcons.bolt_slash_fill,
  ),
  // book_circle
  GalleryIcon(
    name: "book_circle",
    icon: CupertinoIcons.book_circle,
  ),
  // book_circle_fill
  GalleryIcon(
    name: "book_circle_fill",
    icon: CupertinoIcons.book_circle_fill,
  ),
  // book_fill
  GalleryIcon(
    name: "book_fill",
    icon: CupertinoIcons.book_fill,
  ),
  // bookmark_fill
  GalleryIcon(
    name: "bookmark_fill",
    icon: CupertinoIcons.bookmark_fill,
  ),
  // briefcase
  GalleryIcon(
    name: "briefcase",
    icon: CupertinoIcons.briefcase,
  ),
  // briefcase_fill
  GalleryIcon(
    name: "briefcase_fill",
    icon: CupertinoIcons.briefcase_fill,
  ),
  // bubble_left
  GalleryIcon(
    name: "bubble_left",
    icon: CupertinoIcons.bubble_left,
  ),
  // bubble_left_bubble_right
  GalleryIcon(
    name: "bubble_left_bubble_right",
    icon: CupertinoIcons.bubble_left_bubble_right,
  ),

  // bubble_left_fill
  GalleryIcon(
    name: "bubble_left_fill",
    icon: CupertinoIcons.bubble_left_fill,
  ),
  // bubble_middle_bottom
  GalleryIcon(
    name: "bubble_middle_bottom",
    icon: CupertinoIcons.bubble_middle_bottom,
  ),
  // bubble_middle_bottom_fill
  GalleryIcon(
    name: "bubble_middle_bottom_fill",
    icon: CupertinoIcons.bubble_middle_bottom_fill,
  ),
  // bubble_middle_top
  GalleryIcon(
    name: "bubble_middle_top",
    icon: CupertinoIcons.bubble_middle_top,
  ),
  // bubble_middle_top_fill
  GalleryIcon(
    name: "bubble_middle_top_fill",
    icon: CupertinoIcons.bubble_middle_top_fill,
  ),
  // bubble_right
  GalleryIcon(
    name: "bubble_right",
    icon: CupertinoIcons.bubble_right,
  ),
  // bubble_right_fill
  GalleryIcon(
    name: "bubble_right_fill",
    icon: CupertinoIcons.bubble_right_fill,
  ),
  // building_2_fill
  GalleryIcon(
    name: "building_2_fill",
    icon: CupertinoIcons.building_2_fill,
  ),
  // burn
  GalleryIcon(
    name: "burn",
    icon: CupertinoIcons.burn,
  ),
  // burst
  GalleryIcon(
    name: "burst",
    icon: CupertinoIcons.burst,
  ),
  // burst_fill
  GalleryIcon(
    name: "burst_fill",
    icon: CupertinoIcons.burst_fill,
  ),
  // calendar
  GalleryIcon(
    name: "calendar",
    icon: CupertinoIcons.calendar,
  ),
  // calendar_badge_minus
  GalleryIcon(
    name: "calendar_badge_minus",
    icon: CupertinoIcons.calendar_badge_minus,
  ),
  // calendar_badge_plus
  GalleryIcon(
    name: "calendar_badge_plus",
    icon: CupertinoIcons.calendar_badge_plus,
  ),
  // calendar_circle
  GalleryIcon(
    name: "calendar_circle",
    icon: CupertinoIcons.calendar_circle,
  ),
  // calendar_circle_fill
  GalleryIcon(
    name: "calendar_circle_fill",
    icon: CupertinoIcons.calendar_circle_fill,
  ),
  // calendar_today
  GalleryIcon(
    name: "calendar_today",
    icon: CupertinoIcons.calendar_today,
  ),
  // camera
  GalleryIcon(
    name: "camera",
    icon: CupertinoIcons.camera,
  ),
  // camera_circle
  GalleryIcon(
    name: "camera_circle",
    icon: CupertinoIcons.camera_circle,
  ),
  // camera_circle_fill
  GalleryIcon(
    name: "camera_circle_fill",
    icon: CupertinoIcons.camera_circle_fill,
  ),
  // camera_fill
  GalleryIcon(
    name: "camera_fill",
    icon: CupertinoIcons.camera_fill,
  ),
  // camera_on_rectangle
  GalleryIcon(
    name: "camera_on_rectangle",
    icon: CupertinoIcons.camera_on_rectangle,
  ),
  // camera_on_rectangle_fill
  GalleryIcon(
    name: "camera_on_rectangle_fill",
    icon: CupertinoIcons.camera_on_rectangle_fill,
  ),
  // camera_rotate
  GalleryIcon(
    name: "camera_rotate",
    icon: CupertinoIcons.camera_rotate,
  ),
  // camera_rotate_fill
  GalleryIcon(
    name: "camera_rotate_fill",
    icon: CupertinoIcons.camera_rotate_fill,
  ),
  // camera_viewfinder
  GalleryIcon(
    name: "camera_viewfinder",
    icon: CupertinoIcons.camera_viewfinder,
  ),
  // capslock
  GalleryIcon(
    name: "capslock",
    icon: CupertinoIcons.capslock,
  ),
  // capslock_fill
  GalleryIcon(
    name: "capslock_fill",
    icon: CupertinoIcons.capslock_fill,
  ),
  // capsule
  GalleryIcon(
    name: "capsule",
    icon: CupertinoIcons.capsule,
  ),
  // capsule_fill
  GalleryIcon(
    name: "capsule_fill",
    icon: CupertinoIcons.capsule_fill,
  ),
  // captions_bubble
  GalleryIcon(
    name: "captions_bubble",
    icon: CupertinoIcons.captions_bubble,
  ),
  // captions_bubble_fill
  GalleryIcon(
    name: "captions_bubble_fill",
    icon: CupertinoIcons.captions_bubble_fill,
  ),
  // car_fill
  GalleryIcon(
    name: "car_fill",
    icon: CupertinoIcons.car_fill,
  ),
  // cart
  GalleryIcon(
    name: "cart",
    icon: CupertinoIcons.cart,
  ),
  // cart_badge_minus
  GalleryIcon(
    name: "cart_badge_minus",
    icon: CupertinoIcons.cart_badge_minus,
  ),
  // cart_badge_plus
  GalleryIcon(
    name: "cart_badge_plus",
    icon: CupertinoIcons.cart_badge_plus,
  ),
  // cart_fill
  GalleryIcon(
    name: "cart_fill",
    icon: CupertinoIcons.cart_fill,
  ),
  // cart_fill_badge_minus
  GalleryIcon(
    name: "cart_fill_badge_minus",
    icon: CupertinoIcons.cart_fill_badge_minus,
  ),
  // cart_fill_badge_plus
  GalleryIcon(
    name: "cart_fill_badge_plus",
    icon: CupertinoIcons.cart_fill_badge_plus,
  ),
  //  chart_bar
  GalleryIcon(
    name: "chart_bar",
    icon: CupertinoIcons.chart_bar,
  ),
//  chart_bar_alt_fill
  GalleryIcon(
    name: "chart_bar_alt_fill",
    icon: CupertinoIcons.chart_bar_alt_fill,
  ),
//  chart_bar_circle
  GalleryIcon(
    name: "chart_bar_circle",
    icon: CupertinoIcons.chart_bar_circle,
  ),
//  chart_bar_circle_fill
  GalleryIcon(
    name: "chart_bar_circle_fill",
    icon: CupertinoIcons.chart_bar_circle_fill,
  ),
//  chart_bar_fill
  GalleryIcon(
    name: "chart_bar_fill",
    icon: CupertinoIcons.chart_bar_fill,
  ),
//  chart_bar_square
  GalleryIcon(
    name: "chart_bar_square",
    icon: CupertinoIcons.chart_bar_square,
  ),
//  chart_bar_square_fill
  GalleryIcon(
    name: "chart_bar_square_fill",
    icon: CupertinoIcons.chart_bar_square_fill,
  ),
//  chart_pie
  GalleryIcon(
    name: "chart_pie",
    icon: CupertinoIcons.chart_pie,
  ),
//  chart_pie_fill
  GalleryIcon(
    name: "chart_pie_fill",
    icon: CupertinoIcons.chart_pie_fill,
  ),

//  chat_bubble
  GalleryIcon(
    name: "chat_bubble",
    icon: CupertinoIcons.chat_bubble,
  ),
//  chat_bubble_2
  GalleryIcon(
    name: "chat_bubble_2",
    icon: CupertinoIcons.chat_bubble_2,
  ),
//  chat_bubble_2_fill
  GalleryIcon(
    name: "chat_bubble_2_fill",
    icon: CupertinoIcons.chat_bubble_2_fill,
  ),
//  chat_bubble_fill
  GalleryIcon(
    name: "chat_bubble_fill",
    icon: CupertinoIcons.chat_bubble_fill,
  ),
//  chat_bubble_text
  GalleryIcon(
    name: "chat_bubble_text",
    icon: CupertinoIcons.chat_bubble_text,
  ),
//  chat_bubble_text_fill
  GalleryIcon(
    name: "chat_bubble_text_fill",
    icon: CupertinoIcons.chat_bubble_text_fill,
  ),
  // checkmark
  GalleryIcon(
    name: "checkmark",
    icon: CupertinoIcons.checkmark,
  ),
//  checkmark_alt
  GalleryIcon(
    name: "checkmark_alt",
    icon: CupertinoIcons.checkmark_alt,
  ),
//  checkmark_alt_circle
  GalleryIcon(
    name: "checkmark_alt_circle",
    icon: CupertinoIcons.checkmark_alt_circle,
  ),
//  checkmark_alt_circle_fill
  GalleryIcon(
    name: "checkmark_alt_circle_fill",
    icon: CupertinoIcons.checkmark_alt_circle_fill,
  ),

//  checkmark_circle
  GalleryIcon(
    name: "checkmark_circle",
    icon: CupertinoIcons.checkmark_circle,
  ),

//  checkmark_circle_fill
  GalleryIcon(
    name: "checkmark_circle_fill",
    icon: CupertinoIcons.checkmark_circle_fill,
  ),
//  checkmark_rectangle
  GalleryIcon(
    name: "checkmark_rectangle",
    icon: CupertinoIcons.checkmark_rectangle,
  ),
//  checkmark_rectangle_fill
  GalleryIcon(
    name: "checkmark_rectangle_fill",
    icon: CupertinoIcons.checkmark_rectangle_fill,
  ),
//  checkmark_seal
  GalleryIcon(
    name: "checkmark_seal",
    icon: CupertinoIcons.checkmark_seal,
  ),
//  checkmark_seal_fill
  GalleryIcon(
    name: "checkmark_seal_fill",
    icon: CupertinoIcons.checkmark_seal_fill,
  ),
//  checkmark_shield
  GalleryIcon(
    name: "checkmark_shield",
    icon: CupertinoIcons.checkmark_shield,
  ),
//  checkmark_shield_fill
  GalleryIcon(
    name: "checkmark_shield_fill",
    icon: CupertinoIcons.checkmark_shield_fill,
  ),
//  checkmark_square
  GalleryIcon(
    name: "checkmark_square",
    icon: CupertinoIcons.checkmark_square,
  ),
//  checkmark_square_fill
  GalleryIcon(
    name: "checkmark_square_fill",
    icon: CupertinoIcons.checkmark_square_fill,
  ),

//  chevron_back
  GalleryIcon(
    name: "chevron_back",
    icon: CupertinoIcons.chevron_back,
  ),
//  chevron_compact_down
  GalleryIcon(
    name: "chevron_compact_down",
    icon: CupertinoIcons.chevron_compact_down,
  ),
//  chevron_compact_left
  GalleryIcon(
    name: "chevron_compact_left",
    icon: CupertinoIcons.chevron_compact_left,
  ),
//  chevron_compact_right
  GalleryIcon(
    name: "chevron_compact_right",
    icon: CupertinoIcons.chevron_compact_right,
  ),
//  chevron_compact_up
  GalleryIcon(
    name: "chevron_compact_up",
    icon: CupertinoIcons.chevron_compact_up,
  ),
//  chevron_down
  GalleryIcon(
    name: "chevron_down",
    icon: CupertinoIcons.chevron_down,
  ),
//  chevron_down_circle
  GalleryIcon(
    name: "chevron_down_circle",
    icon: CupertinoIcons.chevron_down_circle,
  ),
//  chevron_down_circle_fill
  GalleryIcon(
    name: "chevron_down_circle_fill",
    icon: CupertinoIcons.chevron_down_circle_fill,
  ),
//  chevron_down_square
  GalleryIcon(
    name: "chevron_down_square",
    icon: CupertinoIcons.chevron_down_square,
  ),
//  chevron_down_square_fill
  GalleryIcon(
    name: "chevron_down_square_fill",
    icon: CupertinoIcons.chevron_down_square_fill,
  ),

//  chevron_forward
  GalleryIcon(
    name: "chevron_forward",
    icon: CupertinoIcons.chevron_forward,
  ),

//  chevron_left
  GalleryIcon(
    name: "chevron_left",
    icon: CupertinoIcons.chevron_left,
  ),
//  chevron_left_2
  GalleryIcon(
    name: "chevron_left_2",
    icon: CupertinoIcons.chevron_left_2,
  ),
//  chevron_left_circle
  GalleryIcon(
    name: "chevron_left_circle",
    icon: CupertinoIcons.chevron_left_circle,
  ),
//  chevron_left_circle_fill
  GalleryIcon(
    name: "chevron_left_circle_fill",
    icon: CupertinoIcons.chevron_left_circle_fill,
  ),
//  chevron_left_slash_chevron_right
  GalleryIcon(
    name: "chevron_left_slash_chevron_right",
    icon: CupertinoIcons.chevron_left_slash_chevron_right,
  ),
//  chevron_left_square
  GalleryIcon(
    name: "chevron_left_square",
    icon: CupertinoIcons.chevron_left_square,
  ),
//  chevron_left_square_fill
  GalleryIcon(
    name: "chevron_left_square_fill",
    icon: CupertinoIcons.chevron_left_square_fill,
  ),

//  chevron_right
  GalleryIcon(
    name: "chevron_right",
    icon: CupertinoIcons.chevron_right,
  ),
//  chevron_right_2
  GalleryIcon(
    name: "chevron_right_2",
    icon: CupertinoIcons.chevron_right_2,
  ),
//  chevron_right_circle
  GalleryIcon(
    name: "chevron_right_circle",
    icon: CupertinoIcons.chevron_right_circle,
  ),
//  chevron_right_circle_fill
  GalleryIcon(
    name: "chevron_right_circle_fill",
    icon: CupertinoIcons.chevron_right_circle_fill,
  ),
//  chevron_right_square
  GalleryIcon(
    name: "chevron_right_square",
    icon: CupertinoIcons.chevron_right_square,
  ),
//  chevron_right_square_fill
  GalleryIcon(
    name: "chevron_right_square_fill",
    icon: CupertinoIcons.chevron_right_square_fill,
  ),
//  chevron_up
  GalleryIcon(
    name: "chevron_up",
    icon: CupertinoIcons.chevron_up,
  ),
//  chevron_up_chevron_down
  GalleryIcon(
    name: "chevron_up_chevron_down",
    icon: CupertinoIcons.chevron_up_chevron_down,
  ),
//  chevron_up_circle
  GalleryIcon(
    name: "chevron_up_circle",
    icon: CupertinoIcons.chevron_up_circle,
  ),
//  chevron_up_circle_fill
  GalleryIcon(
    name: "chevron_up_circle_fill",
    icon: CupertinoIcons.chevron_up_circle_fill,
  ),
//  chevron_up_square
  GalleryIcon(
    name: "chevron_up_square",
    icon: CupertinoIcons.chevron_up_square,
  ),
//  chevron_up_square_fill
  GalleryIcon(
    name: "chevron_up_square_fill",
    icon: CupertinoIcons.chevron_up_square_fill,
  ),
//  circle_bottomthird_split
  GalleryIcon(
    name: "circle_bottomthird_split",
    icon: CupertinoIcons.circle_bottomthird_split,
  ),

//  circle_fill
  GalleryIcon(
    name: "circle_fill",
    icon: CupertinoIcons.circle_fill,
  ),
//  circle_grid_3x3
  GalleryIcon(
    name: "circle_grid_3x3",
    icon: CupertinoIcons.circle_grid_3x3,
  ),
//  circle_grid_3x3_fill
  GalleryIcon(
    name: "circle_grid_3x3_fill",
    icon: CupertinoIcons.circle_grid_3x3_fill,
  ),
//  circle_grid_hex
  GalleryIcon(
    name: "circle_grid_hex",
    icon: CupertinoIcons.circle_grid_hex,
  ),
//  circle_grid_hex_fill
  GalleryIcon(
    name: "circle_grid_hex_fill",
    icon: CupertinoIcons.circle_grid_hex_fill,
  ),
//  circle_lefthalf_fill
  GalleryIcon(
    name: "circle_lefthalf_fill",
    icon: CupertinoIcons.circle_lefthalf_fill,
  ),
//  circle_righthalf_fill
  GalleryIcon(
    name: "circle_righthalf_fill",
    icon: CupertinoIcons.circle_righthalf_fill,
  ),
//  clear_fill
  GalleryIcon(
    name: "clear_fill",
    icon: CupertinoIcons.clear_fill,
  ),

//  clock_fill
  GalleryIcon(
    name: "clock_fill",
    icon: CupertinoIcons.clock_fill,
  ),
//  cloud
  GalleryIcon(
    name: "cloud",
    icon: CupertinoIcons.cloud,
  ),
//  cloud_bolt
  GalleryIcon(
    name: "cloud_bolt",
    icon: CupertinoIcons.cloud_bolt,
  ),
//  cloud_bolt_fill
  GalleryIcon(
    name: "cloud_bolt_fill",
    icon: CupertinoIcons.cloud_bolt_fill,
  ),
//  cloud_bolt_rain
  GalleryIcon(
    name: "cloud_bolt_rain",
    icon: CupertinoIcons.cloud_bolt_rain,
  ),
//  cloud_bolt_rain_fill
  GalleryIcon(
    name: "cloud_bolt_rain_fill",
    icon: CupertinoIcons.cloud_bolt_rain_fill,
  ),
//  cloud_download
  GalleryIcon(
    name: "cloud_download",
    icon: CupertinoIcons.cloud_download,
  ),
//  cloud_download_fill
  GalleryIcon(
    name: "cloud_download_fill",
    icon: CupertinoIcons.cloud_download_fill,
  ),
//  cloud_drizzle
  GalleryIcon(
    name: "cloud_drizzle",
    icon: CupertinoIcons.cloud_drizzle,
  ),
//  cloud_drizzle_fill
  GalleryIcon(
    name: "cloud_drizzle_fill",
    icon: CupertinoIcons.cloud_drizzle_fill,
  ),
//  cloud_fill
  GalleryIcon(
    name: "cloud_fill",
    icon: CupertinoIcons.cloud_fill,
  ),
//  cloud_fog
  GalleryIcon(
    name: "cloud_fog",
    icon: CupertinoIcons.cloud_fog,
  ),
//  cloud_fog_fill
  GalleryIcon(
    name: "cloud_fog_fill",
    icon: CupertinoIcons.cloud_fog_fill,
  ),
//  cloud_hail
  GalleryIcon(
    name: "cloud_hail",
    icon: CupertinoIcons.cloud_hail,
  ),
//  cloud_hail_fill
  GalleryIcon(
    name: "cloud_hail_fill",
    icon: CupertinoIcons.cloud_hail_fill,
  ),
//  cloud_heavyrain
  GalleryIcon(
    name: "cloud_heavyrain",
    icon: CupertinoIcons.cloud_heavyrain,
  ),
//  cloud_heavyrain_fill
  GalleryIcon(
    name: "cloud_heavyrain_fill",
    icon: CupertinoIcons.cloud_heavyrain_fill,
  ),
//  cloud_moon
  GalleryIcon(
    name: "cloud_moon",
    icon: CupertinoIcons.cloud_moon,
  ),
//  cloud_moon_bolt
  GalleryIcon(
    name: "cloud_moon_bolt",
    icon: CupertinoIcons.cloud_moon_bolt,
  ),
//  cloud_moon_bolt_fill
  GalleryIcon(
    name: "cloud_moon_bolt_fill",
    icon: CupertinoIcons.cloud_moon_bolt_fill,
  ),
//  cloud_moon_fill
  GalleryIcon(
    name: "cloud_moon_fill",
    icon: CupertinoIcons.cloud_moon_fill,
  ),
//  cloud_moon_rain
  GalleryIcon(
    name: "cloud_moon_rain",
    icon: CupertinoIcons.cloud_moon_rain,
  ),
//  cloud_moon_rain_fill
  GalleryIcon(
    name: "cloud_moon_rain_fill",
    icon: CupertinoIcons.cloud_moon_rain_fill,
  ),
//  cloud_rain
  GalleryIcon(
    name: "cloud_rain",
    icon: CupertinoIcons.cloud_rain,
  ),
//  cloud_rain_fill
  GalleryIcon(
    name: "cloud_rain_fill",
    icon: CupertinoIcons.cloud_rain_fill,
  ),
//  cloud_sleet
  GalleryIcon(
    name: "cloud_sleet",
    icon: CupertinoIcons.cloud_sleet,
  ),
//  cloud_sleet_fill
  GalleryIcon(
    name: "cloud_sleet_fill",
    icon: CupertinoIcons.cloud_sleet_fill,
  ),
//  cloud_snow
  GalleryIcon(
    name: "cloud_snow",
    icon: CupertinoIcons.cloud_snow,
  ),
//  cloud_snow_fill
  GalleryIcon(
    name: "cloud_snow_fill",
    icon: CupertinoIcons.cloud_snow_fill,
  ),
//  cloud_sun
  GalleryIcon(
    name: "cloud_sun",
    icon: CupertinoIcons.cloud_sun,
  ),
//  cloud_sun_bolt
  GalleryIcon(
    name: "cloud_sun_bolt",
    icon: CupertinoIcons.cloud_sun_bolt,
  ),
//  cloud_sun_bolt_fill
  GalleryIcon(
    name: "cloud_sun_bolt_fill",
    icon: CupertinoIcons.cloud_sun_bolt_fill,
  ),
//  cloud_sun_fill
  GalleryIcon(
    name: "cloud_sun_fill",
    icon: CupertinoIcons.cloud_sun_fill,
  ),
//  cloud_sun_rain
  GalleryIcon(
    name: "cloud_sun_rain",
    icon: CupertinoIcons.cloud_sun_rain,
  ),
//  cloud_sun_rain_fill
  GalleryIcon(
    name: "cloud_sun_rain_fill",
    icon: CupertinoIcons.cloud_sun_rain_fill,
  ),
//  cloud_upload
  GalleryIcon(
    name: "cloud_upload",
    icon: CupertinoIcons.cloud_upload,
  ),
//  cloud_upload_fill
  GalleryIcon(
    name: "cloud_upload_fill",
    icon: CupertinoIcons.cloud_upload_fill,
  ),
//  color_filter
  GalleryIcon(
    name: "color_filter",
    icon: CupertinoIcons.color_filter,
  ),
//  color_filter_fill
  GalleryIcon(
    name: "color_filter_fill",
    icon: CupertinoIcons.color_filter_fill,
  ),
//  command
  GalleryIcon(
    name: "command",
    icon: CupertinoIcons.command,
  ),
//  compass
  GalleryIcon(
    name: "compass",
    icon: CupertinoIcons.compass,
  ),
//  compass_fill
  GalleryIcon(
    name: "compass_fill",
    icon: CupertinoIcons.compass_fill,
  ),
//  control
  GalleryIcon(
    name: "control",
    icon: CupertinoIcons.control,
  ),
//  creditcard
  GalleryIcon(
    name: "creditcard",
    icon: CupertinoIcons.creditcard,
  ),
//  creditcard_fill
  GalleryIcon(
    name: "creditcard_fill",
    icon: CupertinoIcons.creditcard_fill,
  ),
//  crop
  GalleryIcon(
    name: "crop",
    icon: CupertinoIcons.crop,
  ),
//  crop_rotate
  GalleryIcon(
    name: "crop_rotate",
    icon: CupertinoIcons.crop_rotate,
  ),
//  cube
  GalleryIcon(
    name: "cube",
    icon: CupertinoIcons.cube,
  ),
//  cube_box
  GalleryIcon(
    name: "cube_box",
    icon: CupertinoIcons.cube_box,
  ),
//  cube_box_fill
  GalleryIcon(
    name: "cube_box_fill",
    icon: CupertinoIcons.cube_box_fill,
  ),
//  cube_fill
  GalleryIcon(
    name: "cube_fill",
    icon: CupertinoIcons.cube_fill,
  ),

//  cursor_rays
  GalleryIcon(
    name: "cursor_rays",
    icon: CupertinoIcons.cursor_rays,
  ),

//  decrease_indent
  GalleryIcon(
    name: "decrease_indent",
    icon: CupertinoIcons.decrease_indent,
  ),
//  decrease_quotelevel

  GalleryIcon(
    name: "decrease_quotelevel",
    icon: CupertinoIcons.decrease_quotelevel,
  ),
  //  delete_left

  GalleryIcon(
    name: "delete_left",
    icon: CupertinoIcons.delete_left,
  ),
  //  delete_left_fill

  GalleryIcon(
    name: "delete_left_fill",
    icon: CupertinoIcons.delete_left_fill,
  ),
  //  delete_right

  GalleryIcon(
    name: "delete_right",
    icon: CupertinoIcons.delete_right,
  ),
  //  delete_right_fill

  GalleryIcon(
    name: "delete_right_fill",
    icon: CupertinoIcons.delete_right_fill,
  ),
  //  desktopcomputer

  GalleryIcon(
    name: "desktopcomputer",
    icon: CupertinoIcons.desktopcomputer,
  ),
  //  device_desktop

  GalleryIcon(
    name: "device_desktop",
    icon: CupertinoIcons.device_desktop,
  ),
  //  device_laptop

  GalleryIcon(
    name: "device_laptop",
    icon: CupertinoIcons.device_laptop,
  ),
  //  device_phone_landscape
  GalleryIcon(
    name: "device_phone_landscape",
    icon: CupertinoIcons.device_phone_landscape,
  ),
//  device_phone_portrait

  GalleryIcon(
    name: "device_phone_portrait",
    icon: CupertinoIcons.device_phone_portrait,
  ),

//  dial
  GalleryIcon(
    name: "dial",
    icon: CupertinoIcons.dial,
  ),
//  dial_fill
  GalleryIcon(
    name: "dial_fill",
    icon: CupertinoIcons.dial_fill,
  ),
//  divide
  GalleryIcon(
    name: "divide",
    icon: CupertinoIcons.divide,
  ),
//  divide_circle
  GalleryIcon(
    name: "divide_circle",
    icon: CupertinoIcons.divide_circle,
  ),
//  divide_circle_fill
  GalleryIcon(
    name: "divide_circle_fill",
    icon: CupertinoIcons.divide_circle_fill,
  ),
//  divide_square
  GalleryIcon(
    name: "divide_square",
    icon: CupertinoIcons.divide_square,
  ),
//  divide_square_fill
  GalleryIcon(
    name: "divide_square_fill",
    icon: CupertinoIcons.divide_square_fill,
  ),
//  doc
  GalleryIcon(
    name: "doc",
    icon: CupertinoIcons.doc,
  ),
//  doc_append
  GalleryIcon(
    name: "doc_append",
    icon: CupertinoIcons.doc_append,
  ),
//  doc_chart
  GalleryIcon(
    name: "doc_chart",
    icon: CupertinoIcons.doc_chart,
  ),
//  doc_chart_fill
  GalleryIcon(
    name: "doc_chart_fill",
    icon: CupertinoIcons.doc_chart_fill,
  ),
//  doc_checkmark
  GalleryIcon(
    name: "doc_checkmark",
    icon: CupertinoIcons.doc_checkmark,
  ),
//  doc_checkmark_fill
  GalleryIcon(
    name: "doc_checkmark_fill",
    icon: CupertinoIcons.doc_checkmark_fill,
  ),
//  doc_circle
  GalleryIcon(
    name: "doc_circle",
    icon: CupertinoIcons.doc_circle,
  ),
//  doc_circle_fill
  GalleryIcon(
    name: "doc_circle_fill",
    icon: CupertinoIcons.doc_circle_fill,
  ),
//  doc_fill
  GalleryIcon(
    name: "doc_fill",
    icon: CupertinoIcons.doc_fill,
  ),
//  doc_on_clipboard
  GalleryIcon(
    name: "doc_on_clipboard",
    icon: CupertinoIcons.doc_on_clipboard,
  ),
//  doc_on_clipboard_fill
  GalleryIcon(
    name: "doc_on_clipboard_fill",
    icon: CupertinoIcons.doc_on_clipboard_fill,
  ),
//  doc_on_doc
  GalleryIcon(
    name: "doc_on_doc",
    icon: CupertinoIcons.doc_on_doc,
  ),
//  doc_on_doc_fill
  GalleryIcon(
    name: "doc_on_doc_fill",
    icon: CupertinoIcons.doc_on_doc_fill,
  ),
//  doc_person
  GalleryIcon(
    name: "doc_person",
    icon: CupertinoIcons.doc_person,
  ),
//  doc_person_fill
  GalleryIcon(
    name: "doc_person_fill",
    icon: CupertinoIcons.doc_person_fill,
  ),
//  doc_plaintext
  GalleryIcon(
    name: "doc_plaintext",
    icon: CupertinoIcons.doc_plaintext,
  ),
//  doc_richtext
  GalleryIcon(
    name: "doc_richtext",
    icon: CupertinoIcons.doc_richtext,
  ),
//  doc_text
  GalleryIcon(
    name: "doc_text",
    icon: CupertinoIcons.doc_text,
  ),
//  doc_text_fill
  GalleryIcon(
    name: "doc_text_fill",
    icon: CupertinoIcons.doc_text_fill,
  ),
//  doc_text_search
  GalleryIcon(
    name: "doc_text_search",
    icon: CupertinoIcons.doc_text_search,
  ),
//  doc_text_viewfinder
  GalleryIcon(
    name: "doc_text_viewfinder",
    icon: CupertinoIcons.doc_text_viewfinder,
  ),
//  dot_radiowaves_left_right
  GalleryIcon(
    name: "dot_radiowaves_left_right",
    icon: CupertinoIcons.dot_radiowaves_left_right,
  ),
//  dot_radiowaves_right
  GalleryIcon(
    name: "dot_radiowaves_right",
    icon: CupertinoIcons.dot_radiowaves_right,
  ),
//  dot_square
  GalleryIcon(
    name: "dot_square",
    icon: CupertinoIcons.dot_square,
  ),
//  dot_square_fill
  GalleryIcon(
    name: "dot_square_fill",
    icon: CupertinoIcons.dot_square_fill,
  ),
//  download_circle
  GalleryIcon(
    name: "download_circle",
    icon: CupertinoIcons.download_circle,
  ),
//  download_circle_fill
  GalleryIcon(
    name: "download_circle_fill",
    icon: CupertinoIcons.download_circle_fill,
  ),
//  drop
  GalleryIcon(
    name: "drop",
    icon: CupertinoIcons.drop,
  ),
//  drop_fill
  GalleryIcon(
    name: "drop_fill",
    icon: CupertinoIcons.drop_fill,
  ),
//  drop_triangle
  GalleryIcon(
    name: "drop_triangle",
    icon: CupertinoIcons.drop_triangle,
  ),
//  drop_triangle_fill
  GalleryIcon(
    name: "drop_triangle_fill",
    icon: CupertinoIcons.drop_triangle_fill,
  ),
//  ear
  GalleryIcon(
    name: "ear",
    icon: CupertinoIcons.ear,
  ),
//  eject
  GalleryIcon(
    name: "eject",
    icon: CupertinoIcons.eject,
  ),
//  eject_fill
  GalleryIcon(
    name: "eject_fill",
    icon: CupertinoIcons.eject_fill,
  ),
//  ellipses_bubble
  GalleryIcon(
    name: "ellipses_bubble",
    icon: CupertinoIcons.ellipses_bubble,
  ),
//  ellipses_bubble_fill
  GalleryIcon(
    name: "ellipses_bubble_fill",
    icon: CupertinoIcons.ellipses_bubble_fill,
  ),
//  ellipsis_circle
  GalleryIcon(
    name: "ellipsis_circle",
    icon: CupertinoIcons.ellipsis_circle,
  ),
//  ellipsis_circle_fill
  GalleryIcon(
    name: "ellipsis_circle_fill",
    icon: CupertinoIcons.ellipsis_circle_fill,
  ),
//  ellipsis_vertical
  GalleryIcon(
    name: "ellipsis_vertical",
    icon: CupertinoIcons.ellipsis_vertical,
  ),
//  ellipsis_vertical_circle
  GalleryIcon(
    name: "ellipsis_vertical_circle",
    icon: CupertinoIcons.ellipsis_vertical_circle,
  ),
//  ellipsis_vertical_circle_fill
  GalleryIcon(
    name: "ellipsis_vertical_circle_fill",
    icon: CupertinoIcons.ellipsis_vertical_circle_fill,
  ),

//  envelope
  GalleryIcon(
    name: "envelope",
    icon: CupertinoIcons.envelope,
  ),
//  envelope_badge
  GalleryIcon(
    name: "envelope_badge",
    icon: CupertinoIcons.envelope_badge,
  ),
//  envelope_badge_fill
  GalleryIcon(
    name: "envelope_badge_fill",
    icon: CupertinoIcons.envelope_badge_fill,
  ),
//  envelope_circle
  GalleryIcon(
    name: "envelope_circle",
    icon: CupertinoIcons.envelope_circle,
  ),
//  envelope_circle_fill
  GalleryIcon(
    name: "envelope_circle_fill",
    icon: CupertinoIcons.envelope_circle_fill,
  ),

//  envelope_fill
  GalleryIcon(
    name: "envelope_fill",
    icon: CupertinoIcons.envelope_fill,
  ),
//  envelope_open
  GalleryIcon(
    name: "envelope_open",
    icon: CupertinoIcons.envelope_open,
  ),
//  envelope_open_fill
  GalleryIcon(
    name: "envelope_open_fill",
    icon: CupertinoIcons.envelope_open_fill,
  ),
//  equal
  GalleryIcon(
    name: "equal",
    icon: CupertinoIcons.equal,
  ),
//  equal_circle
  GalleryIcon(
    name: "equal_circle",
    icon: CupertinoIcons.equal_circle,
  ),
//  equal_circle_fill
  GalleryIcon(
    name: "equal_circle_fill",
    icon: CupertinoIcons.equal_circle_fill,
  ),
//  equal_square
  GalleryIcon(
    name: "equal_square",
    icon: CupertinoIcons.equal_square,
  ),
//  equal_square_fill
  GalleryIcon(
    name: "equal_square_fill",
    icon: CupertinoIcons.equal_square_fill,
  ),
//  escape
  GalleryIcon(
    name: "escape",
    icon: CupertinoIcons.escape,
  ),
//  exclamationmark
  GalleryIcon(
    name: "exclamationmark",
    icon: CupertinoIcons.exclamationmark,
  ),
//  exclamationmark_bubble
  GalleryIcon(
    name: "exclamationmark_bubble",
    icon: CupertinoIcons.exclamationmark_bubble,
  ),
//  exclamationmark_bubble_fill
  GalleryIcon(
    name: "exclamationmark_bubble_fill",
    icon: CupertinoIcons.exclamationmark_bubble_fill,
  ),
//  exclamationmark_circle
  GalleryIcon(
    name: "exclamationmark_circle",
    icon: CupertinoIcons.exclamationmark_circle,
  ),
//  exclamationmark_circle_fill
  GalleryIcon(
    name: "exclamationmark_circle_fill",
    icon: CupertinoIcons.exclamationmark_circle_fill,
  ),
//  exclamationmark_octagon
  GalleryIcon(
    name: "exclamationmark_octagon",
    icon: CupertinoIcons.exclamationmark_octagon,
  ),
//  exclamationmark_octagon_fill
  GalleryIcon(
    name: "exclamationmark_octagon_fill",
    icon: CupertinoIcons.exclamationmark_octagon_fill,
  ),
//  exclamationmark_shield
  GalleryIcon(
    name: "exclamationmark_shield",
    icon: CupertinoIcons.exclamationmark_shield,
  ),
//  exclamationmark_shield_fill
  GalleryIcon(
    name: "exclamationmark_shield_fill",
    icon: CupertinoIcons.exclamationmark_shield_fill,
  ),
//  exclamationmark_square
  GalleryIcon(
    name: "exclamationmark_square",
    icon: CupertinoIcons.exclamationmark_square,
  ),
//  exclamationmark_square_fill
  GalleryIcon(
    name: "exclamationmark_square_fill",
    icon: CupertinoIcons.exclamationmark_square_fill,
  ),
//  exclamationmark_triangle
  GalleryIcon(
    name: "exclamationmark_triangle",
    icon: CupertinoIcons.exclamationmark_triangle,
  ),
//  exclamationmark_triangle_fill
  GalleryIcon(
    name: "exclamationmark_triangle_fill",
    icon: CupertinoIcons.exclamationmark_triangle_fill,
  ),

//  eye_fill
  GalleryIcon(
    name: "eye_fill",
    icon: CupertinoIcons.eye_fill,
  ),
//  eye_slash
  GalleryIcon(
    name: "eye_slash",
    icon: CupertinoIcons.eye_slash,
  ),
//  eye_slash_fill
  GalleryIcon(
    name: "eye_slash_fill",
    icon: CupertinoIcons.eye_slash_fill,
  ),
//  eyedropper
  GalleryIcon(
    name: "eyedropper",
    icon: CupertinoIcons.eyedropper,
  ),
//  eyedropper_full
  GalleryIcon(
    name: "eyedropper_full",
    icon: CupertinoIcons.eyedropper_full,
  ),
//  eyedropper_halffull
  GalleryIcon(
    name: "eyedropper_halffull",
    icon: CupertinoIcons.eyedropper_halffull,
  ),
//  eyeglasses
  GalleryIcon(
    name: "eyeglasses",
    icon: CupertinoIcons.eyeglasses,
  ),
//  f_cursive
  GalleryIcon(
    name: "f_cursive",
    icon: CupertinoIcons.f_cursive,
  ),
//  f_cursive_circle
  GalleryIcon(
    name: "f_cursive_circle",
    icon: CupertinoIcons.f_cursive_circle,
  ),
//  f_cursive_circle_fill
  GalleryIcon(
    name: "f_cursive_circle_fill",
    icon: CupertinoIcons.f_cursive_circle_fill,
  ),
//  film
  GalleryIcon(
    name: "film",
    icon: CupertinoIcons.film,
  ),
//  film_fill
  GalleryIcon(
    name: "film_fill",
    icon: CupertinoIcons.film_fill,
  ),
//  flag_circle
  GalleryIcon(
    name: "flag_circle",
    icon: CupertinoIcons.flag_circle,
  ),
//  flag_circle_fill
  GalleryIcon(
    name: "flag_circle_fill",
    icon: CupertinoIcons.flag_circle_fill,
  ),
//  flag_fill
  GalleryIcon(
    name: "flag_fill",
    icon: CupertinoIcons.flag_fill,
  ),
//  flag_slash
  GalleryIcon(
    name: "flag_slash",
    icon: CupertinoIcons.flag_slash,
  ),
//  flag_slash_fill
  GalleryIcon(
    name: "flag_slash_fill",
    icon: CupertinoIcons.flag_slash_fill,
  ),
//  flame
  GalleryIcon(
    name: "flame",
    icon: CupertinoIcons.flame,
  ),
//  flame_fill
  GalleryIcon(
    name: "flame_fill",
    icon: CupertinoIcons.flame_fill,
  ),
//  floppy_disk
  GalleryIcon(
    name: "floppy_disk",
    icon: CupertinoIcons.floppy_disk,
  ),
//  flowchart
  GalleryIcon(
    name: "flowchart",
    icon: CupertinoIcons.flowchart,
  ),
//  flowchart_fill
  GalleryIcon(
    name: "flowchart_fill",
    icon: CupertinoIcons.flowchart_fill,
  ),
//  folder_badge_minus
  GalleryIcon(
    name: "folder_badge_minus",
    icon: CupertinoIcons.folder_badge_minus,
  ),
//  folder_badge_person_crop
  GalleryIcon(
    name: "folder_badge_person_crop",
    icon: CupertinoIcons.folder_badge_person_crop,
  ),
//  folder_badge_plus
  GalleryIcon(
    name: "folder_badge_plus",
    icon: CupertinoIcons.folder_badge_plus,
  ),
//  folder_circle
  GalleryIcon(
    name: "folder_circle",
    icon: CupertinoIcons.folder_circle,
  ),
//  folder_circle_fill
  GalleryIcon(
    name: "folder_circle_fill",
    icon: CupertinoIcons.folder_circle_fill,
  ),

//  folder_fill
  GalleryIcon(
    name: "folder_fill",
    icon: CupertinoIcons.folder_fill,
  ),
//  folder_fill_badge_minus
  GalleryIcon(
    name: "folder_fill_badge_minus",
    icon: CupertinoIcons.folder_fill_badge_minus,
  ),
//  folder_fill_badge_person_crop
  GalleryIcon(
    name: "folder_fill_badge_person_crop",
    icon: CupertinoIcons.folder_fill_badge_person_crop,
  ),
//  folder_fill_badge_plus
  GalleryIcon(
    name: "folder_fill_badge_plus",
    icon: CupertinoIcons.folder_fill_badge_plus,
  ),
//  forward_end
  GalleryIcon(
    name: "forward_end",
    icon: CupertinoIcons.forward_end,
  ),
//  forward_end_alt
  GalleryIcon(
    name: "forward_end_alt",
    icon: CupertinoIcons.forward_end_alt,
  ),
//  forward_end_alt_fill
  GalleryIcon(
    name: "forward_end_alt_fill",
    icon: CupertinoIcons.forward_end_alt_fill,
  ),
//  forward_end_fill
  GalleryIcon(
    name: "forward_end_fill",
    icon: CupertinoIcons.forward_end_fill,
  ),
//  forward_fill
  GalleryIcon(
    name: "forward_fill",
    icon: CupertinoIcons.forward_fill,
  ),
//  function
  GalleryIcon(
    name: "function",
    icon: CupertinoIcons.function,
  ),
//  fx
  GalleryIcon(
    name: "fx",
    icon: CupertinoIcons.fx,
  ),

//  gamecontroller
  GalleryIcon(
    name: "gamecontroller",
    icon: CupertinoIcons.gamecontroller,
  ),
//  gamecontroller_alt_fill
  GalleryIcon(
    name: "gamecontroller_alt_fill",
    icon: CupertinoIcons.gamecontroller_alt_fill,
  ),

//  gamecontroller_fill
  GalleryIcon(
    name: "gamecontroller_fill",
    icon: CupertinoIcons.gamecontroller_fill,
  ),
//  gauge
  GalleryIcon(
    name: "gauge",
    icon: CupertinoIcons.gauge,
  ),
//  gauge_badge_minus
  GalleryIcon(
    name: "gauge_badge_minus",
    icon: CupertinoIcons.gauge_badge_minus,
  ),
//  gauge_badge_plus
  GalleryIcon(
    name: "gauge_badge_plus",
    icon: CupertinoIcons.gauge_badge_plus,
  ),

//  gear_alt
  GalleryIcon(
    name: "gear_alt",
    icon: CupertinoIcons.gear_alt,
  ),

//  gear_alt_fill
  GalleryIcon(
    name: "gear_alt_fill",
    icon: CupertinoIcons.gear_alt_fill,
  ),
//  gift
  GalleryIcon(
    name: "gift",
    icon: CupertinoIcons.gift,
  ),
//  gift_alt
  GalleryIcon(
    name: "gift_alt",
    icon: CupertinoIcons.gift_alt,
  ),
//  gift_alt_fill
  GalleryIcon(
    name: "gift_alt_fill",
    icon: CupertinoIcons.gift_alt_fill,
  ),
//  gift_fill
  GalleryIcon(
    name: "gift_fill",
    icon: CupertinoIcons.gift_fill,
  ),
//  globe
  GalleryIcon(
    name: "globe",
    icon: CupertinoIcons.globe,
  ),
//  gobackward
  GalleryIcon(
    name: "gobackward",
    icon: CupertinoIcons.gobackward,
  ),
//  gobackward_10
  GalleryIcon(
    name: "gobackward_10",
    icon: CupertinoIcons.gobackward_10,
  ),
//  gobackward_15
  GalleryIcon(
    name: "gobackward_15",
    icon: CupertinoIcons.gobackward_15,
  ),
//  gobackward_30
  GalleryIcon(
    name: "gobackward_30",
    icon: CupertinoIcons.gobackward_30,
  ),
//  gobackward_45
  GalleryIcon(
    name: "gobackward_45",
    icon: CupertinoIcons.gobackward_45,
  ),
//  gobackward_60
  GalleryIcon(
    name: "gobackward_60",
    icon: CupertinoIcons.gobackward_60,
  ),
//  gobackward_75
  GalleryIcon(
    name: "gobackward_75",
    icon: CupertinoIcons.gobackward_75,
  ),
//  gobackward_90
  GalleryIcon(
    name: "gobackward_90",
    icon: CupertinoIcons.gobackward_90,
  ),
//  gobackward_minus
  GalleryIcon(
    name: "gobackward_minus",
    icon: CupertinoIcons.gobackward_minus,
  ),
//  goforward
  GalleryIcon(
    name: "goforward",
    icon: CupertinoIcons.goforward,
  ),
//  goforward_10
  GalleryIcon(
    name: "goforward_10",
    icon: CupertinoIcons.goforward_10,
  ),
//  goforward_15
  GalleryIcon(
    name: "goforward_15",
    icon: CupertinoIcons.goforward_15,
  ),
//  goforward_30
  GalleryIcon(
    name: "goforward_30",
    icon: CupertinoIcons.goforward_30,
  ),
//  goforward_45
  GalleryIcon(
    name: "goforward_45",
    icon: CupertinoIcons.goforward_45,
  ),
//  goforward_60
  GalleryIcon(
    name: "goforward_60",
    icon: CupertinoIcons.goforward_60,
  ),
//  goforward_75
  GalleryIcon(
    name: "goforward_75",
    icon: CupertinoIcons.goforward_75,
  ),
//  goforward_90
  GalleryIcon(
    name: "goforward_90",
    icon: CupertinoIcons.goforward_90,
  ),
//  goforward_plus
  GalleryIcon(
    name: "goforward_plus",
    icon: CupertinoIcons.goforward_plus,
  ),
//  graph_circle
  GalleryIcon(
    name: "graph_circle",
    icon: CupertinoIcons.graph_circle,
  ),
//  graph_circle_fill
  GalleryIcon(
    name: "graph_circle_fill",
    icon: CupertinoIcons.graph_circle_fill,
  ),
//  graph_square
  GalleryIcon(
    name: "graph_square",
    icon: CupertinoIcons.graph_square,
  ),
//  graph_square_fill
  GalleryIcon(
    name: "graph_square_fill",
    icon: CupertinoIcons.graph_square_fill,
  ),
//  greaterthan
  GalleryIcon(
    name: "greaterthan",
    icon: CupertinoIcons.greaterthan,
  ),
//  greaterthan_circle
  GalleryIcon(
    name: "greaterthan_circle",
    icon: CupertinoIcons.greaterthan_circle,
  ),
//  greaterthan_circle_fill
  GalleryIcon(
    name: "greaterthan_circle_fill",
    icon: CupertinoIcons.greaterthan_circle_fill,
  ),
//  greaterthan_square
  GalleryIcon(
    name: "greaterthan_square",
    icon: CupertinoIcons.greaterthan_square,
  ),
//  greaterthan_square_fill
  GalleryIcon(
    name: "greaterthan_square_fill",
    icon: CupertinoIcons.greaterthan_square_fill,
  ),
//  grid
  GalleryIcon(
    name: "grid",
    icon: CupertinoIcons.grid,
  ),
//  grid_circle
  GalleryIcon(
    name: "grid_circle",
    icon: CupertinoIcons.grid_circle,
  ),
//  grid_circle_fill
  GalleryIcon(
    name: "grid_circle_fill",
    icon: CupertinoIcons.grid_circle_fill,
  ),
//  guitars
  GalleryIcon(
    name: "guitars",
    icon: CupertinoIcons.guitars,
  ),
//  hammer
  GalleryIcon(
    name: "hammer",
    icon: CupertinoIcons.hammer,
  ),
//  hammer_fill
  GalleryIcon(
    name: "hammer_fill",
    icon: CupertinoIcons.hammer_fill,
  ),
//  hand_draw
  GalleryIcon(
    name: "hand_draw",
    icon: CupertinoIcons.hand_draw,
  ),
//  hand_draw_fill
  GalleryIcon(
    name: "hand_draw_fill",
    icon: CupertinoIcons.hand_draw_fill,
  ),
//  hand_point_left
  GalleryIcon(
    name: "hand_point_left",
    icon: CupertinoIcons.hand_point_left,
  ),
//  hand_point_left_fill
  GalleryIcon(
    name: "hand_point_left_fill",
    icon: CupertinoIcons.hand_point_left_fill,
  ),
//  hand_point_right
  GalleryIcon(
    name: "hand_point_right",
    icon: CupertinoIcons.hand_point_right,
  ),
//  hand_point_right_fill
  GalleryIcon(
    name: "hand_point_right_fill",
    icon: CupertinoIcons.hand_point_right_fill,
  ),
//  hand_raised
  GalleryIcon(
    name: "hand_raised",
    icon: CupertinoIcons.hand_raised,
  ),
//  hand_raised_fill
  GalleryIcon(
    name: "hand_raised_fill",
    icon: CupertinoIcons.hand_raised_fill,
  ),
//  hand_raised_slash
  GalleryIcon(
    name: "hand_raised_slash",
    icon: CupertinoIcons.hand_raised_slash,
  ),
//  hand_raised_slash_fill
  GalleryIcon(
    name: "hand_raised_slash_fill",
    icon: CupertinoIcons.hand_raised_slash_fill,
  ),
//  hand_thumbsdown
  GalleryIcon(
    name: "hand_thumbsdown",
    icon: CupertinoIcons.hand_thumbsdown,
  ),
//  hand_thumbsdown_fill
  GalleryIcon(
    name: "hand_thumbsdown_fill",
    icon: CupertinoIcons.hand_thumbsdown_fill,
  ),
//  hand_thumbsup
  GalleryIcon(
    name: "hand_thumbsup",
    icon: CupertinoIcons.hand_thumbsup,
  ),
//  hand_thumbsup_fill
  GalleryIcon(
    name: "hand_thumbsup_fill",
    icon: CupertinoIcons.hand_thumbsup_fill,
  ),
//  hare
  GalleryIcon(
    name: "hare",
    icon: CupertinoIcons.hare,
  ),
//  hare_fill
  GalleryIcon(
    name: "hare_fill",
    icon: CupertinoIcons.hare_fill,
  ),
//  headphones
  GalleryIcon(
    name: "headphones",
    icon: CupertinoIcons.headphones,
  ),
//  heart_circle
  GalleryIcon(
    name: "heart_circle",
    icon: CupertinoIcons.heart_circle,
  ),
//  heart_circle_fill
  GalleryIcon(
    name: "heart_circle_fill",
    icon: CupertinoIcons.heart_circle_fill,
  ),

//  heart_fill
  GalleryIcon(
    name: "heart_fill",
    icon: CupertinoIcons.heart_fill,
  ),
//  heart_slash
  GalleryIcon(
    name: "heart_slash",
    icon: CupertinoIcons.heart_slash,
  ),
//  heart_slash_circle
  GalleryIcon(
    name: "heart_slash_circle",
    icon: CupertinoIcons.heart_slash_circle,
  ),
//  heart_slash_circle_fill
  GalleryIcon(
    name: "heart_slash_circle_fill",
    icon: CupertinoIcons.heart_slash_circle_fill,
  ),
//  heart_slash_fill
  GalleryIcon(
    name: "heart_slash_fill",
    icon: CupertinoIcons.heart_slash_fill,
  ),
//  helm
  GalleryIcon(
    name: "helm",
    icon: CupertinoIcons.helm,
  ),
//  hexagon
  GalleryIcon(
    name: "hexagon",
    icon: CupertinoIcons.hexagon,
  ),
//  hexagon_fill
  GalleryIcon(
    name: "hexagon_fill",
    icon: CupertinoIcons.hexagon_fill,
  ),
//  hifispeaker
  GalleryIcon(
    name: "hifispeaker",
    icon: CupertinoIcons.hifispeaker,
  ),
//  hifispeaker_fill
  GalleryIcon(
    name: "hifispeaker_fill",
    icon: CupertinoIcons.hifispeaker_fill,
  ),
//  hourglass
  GalleryIcon(
    name: "hourglass",
    icon: CupertinoIcons.hourglass,
  ),
//  hourglass_bottomhalf_fill
  GalleryIcon(
    name: "hourglass_bottomhalf_fill",
    icon: CupertinoIcons.hourglass_bottomhalf_fill,
  ),
//  hourglass_tophalf_fill
  GalleryIcon(
    name: "hourglass_tophalf_fill",
    icon: CupertinoIcons.hourglass_tophalf_fill,
  ),

//  house
  GalleryIcon(
    name: "house",
    icon: CupertinoIcons.house,
  ),
//  house_alt
  GalleryIcon(
    name: "house_alt",
    icon: CupertinoIcons.house_alt,
  ),
//  house_alt_fill
  GalleryIcon(
    name: "house_alt_fill",
    icon: CupertinoIcons.house_alt_fill,
  ),
//  house_fill
  GalleryIcon(
    name: "house_fill",
    icon: CupertinoIcons.house_fill,
  ),
//  hurricane
  GalleryIcon(
    name: "hurricane",
    icon: CupertinoIcons.hurricane,
  ),
//  increase_indent
  GalleryIcon(
    name: "increase_indent",
    icon: CupertinoIcons.increase_indent,
  ),
//  increase_quotelevel
  GalleryIcon(
    name: "increase_quotelevel",
    icon: CupertinoIcons.increase_quotelevel,
  ),

//  infinite
  GalleryIcon(
    name: "infinite",
    icon: CupertinoIcons.infinite,
  ),

//  info_circle
  GalleryIcon(
    name: "info_circle",
    icon: CupertinoIcons.info_circle,
  ),
//  info_circle_fill
  GalleryIcon(
    name: "info_circle_fill",
    icon: CupertinoIcons.info_circle_fill,
  ),
//  italic
  GalleryIcon(
    name: "italic",
    icon: CupertinoIcons.italic,
  ),
//  keyboard
  GalleryIcon(
    name: "keyboard",
    icon: CupertinoIcons.keyboard,
  ),
//  keyboard_chevron_compact_down
  GalleryIcon(
    name: "keyboard_chevron_compact_down",
    icon: CupertinoIcons.keyboard_chevron_compact_down,
  ),
//  largecircle_fill_circle
  GalleryIcon(
    name: "largecircle_fill_circle",
    icon: CupertinoIcons.largecircle_fill_circle,
  ),
//  lasso
  GalleryIcon(
    name: "lasso",
    icon: CupertinoIcons.lasso,
  ),
//  layers
  GalleryIcon(
    name: "layers",
    icon: CupertinoIcons.layers,
  ),
//  layers_alt
  GalleryIcon(
    name: "layers_alt",
    icon: CupertinoIcons.layers_alt,
  ),
//  layers_alt_fill
  GalleryIcon(
    name: "layers_alt_fill",
    icon: CupertinoIcons.layers_alt_fill,
  ),
//  layers_fill
  GalleryIcon(
    name: "layers_fill",
    icon: CupertinoIcons.layers_fill,
  ),
//  leaf_arrow_circlepath
  GalleryIcon(
    name: "leaf_arrow_circlepath",
    icon: CupertinoIcons.leaf_arrow_circlepath,
  ),
//  lessthan
  GalleryIcon(
    name: "lessthan",
    icon: CupertinoIcons.lessthan,
  ),
//  lessthan_circle
  GalleryIcon(
    name: "lessthan_circle",
    icon: CupertinoIcons.lessthan_circle,
  ),
//  lessthan_circle_fill
  GalleryIcon(
    name: "lessthan_circle_fill",
    icon: CupertinoIcons.lessthan_circle_fill,
  ),
//  lessthan_square
  GalleryIcon(
    name: "lessthan_square",
    icon: CupertinoIcons.lessthan_square,
  ),
//  lessthan_square_fill
  GalleryIcon(
    name: "lessthan_square_fill",
    icon: CupertinoIcons.lessthan_square_fill,
  ),
//  light_max
  GalleryIcon(
    name: "light_max",
    icon: CupertinoIcons.light_max,
  ),
//  light_min
  GalleryIcon(
    name: "light_min",
    icon: CupertinoIcons.light_min,
  ),
//  lightbulb
  GalleryIcon(
    name: "lightbulb",
    icon: CupertinoIcons.lightbulb,
  ),
//  lightbulb_fill
  GalleryIcon(
    name: "lightbulb_fill",
    icon: CupertinoIcons.lightbulb_fill,
  ),
//  lightbulb_slash
  GalleryIcon(
    name: "lightbulb_slash",
    icon: CupertinoIcons.lightbulb_slash,
  ),
//  lightbulb_slash_fill
  GalleryIcon(
    name: "lightbulb_slash_fill",
    icon: CupertinoIcons.lightbulb_slash_fill,
  ),
//  line_horizontal_3
  GalleryIcon(
    name: "line_horizontal_3",
    icon: CupertinoIcons.line_horizontal_3,
  ),
//  line_horizontal_3_decrease
  GalleryIcon(
    name: "line_horizontal_3_decrease",
    icon: CupertinoIcons.line_horizontal_3_decrease,
  ),
//  line_horizontal_3_decrease_circle
  GalleryIcon(
    name: "line_horizontal_3_decrease_circle",
    icon: CupertinoIcons.line_horizontal_3_decrease_circle,
  ),
//  line_horizontal_3_decrease_circle_fill
  GalleryIcon(
    name: "line_horizontal_3_decrease_circle_fill",
    icon: CupertinoIcons.line_horizontal_3_decrease_circle_fill,
  ),
//  link
  GalleryIcon(
    name: "link",
    icon: CupertinoIcons.link,
  ),
//  link_circle
  GalleryIcon(
    name: "link_circle",
    icon: CupertinoIcons.link_circle,
  ),
//  link_circle_fill
  GalleryIcon(
    name: "link_circle_fill",
    icon: CupertinoIcons.link_circle_fill,
  ),
//  list_bullet
  GalleryIcon(
    name: "list_bullet",
    icon: CupertinoIcons.list_bullet,
  ),
//  list_bullet_below_rectangle
  GalleryIcon(
    name: "list_bullet_below_rectangle",
    icon: CupertinoIcons.list_bullet_below_rectangle,
  ),
//  list_bullet_indent
  GalleryIcon(
    name: "list_bullet_indent",
    icon: CupertinoIcons.list_bullet_indent,
  ),
//  list_dash
  GalleryIcon(
    name: "list_dash",
    icon: CupertinoIcons.list_dash,
  ),
//  list_number
  GalleryIcon(
    name: "list_number",
    icon: CupertinoIcons.list_number,
  ),
//  list_number_rtl
  GalleryIcon(
    name: "list_number_rtl",
    icon: CupertinoIcons.list_number_rtl,
  ),
//  location_circle
  GalleryIcon(
    name: "location_circle",
    icon: CupertinoIcons.location_circle,
  ),
//  location_circle_fill
  GalleryIcon(
    name: "location_circle_fill",
    icon: CupertinoIcons.location_circle_fill,
  ),
//  location_fill

  GalleryIcon(
    name: "location_fill",
    icon: CupertinoIcons.location_fill,
  ),
//  location_north
  GalleryIcon(
    name: "location_north",
    icon: CupertinoIcons.location_north,
  ),
//  location_north_fill
  GalleryIcon(
    name: "location_north_fill",
    icon: CupertinoIcons.location_north_fill,
  ),
//  location_north_line
  GalleryIcon(
    name: "location_north_line",
    icon: CupertinoIcons.location_north_line,
  ),
//  location_north_line_fill
  GalleryIcon(
    name: "location_north_line_fill",
    icon: CupertinoIcons.location_north_line_fill,
  ),
//  location_slash
  GalleryIcon(
    name: "location_slash",
    icon: CupertinoIcons.location_slash,
  ),
//  location_slash_fill
  GalleryIcon(
    name: "location_slash_fill",
    icon: CupertinoIcons.location_slash_fill,
  ),

//  lock
  GalleryIcon(
    name: "lock",
    icon: CupertinoIcons.lock,
  ),
//  lock_circle
  GalleryIcon(
    name: "lock_circle",
    icon: CupertinoIcons.lock_circle,
  ),
//  lock_circle_fill
  GalleryIcon(
    name: "lock_circle_fill",
    icon: CupertinoIcons.lock_circle_fill,
  ),

//  lock_fill
  GalleryIcon(
    name: "lock_fill",
    icon: CupertinoIcons.lock_fill,
  ),
//  lock_open
  GalleryIcon(
    name: "lock_open",
    icon: CupertinoIcons.lock_open,
  ),
//  lock_open_fill
  GalleryIcon(
    name: "lock_open_fill",
    icon: CupertinoIcons.lock_open_fill,
  ),
//  lock_rotation
  GalleryIcon(
    name: "lock_rotation",
    icon: CupertinoIcons.lock_rotation,
  ),
//  lock_rotation_open
  GalleryIcon(
    name: "lock_rotation_open",
    icon: CupertinoIcons.lock_rotation_open,
  ),
//  lock_shield
  GalleryIcon(
    name: "lock_shield",
    icon: CupertinoIcons.lock_shield,
  ),
//  lock_shield_fill
  GalleryIcon(
    name: "lock_shield_fill",
    icon: CupertinoIcons.lock_shield_fill,
  ),
//  lock_slash
  GalleryIcon(
    name: "lock_slash",
    icon: CupertinoIcons.lock_slash,
  ),
//  lock_slash_fill
  GalleryIcon(
    name: "lock_slash_fill",
    icon: CupertinoIcons.lock_slash_fill,
  ),
//  macwindow
  GalleryIcon(
    name: "macwindow",
    icon: CupertinoIcons.macwindow,
  ),
//  map
  GalleryIcon(
    name: "map",
    icon: CupertinoIcons.map,
  ),
//  map_fill
  GalleryIcon(
    name: "map_fill",
    icon: CupertinoIcons.map_fill,
  ),
//  map_pin
  GalleryIcon(
    name: "map_pin",
    icon: CupertinoIcons.map_pin,
  ),
//  map_pin_ellipse
  GalleryIcon(
    name: "map_pin_ellipse",
    icon: CupertinoIcons.map_pin_ellipse,
  ),
//  map_pin_slash
  GalleryIcon(
    name: "map_pin_slash",
    icon: CupertinoIcons.map_pin_slash,
  ),
//  memories
  GalleryIcon(
    name: "memories",
    icon: CupertinoIcons.memories,
  ),
//  memories_badge_minus
  GalleryIcon(
    name: "memories_badge_minus",
    icon: CupertinoIcons.memories_badge_minus,
  ),
//  memories_badge_plus
  GalleryIcon(
    name: "memories_badge_plus",
    icon: CupertinoIcons.memories_badge_plus,
  ),
//  metronome
  GalleryIcon(
    name: "metronome",
    icon: CupertinoIcons.metronome,
  ),
//  mic_circle
  GalleryIcon(
    name: "mic_circle",
    icon: CupertinoIcons.mic_circle,
  ),
//  mic_circle_fill
  GalleryIcon(
    name: "mic_circle_fill",
    icon: CupertinoIcons.mic_circle_fill,
  ),

//  mic_fill
  GalleryIcon(
    name: "mic_fill",
    icon: CupertinoIcons.mic_fill,
  ),

//  mic_slash
  GalleryIcon(
    name: "mic_slash",
    icon: CupertinoIcons.mic_slash,
  ),
//  mic_slash_fill
  GalleryIcon(
    name: "mic_slash_fill",
    icon: CupertinoIcons.mic_slash_fill,
  ),
//  minus
  GalleryIcon(
    name: "minus",
    icon: CupertinoIcons.minus,
  ),

//  minus_circle
  GalleryIcon(
    name: "minus_circle",
    icon: CupertinoIcons.minus_circle,
  ),
//  minus_circle_fill
  GalleryIcon(
    name: "minus_circle_fill",
    icon: CupertinoIcons.minus_circle_fill,
  ),
//  minus_rectangle
  GalleryIcon(
    name: "minus_rectangle",
    icon: CupertinoIcons.minus_rectangle,
  ),
//  minus_rectangle_fill
  GalleryIcon(
    name: "minus_rectangle_fill",
    icon: CupertinoIcons.minus_rectangle_fill,
  ),
//  minus_slash_plus
  GalleryIcon(
    name: "minus_slash_plus",
    icon: CupertinoIcons.minus_slash_plus,
  ),
//  minus_square
  GalleryIcon(
    name: "minus_square",
    icon: CupertinoIcons.minus_square,
  ),
//  minus_square_fill
  GalleryIcon(
    name: "minus_square_fill",
    icon: CupertinoIcons.minus_square_fill,
  ),
//  money_dollar
  GalleryIcon(
    name: "money_dollar",
    icon: CupertinoIcons.money_dollar,
  ),
//  money_dollar_circle
  GalleryIcon(
    name: "money_dollar_circle",
    icon: CupertinoIcons.money_dollar_circle,
  ),
//  money_dollar_circle_fill
  GalleryIcon(
    name: "money_dollar_circle_fill",
    icon: CupertinoIcons.money_dollar_circle_fill,
  ),
//  money_euro
  GalleryIcon(
    name: "money_euro",
    icon: CupertinoIcons.money_euro,
  ),
//  money_euro_circle
  GalleryIcon(
    name: "money_euro_circle",
    icon: CupertinoIcons.money_euro_circle,
  ),
//  money_euro_circle_fill
  GalleryIcon(
    name: "money_euro_circle_fill",
    icon: CupertinoIcons.money_euro_circle_fill,
  ),
//  money_pound
  GalleryIcon(
    name: "money_pound",
    icon: CupertinoIcons.money_pound,
  ),
//  money_pound_circle
  GalleryIcon(
    name: "money_pound_circle",
    icon: CupertinoIcons.money_pound_circle,
  ),
//  money_pound_circle_fill
  GalleryIcon(
    name: "money_pound_circle_fill",
    icon: CupertinoIcons.money_pound_circle_fill,
  ),
//  money_rubl
  GalleryIcon(
    name: "money_rubl",
    icon: CupertinoIcons.money_rubl,
  ),
//  money_rubl_circle
  GalleryIcon(
    name: "money_rubl_circle",
    icon: CupertinoIcons.money_rubl_circle,
  ),
//  money_rubl_circle_fill
  GalleryIcon(
    name: "money_rubl_circle_fill",
    icon: CupertinoIcons.money_rubl_circle_fill,
  ),
//  money_yen
  GalleryIcon(
    name: "money_yen",
    icon: CupertinoIcons.money_yen,
  ),
//  money_yen_circle
  GalleryIcon(
    name: "money_yen_circle",
    icon: CupertinoIcons.money_yen_circle,
  ),
//  money_yen_circle_fill
  GalleryIcon(
    name: "money_yen_circle_fill",
    icon: CupertinoIcons.money_yen_circle_fill,
  ),
//  moon
  GalleryIcon(
    name: "moon",
    icon: CupertinoIcons.moon,
  ),
//  moon_circle
  GalleryIcon(
    name: "moon_circle",
    icon: CupertinoIcons.moon_circle,
  ),
//  moon_circle_fill
  GalleryIcon(
    name: "moon_circle_fill",
    icon: CupertinoIcons.moon_circle_fill,
  ),
//  moon_fill
  GalleryIcon(
    name: "moon_fill",
    icon: CupertinoIcons.moon_fill,
  ),
//  moon_stars
  GalleryIcon(
    name: "moon_stars",
    icon: CupertinoIcons.moon_stars,
  ),
//  moon_stars_fill
  GalleryIcon(
    name: "moon_stars_fill",
    icon: CupertinoIcons.moon_stars_fill,
  ),
//  moon_zzz
  GalleryIcon(
    name: "moon_zzz",
    icon: CupertinoIcons.moon_zzz,
  ),
//  moon_zzz_fill
  GalleryIcon(
    name: "moon_zzz_fill",
    icon: CupertinoIcons.moon_zzz_fill,
  ),
//  move
  GalleryIcon(
    name: "move",
    icon: CupertinoIcons.move,
  ),
//  multiply
  GalleryIcon(
    name: "multiply",
    icon: CupertinoIcons.multiply,
  ),
//  multiply_circle
  GalleryIcon(
    name: "multiply_circle",
    icon: CupertinoIcons.multiply_circle,
  ),
//  multiply_circle_fill
  GalleryIcon(
    name: "multiply_circle_fill",
    icon: CupertinoIcons.multiply_circle_fill,
  ),
//  multiply_square
  GalleryIcon(
    name: "multiply_square",
    icon: CupertinoIcons.multiply_square,
  ),
//  multiply_square_fill
  GalleryIcon(
    name: "multiply_square_fill",
    icon: CupertinoIcons.multiply_square_fill,
  ),
//  music_albums
  GalleryIcon(
    name: "music_albums",
    icon: CupertinoIcons.music_albums,
  ),
//  music_albums_fill
  GalleryIcon(
    name: "music_albums_fill",
    icon: CupertinoIcons.music_albums_fill,
  ),
//  music_house
  GalleryIcon(
    name: "music_house",
    icon: CupertinoIcons.music_house,
  ),
//  music_house_fill
  GalleryIcon(
    name: "music_house_fill",
    icon: CupertinoIcons.music_house_fill,
  ),
//  music_mic
  GalleryIcon(
    name: "music_mic",
    icon: CupertinoIcons.music_mic,
  ),

//  music_note_2
  GalleryIcon(
    name: "music_note_2",
    icon: CupertinoIcons.music_note_2,
  ),
//  music_note_list
  GalleryIcon(
    name: "music_note_list",
    icon: CupertinoIcons.music_note_list,
  ),
//  nosign
  GalleryIcon(
    name: "nosign",
    icon: CupertinoIcons.nosign,
  ),
//  number
  GalleryIcon(
    name: "number",
    icon: CupertinoIcons.number,
  ),
//  number_circle
  GalleryIcon(
    name: "number_circle",
    icon: CupertinoIcons.number_circle,
  ),
//  number_circle_fill
  GalleryIcon(
    name: "number_circle_fill",
    icon: CupertinoIcons.number_circle_fill,
  ),
//  number_square
  GalleryIcon(
    name: "number_square",
    icon: CupertinoIcons.number_square,
  ),
//  number_square_fill
  GalleryIcon(
    name: "number_square_fill",
    icon: CupertinoIcons.number_square_fill,
  ),

//  option
  GalleryIcon(
    name: "option",
    icon: CupertinoIcons.option,
  ),
//  paintbrush
  GalleryIcon(
    name: "paintbrush",
    icon: CupertinoIcons.paintbrush,
  ),
//  paintbrush_fill
  GalleryIcon(
    name: "paintbrush_fill",
    icon: CupertinoIcons.paintbrush_fill,
  ),
//  pano
  GalleryIcon(
    name: "pano",
    icon: CupertinoIcons.pano,
  ),
//  pano_fill
  GalleryIcon(
    name: "pano_fill",
    icon: CupertinoIcons.pano_fill,
  ),
//  paperclip
  GalleryIcon(
    name: "paperclip",
    icon: CupertinoIcons.paperclip,
  ),
//  paperplane
  GalleryIcon(
    name: "paperplane",
    icon: CupertinoIcons.paperplane,
  ),
//  paperplane_fill
  GalleryIcon(
    name: "paperplane_fill",
    icon: CupertinoIcons.paperplane_fill,
  ),
//  paragraph
  GalleryIcon(
    name: "paragraph",
    icon: CupertinoIcons.paragraph,
  ),
//  pause_circle
  GalleryIcon(
    name: "pause_circle",
    icon: CupertinoIcons.pause_circle,
  ),
//  pause_circle_fill
  GalleryIcon(
    name: "pause_circle_fill",
    icon: CupertinoIcons.pause_circle_fill,
  ),

//  pause_fill
  GalleryIcon(
    name: "pause_fill",
    icon: CupertinoIcons.pause_fill,
  ),
//  pause_rectangle
  GalleryIcon(
    name: "pause_rectangle",
    icon: CupertinoIcons.pause_rectangle,
  ),
//  pause_rectangle_fill
  GalleryIcon(
    name: "pause_rectangle_fill",
    icon: CupertinoIcons.pause_rectangle_fill,
  ),
//  pencil_circle
  GalleryIcon(
    name: "pencil_circle",
    icon: CupertinoIcons.pencil_circle,
  ),
//  pencil_circle_fill
  GalleryIcon(
    name: "pencil_circle_fill",
    icon: CupertinoIcons.pencil_circle_fill,
  ),
//  pencil_ellipsis_rectangle
  GalleryIcon(
    name: "pencil_ellipsis_rectangle",
    icon: CupertinoIcons.pencil_ellipsis_rectangle,
  ),
//  pencil_outline
  GalleryIcon(
    name: "pencil_outline",
    icon: CupertinoIcons.pencil_outline,
  ),
//  pencil_slash
  GalleryIcon(
    name: "pencil_slash",
    icon: CupertinoIcons.pencil_slash,
  ),
//  percent
  GalleryIcon(
    name: "percent",
    icon: CupertinoIcons.percent,
  ),
//  person_2
  GalleryIcon(
    name: "person_2",
    icon: CupertinoIcons.person_2,
  ),
//  person_2_alt
  GalleryIcon(
    name: "person_2_alt",
    icon: CupertinoIcons.person_2_alt,
  ),
//  person_2_fill
  GalleryIcon(
    name: "person_2_fill",
    icon: CupertinoIcons.person_2_fill,
  ),
//  person_2_square_stack
  GalleryIcon(
    name: "person_2_square_stack",
    icon: CupertinoIcons.person_2_square_stack,
  ),
//  person_2_square_stack_fill
  GalleryIcon(
    name: "person_2_square_stack_fill",
    icon: CupertinoIcons.person_2_square_stack_fill,
  ),

//  person_3
  GalleryIcon(
    name: "person_3",
    icon: CupertinoIcons.person_3,
  ),

//  person_3_fill
  GalleryIcon(
    name: "person_3_fill",
    icon: CupertinoIcons.person_3_fill,
  ),
//  person_alt
  GalleryIcon(
    name: "person_alt",
    icon: CupertinoIcons.person_alt,
  ),
//  person_alt_circle
  GalleryIcon(
    name: "person_alt_circle",
    icon: CupertinoIcons.person_alt_circle,
  ),
//  person_alt_circle_fill
  GalleryIcon(
    name: "person_alt_circle_fill",
    icon: CupertinoIcons.person_alt_circle_fill,
  ),
//  person_badge_minus
  GalleryIcon(
    name: "person_badge_minus",
    icon: CupertinoIcons.person_badge_minus,
  ),
//  person_badge_minus_fill
  GalleryIcon(
    name: "person_badge_minus_fill",
    icon: CupertinoIcons.person_badge_minus_fill,
  ),

//  person_badge_plus
  GalleryIcon(
    name: "person_badge_plus",
    icon: CupertinoIcons.person_badge_plus,
  ),

//  person_badge_plus_fill
  GalleryIcon(
    name: "person_badge_plus_fill",
    icon: CupertinoIcons.person_badge_plus_fill,
  ),
//  person_circle
  GalleryIcon(
    name: "person_circle",
    icon: CupertinoIcons.person_circle,
  ),
//  person_circle_fill
  GalleryIcon(
    name: "person_circle_fill",
    icon: CupertinoIcons.person_circle_fill,
  ),

//  person_crop_circle
  GalleryIcon(
    name: "person_crop_circle",
    icon: CupertinoIcons.person_crop_circle,
  ),
//  person_crop_circle_badge_checkmark
  GalleryIcon(
    name: "person_crop_circle_badge_checkmark",
    icon: CupertinoIcons.person_crop_circle_badge_checkmark,
  ),
//  person_crop_circle_badge_exclam
  GalleryIcon(
    name: "person_crop_circle_badge_exclam",
    icon: CupertinoIcons.person_crop_circle_badge_exclam,
  ),
//  person_crop_circle_badge_minus
  GalleryIcon(
    name: "person_crop_circle_badge_minus",
    icon: CupertinoIcons.person_crop_circle_badge_minus,
  ),
//  person_crop_circle_badge_plus
  GalleryIcon(
    name: "person_crop_circle_badge_plus",
    icon: CupertinoIcons.person_crop_circle_badge_plus,
  ),
//  person_crop_circle_badge_xmark
  GalleryIcon(
    name: "person_crop_circle_badge_xmark",
    icon: CupertinoIcons.person_crop_circle_badge_xmark,
  ),
//  person_crop_circle_fill
  GalleryIcon(
    name: "person_crop_circle_fill",
    icon: CupertinoIcons.person_crop_circle_fill,
  ),
//  person_crop_circle_fill_badge_checkmark
  GalleryIcon(
    name: "person_crop_circle_fill_badge_checkmark",
    icon: CupertinoIcons.person_crop_circle_fill_badge_checkmark,
  ),
//  person_crop_circle_fill_badge_exclam
  GalleryIcon(
    name: "person_crop_circle_fill_badge_exclam",
    icon: CupertinoIcons.person_crop_circle_fill_badge_exclam,
  ),
//  person_crop_circle_fill_badge_minus
  GalleryIcon(
    name: "person_crop_circle_fill_badge_minus",
    icon: CupertinoIcons.person_crop_circle_fill_badge_minus,
  ),
//  person_crop_circle_fill_badge_plus
  GalleryIcon(
    name: "person_crop_circle_fill_badge_plus",
    icon: CupertinoIcons.person_crop_circle_fill_badge_plus,
  ),
//  person_crop_circle_fill_badge_xmark
  GalleryIcon(
    name: "person_crop_circle_fill_badge_xmark",
    icon: CupertinoIcons.person_crop_circle_fill_badge_xmark,
  ),
//  person_crop_rectangle
  GalleryIcon(
    name: "person_crop_rectangle",
    icon: CupertinoIcons.person_crop_rectangle,
  ),
//  person_crop_rectangle_fill
  GalleryIcon(
    name: "person_crop_rectangle_fill",
    icon: CupertinoIcons.person_crop_rectangle_fill,
  ),
//  person_crop_square
  GalleryIcon(
    name: "person_crop_square",
    icon: CupertinoIcons.person_crop_square,
  ),
//  person_crop_square_fill
  GalleryIcon(
    name: "person_crop_square_fill",
    icon: CupertinoIcons.person_crop_square_fill,
  ),

//  person_fill
  GalleryIcon(
    name: "person_fill",
    icon: CupertinoIcons.person_fill,
  ),
//  personalhotspot
  GalleryIcon(
    name: "personalhotspot",
    icon: CupertinoIcons.personalhotspot,
  ),
//  perspective
  GalleryIcon(
    name: "perspective",
    icon: CupertinoIcons.perspective,
  ),
//  phone_arrow_down_left
  GalleryIcon(
    name: "phone_arrow_down_left",
    icon: CupertinoIcons.phone_arrow_down_left,
  ),
//  phone_arrow_right
  GalleryIcon(
    name: "phone_arrow_right",
    icon: CupertinoIcons.phone_arrow_right,
  ),
//  phone_arrow_up_right
  GalleryIcon(
    name: "phone_arrow_up_right",
    icon: CupertinoIcons.phone_arrow_up_right,
  ),
//  phone_badge_plus
  GalleryIcon(
    name: "phone_badge_plus",
    icon: CupertinoIcons.phone_badge_plus,
  ),
//  phone_circle
  GalleryIcon(
    name: "phone_circle",
    icon: CupertinoIcons.phone_circle,
  ),
//  phone_circle_fill
  GalleryIcon(
    name: "phone_circle_fill",
    icon: CupertinoIcons.phone_circle_fill,
  ),
//  phone_down
  GalleryIcon(
    name: "phone_down",
    icon: CupertinoIcons.phone_down,
  ),
//  phone_down_circle
  GalleryIcon(
    name: "phone_down_circle",
    icon: CupertinoIcons.phone_down_circle,
  ),
//  phone_down_circle_fill
  GalleryIcon(
    name: "phone_down_circle_fill",
    icon: CupertinoIcons.phone_down_circle_fill,
  ),
//  phone_down_fill
  GalleryIcon(
    name: "phone_down_fill",
    icon: CupertinoIcons.phone_down_fill,
  ),

//  phone_fill
  GalleryIcon(
    name: "phone_fill",
    icon: CupertinoIcons.phone_fill,
  ),
//  phone_fill_arrow_down_left
  GalleryIcon(
    name: "phone_fill_arrow_down_left",
    icon: CupertinoIcons.phone_fill_arrow_down_left,
  ),
//  phone_fill_arrow_right
  GalleryIcon(
    name: "phone_fill_arrow_right",
    icon: CupertinoIcons.phone_fill_arrow_right,
  ),
//  phone_fill_arrow_up_right
  GalleryIcon(
    name: "phone_fill_arrow_up_right",
    icon: CupertinoIcons.phone_fill_arrow_up_right,
  ),
//  phone_fill_badge_plus
  GalleryIcon(
    name: "phone_fill_badge_plus",
    icon: CupertinoIcons.phone_fill_badge_plus,
  ),
//  photo
  GalleryIcon(
    name: "photo",
    icon: CupertinoIcons.photo,
  ),
//  photo_fill
  GalleryIcon(
    name: "photo_fill",
    icon: CupertinoIcons.photo_fill,
  ),
//  photo_fill_on_rectangle_fill
  GalleryIcon(
    name: "photo_fill_on_rectangle_fill",
    icon: CupertinoIcons.photo_fill_on_rectangle_fill,
  ),
//  photo_on_rectangle
  GalleryIcon(
    name: "photo_on_rectangle",
    icon: CupertinoIcons.photo_on_rectangle,
  ),
//  piano
  GalleryIcon(
    name: "piano",
    icon: CupertinoIcons.piano,
  ),
//  pin
  GalleryIcon(
    name: "pin",
    icon: CupertinoIcons.pin,
  ),
//  pin_fill
  GalleryIcon(
    name: "pin_fill",
    icon: CupertinoIcons.pin_fill,
  ),
//  pin_slash
  GalleryIcon(
    name: "pin_slash",
    icon: CupertinoIcons.pin_slash,
  ),
//  pin_slash_fill
  GalleryIcon(
    name: "pin_slash_fill",
    icon: CupertinoIcons.pin_slash_fill,
  ),

//  placemark
  GalleryIcon(
    name: "placemark",
    icon: CupertinoIcons.placemark,
  ),

//  placemark_fill
  GalleryIcon(
    name: "placemark_fill",
    icon: CupertinoIcons.placemark_fill,
  ),

//  play
  GalleryIcon(
    name: "play",
    icon: CupertinoIcons.play,
  ),
//  play_circle
  GalleryIcon(
    name: "play_circle",
    icon: CupertinoIcons.play_circle,
  ),
//  play_circle_fill
  GalleryIcon(
    name: "play_circle_fill",
    icon: CupertinoIcons.play_circle_fill,
  ),

//  play_fill
  GalleryIcon(
    name: "play_fill",
    icon: CupertinoIcons.play_fill,
  ),

//  play_rectangle
  GalleryIcon(
    name: "play_rectangle",
    icon: CupertinoIcons.play_rectangle,
  ),
//  play_rectangle_fill
  GalleryIcon(
    name: "play_rectangle_fill",
    icon: CupertinoIcons.play_rectangle_fill,
  ),
//  playpause
  GalleryIcon(
    name: "playpause",
    icon: CupertinoIcons.playpause,
  ),
//  playpause_fill
  GalleryIcon(
    name: "playpause_fill",
    icon: CupertinoIcons.playpause_fill,
  ),

//  plus
  GalleryIcon(
    name: "plus",
    icon: CupertinoIcons.plus,
  ),
//  plus_app
  GalleryIcon(
    name: "plus_app",
    icon: CupertinoIcons.plus_app,
  ),
//  plus_app_fill
  GalleryIcon(
    name: "plus_app_fill",
    icon: CupertinoIcons.plus_app_fill,
  ),
//  plus_bubble
  GalleryIcon(
    name: "plus_bubble",
    icon: CupertinoIcons.plus_bubble,
  ),
//  plus_bubble_fill
  GalleryIcon(
    name: "plus_bubble_fill",
    icon: CupertinoIcons.plus_bubble_fill,
  ),

//  plus_circle
  GalleryIcon(
    name: "plus_circle",
    icon: CupertinoIcons.plus_circle,
  ),

//  plus_circle_fill
  GalleryIcon(
    name: "plus_circle_fill",
    icon: CupertinoIcons.plus_circle_fill,
  ),
//  plus_rectangle
  GalleryIcon(
    name: "plus_rectangle",
    icon: CupertinoIcons.plus_rectangle,
  ),
//  plus_rectangle_fill
  GalleryIcon(
    name: "plus_rectangle_fill",
    icon: CupertinoIcons.plus_rectangle_fill,
  ),
//  plus_rectangle_fill_on_rectangle_fill
  GalleryIcon(
    name: "plus_rectangle_fill_on_rectangle_fill",
    icon: CupertinoIcons.plus_rectangle_fill_on_rectangle_fill,
  ),
//  plus_rectangle_on_rectangle
  GalleryIcon(
    name: "plus_rectangle_on_rectangle",
    icon: CupertinoIcons.plus_rectangle_on_rectangle,
  ),
//  plus_slash_minus
  GalleryIcon(
    name: "plus_slash_minus",
    icon: CupertinoIcons.plus_slash_minus,
  ),
//  plus_square
  GalleryIcon(
    name: "plus_square",
    icon: CupertinoIcons.plus_square,
  ),
//  plus_square_fill
  GalleryIcon(
    name: "plus_square_fill",
    icon: CupertinoIcons.plus_square_fill,
  ),
//  plus_square_fill_on_square_fill
  GalleryIcon(
    name: "plus_square_fill_on_square_fill",
    icon: CupertinoIcons.plus_square_fill_on_square_fill,
  ),
//  plus_square_on_square
  GalleryIcon(
    name: "plus_square_on_square",
    icon: CupertinoIcons.plus_square_on_square,
  ),
//  plusminus
  GalleryIcon(
    name: "plusminus",
    icon: CupertinoIcons.plusminus,
  ),
//  plusminus_circle
  GalleryIcon(
    name: "plusminus_circle",
    icon: CupertinoIcons.plusminus_circle,
  ),
//  plusminus_circle_fill
  GalleryIcon(
    name: "plusminus_circle_fill",
    icon: CupertinoIcons.plusminus_circle_fill,
  ),
//  power
  GalleryIcon(
    name: "power",
    icon: CupertinoIcons.power,
  ),
//  printer
  GalleryIcon(
    name: "printer",
    icon: CupertinoIcons.printer,
  ),
//  printer_fill
  GalleryIcon(
    name: "printer_fill",
    icon: CupertinoIcons.printer_fill,
  ),
//  projective
  GalleryIcon(
    name: "projective",
    icon: CupertinoIcons.projective,
  ),
//  purchased

  GalleryIcon(
    name: "purchased",
    icon: CupertinoIcons.purchased,
  ),
//  purchased_circle
  GalleryIcon(
    name: "purchased_circle",
    icon: CupertinoIcons.purchased_circle,
  ),
//  purchased_circle_fill
  GalleryIcon(
    name: "purchased_circle_fill",
    icon: CupertinoIcons.purchased_circle_fill,
  ),
//  qrcode
  GalleryIcon(
    name: "qrcode",
    icon: CupertinoIcons.qrcode,
  ),
//  qrcode_viewfinder
  GalleryIcon(
    name: "qrcode_viewfinder",
    icon: CupertinoIcons.qrcode_viewfinder,
  ),
//  question
  GalleryIcon(
    name: "question",
    icon: CupertinoIcons.question,
  ),
//  question_circle
  GalleryIcon(
    name: "question_circle",
    icon: CupertinoIcons.question_circle,
  ),
//  question_circle_fill
  GalleryIcon(
    name: "question_circle_fill",
    icon: CupertinoIcons.question_circle_fill,
  ),
//  question_diamond
  GalleryIcon(
    name: "question_diamond",
    icon: CupertinoIcons.question_diamond,
  ),
//  question_diamond_fill
  GalleryIcon(
    name: "question_diamond_fill",
    icon: CupertinoIcons.question_diamond_fill,
  ),
//  question_square
  GalleryIcon(
    name: "question_square",
    icon: CupertinoIcons.question_square,
  ),
//  question_square_fill
  GalleryIcon(
    name: "question_square_fill",
    icon: CupertinoIcons.question_square_fill,
  ),
//  quote_bubble
  GalleryIcon(
    name: "quote_bubble",
    icon: CupertinoIcons.quote_bubble,
  ),
//  quote_bubble_fill
  GalleryIcon(
    name: "quote_bubble_fill",
    icon: CupertinoIcons.quote_bubble_fill,
  ),
//  radiowaves_left
  GalleryIcon(
    name: "radiowaves_left",
    icon: CupertinoIcons.radiowaves_left,
  ),
//  radiowaves_right
  GalleryIcon(
    name: "radiowaves_right",
    icon: CupertinoIcons.radiowaves_right,
  ),
//  rays
  GalleryIcon(
    name: "rays",
    icon: CupertinoIcons.rays,
  ),
//  recordingtape
  GalleryIcon(
    name: "recordingtape",
    icon: CupertinoIcons.recordingtape,
  ),
//  rectangle
  GalleryIcon(
    name: "rectangle",
    icon: CupertinoIcons.rectangle,
  ),
//  rectangle_3_offgrid
  GalleryIcon(
    name: "rectangle_3_offgrid",
    icon: CupertinoIcons.rectangle_3_offgrid,
  ),
//  rectangle_3_offgrid_fill
  GalleryIcon(
    name: "rectangle_3_offgrid_fill",
    icon: CupertinoIcons.rectangle_3_offgrid_fill,
  ),
//  rectangle_arrow_up_right_arrow_down_left
  GalleryIcon(
    name: "rectangle_arrow_up_right_arrow_down_left",
    icon: CupertinoIcons.rectangle_arrow_up_right_arrow_down_left,
  ),
//  rectangle_arrow_up_right_arrow_down_left_slash
  GalleryIcon(
    name: "rectangle_arrow_up_right_arrow_down_left_slash",
    icon: CupertinoIcons.rectangle_arrow_up_right_arrow_down_left_slash,
  ),
//  rectangle_badge_checkmark
  GalleryIcon(
    name: "rectangle_badge_checkmark",
    icon: CupertinoIcons.rectangle_badge_checkmark,
  ),
//  rectangle_badge_xmark
  GalleryIcon(
    name: "rectangle_badge_xmark",
    icon: CupertinoIcons.rectangle_badge_xmark,
  ),
//  rectangle_compress_vertical
  GalleryIcon(
    name: "rectangle_compress_vertical",
    icon: CupertinoIcons.rectangle_compress_vertical,
  ),
//  rectangle_dock
  GalleryIcon(
    name: "rectangle_dock",
    icon: CupertinoIcons.rectangle_dock,
  ),
//  rectangle_expand_vertical
  GalleryIcon(
    name: "rectangle_expand_vertical",
    icon: CupertinoIcons.rectangle_expand_vertical,
  ),
//  rectangle_fill
  GalleryIcon(
    name: "rectangle_fill",
    icon: CupertinoIcons.rectangle_fill,
  ),
//  rectangle_fill_badge_checkmark
  GalleryIcon(
    name: "rectangle_fill_badge_checkmark",
    icon: CupertinoIcons.rectangle_fill_badge_checkmark,
  ),
//  rectangle_fill_badge_xmark
  GalleryIcon(
    name: "rectangle_fill_badge_xmark",
    icon: CupertinoIcons.rectangle_fill_badge_xmark,
  ),
//  rectangle_fill_on_rectangle_angled_fill
  GalleryIcon(
    name: "rectangle_fill_on_rectangle_angled_fill",
    icon: CupertinoIcons.rectangle_fill_on_rectangle_angled_fill,
  ),
//  rectangle_fill_on_rectangle_fill
  GalleryIcon(
    name: "rectangle_fill_on_rectangle_fill",
    icon: CupertinoIcons.rectangle_fill_on_rectangle_fill,
  ),
//  rectangle_grid_1x2
  GalleryIcon(
    name: "rectangle_grid_1x2",
    icon: CupertinoIcons.rectangle_grid_1x2,
  ),
//  rectangle_grid_1x2_fill
  GalleryIcon(
    name: "rectangle_grid_1x2_fill",
    icon: CupertinoIcons.rectangle_grid_1x2_fill,
  ),
//  rectangle_grid_2x2
  GalleryIcon(
    name: "rectangle_grid_2x2",
    icon: CupertinoIcons.rectangle_grid_2x2,
  ),
//  rectangle_grid_2x2_fill
  GalleryIcon(
    name: "rectangle_grid_2x2_fill",
    icon: CupertinoIcons.rectangle_grid_2x2_fill,
  ),
//  rectangle_grid_3x2
  GalleryIcon(
    name: "rectangle_grid_3x2",
    icon: CupertinoIcons.rectangle_grid_3x2,
  ),
//  rectangle_grid_3x2_fill
  GalleryIcon(
    name: "rectangle_grid_3x2_fill",
    icon: CupertinoIcons.rectangle_grid_3x2_fill,
  ),
//  rectangle_on_rectangle
  GalleryIcon(
    name: "rectangle_on_rectangle",
    icon: CupertinoIcons.rectangle_on_rectangle,
  ),
//  rectangle_on_rectangle_angled
  GalleryIcon(
    name: "rectangle_on_rectangle_angled",
    icon: CupertinoIcons.rectangle_on_rectangle_angled,
  ),
//  rectangle_paperclip
  GalleryIcon(
    name: "rectangle_paperclip",
    icon: CupertinoIcons.rectangle_paperclip,
  ),
//  rectangle_split_3x1
  GalleryIcon(
    name: "rectangle_split_3x1",
    icon: CupertinoIcons.rectangle_split_3x1,
  ),
//  rectangle_split_3x1_fill
  GalleryIcon(
    name: "rectangle_split_3x1_fill",
    icon: CupertinoIcons.rectangle_split_3x1_fill,
  ),
//  rectangle_split_3x3
  GalleryIcon(
    name: "rectangle_split_3x3",
    icon: CupertinoIcons.rectangle_split_3x3,
  ),
//  rectangle_split_3x3_fill
  GalleryIcon(
    name: "rectangle_split_3x3_fill",
    icon: CupertinoIcons.rectangle_split_3x3_fill,
  ),

//  rectangle_stack
  GalleryIcon(
    name: "rectangle_stack",
    icon: CupertinoIcons.rectangle_stack,
  ),
//  rectangle_stack_badge_minus
  GalleryIcon(
    name: "rectangle_stack_badge_minus",
    icon: CupertinoIcons.rectangle_stack_badge_minus,
  ),
//  rectangle_stack_badge_person_crop
  GalleryIcon(
    name: "rectangle_stack_badge_person_crop",
    icon: CupertinoIcons.rectangle_stack_badge_person_crop,
  ),
//  rectangle_stack_badge_plus
  GalleryIcon(
    name: "rectangle_stack_badge_plus",
    icon: CupertinoIcons.rectangle_stack_badge_plus,
  ),

//  rectangle_stack_fill
  GalleryIcon(
    name: "rectangle_stack_fill",
    icon: CupertinoIcons.rectangle_stack_fill,
  ),

//  rectangle_stack_fill_badge_minus
  GalleryIcon(
    name: "rectangle_stack_fill_badge_minus",
    icon: CupertinoIcons.rectangle_stack_fill_badge_minus,
  ),
//  rectangle_stack_fill_badge_person_crop
  GalleryIcon(
    name: "rectangle_stack_fill_badge_person_crop",
    icon: CupertinoIcons.rectangle_stack_fill_badge_person_crop,
  ),
//  rectangle_stack_fill_badge_plus
  GalleryIcon(
    name: "rectangle_stack_fill_badge_plus",
    icon: CupertinoIcons.rectangle_stack_fill_badge_plus,
  ),
//  rectangle_stack_person_crop
  GalleryIcon(
    name: "rectangle_stack_person_crop",
    icon: CupertinoIcons.rectangle_stack_person_crop,
  ),
//  rectangle_stack_person_crop_fill
  GalleryIcon(
    name: "rectangle_stack_person_crop_fill",
    icon: CupertinoIcons.rectangle_stack_person_crop_fill,
  ),
//  repeat
  GalleryIcon(
    name: "repeat",
    icon: CupertinoIcons.repeat,
  ),
//  repeat_1
  GalleryIcon(
    name: "repeat_1",
    icon: CupertinoIcons.repeat_1,
  ),
//  resize
  GalleryIcon(
    name: "resize",
    icon: CupertinoIcons.resize,
  ),
//  resize_h
  GalleryIcon(
    name: "resize_h",
    icon: CupertinoIcons.resize_h,
  ),
//  resize_v
  GalleryIcon(
    name: "resize_v",
    icon: CupertinoIcons.resize_v,
  ),
//  return_icon
  GalleryIcon(
    name: "return_icon",
    icon: CupertinoIcons.return_icon,
  ),
//  rhombus
  GalleryIcon(
    name: "rhombus",
    icon: CupertinoIcons.rhombus,
  ),
//  rhombus_fill
  GalleryIcon(
    name: "rhombus_fill",
    icon: CupertinoIcons.rhombus_fill,
  ),
//  rocket
  GalleryIcon(
    name: "rocket",
    icon: CupertinoIcons.rocket,
  ),

//  rocket_fill
  GalleryIcon(
    name: "rocket_fill",
    icon: CupertinoIcons.rocket_fill,
  ),
//  rosette
  GalleryIcon(
    name: "rosette",
    icon: CupertinoIcons.rosette,
  ),
//  rotate_left
  GalleryIcon(
    name: "rotate_left",
    icon: CupertinoIcons.rotate_left,
  ),
//  rotate_left_fill
  GalleryIcon(
    name: "rotate_left_fill",
    icon: CupertinoIcons.rotate_left_fill,
  ),
//  rotate_right
  GalleryIcon(
    name: "rotate_right",
    icon: CupertinoIcons.rotate_right,
  ),
//  rotate_right_fill
  GalleryIcon(
    name: "rotate_right_fill",
    icon: CupertinoIcons.rotate_right_fill,
  ),
//  scissors
  GalleryIcon(
    name: "scissors",
    icon: CupertinoIcons.scissors,
  ),
//  scissors_alt
  GalleryIcon(
    name: "scissors_alt",
    icon: CupertinoIcons.scissors_alt,
  ),
//  scope
  GalleryIcon(
    name: "scope",
    icon: CupertinoIcons.scope,
  ),
//  scribble
  GalleryIcon(
    name: "scribble",
    icon: CupertinoIcons.scribble,
  ),
//  search_circle
  GalleryIcon(
    name: "search_circle",
    icon: CupertinoIcons.search_circle,
  ),
//  search_circle_fill
  GalleryIcon(
    name: "search_circle_fill",
    icon: CupertinoIcons.search_circle_fill,
  ),
//  selection_pin_in_out
  GalleryIcon(
    name: "selection_pin_in_out",
    icon: CupertinoIcons.selection_pin_in_out,
  ),
//  shield
  GalleryIcon(
    name: "shield",
    icon: CupertinoIcons.shield,
  ),
//  shield_fill
  GalleryIcon(
    name: "shield_fill",
    icon: CupertinoIcons.shield_fill,
  ),
//  shield_lefthalf_fill
  GalleryIcon(
    name: "shield_lefthalf_fill",
    icon: CupertinoIcons.shield_lefthalf_fill,
  ),
//  shield_slash
  GalleryIcon(
    name: "shield_slash",
    icon: CupertinoIcons.shield_slash,
  ),
//  shield_slash_fill
  GalleryIcon(
    name: "shield_slash_fill",
    icon: CupertinoIcons.shield_slash_fill,
  ),
//  shift
  GalleryIcon(
    name: "shift",
    icon: CupertinoIcons.shift,
  ),
//  shift_fill
  GalleryIcon(
    name: "shift_fill",
    icon: CupertinoIcons.shift_fill,
  ),
//  sidebar_left
  GalleryIcon(
    name: "sidebar_left",
    icon: CupertinoIcons.sidebar_left,
  ),
//  sidebar_right
  GalleryIcon(
    name: "sidebar_right",
    icon: CupertinoIcons.sidebar_right,
  ),
//  signature
  GalleryIcon(
    name: "signature",
    icon: CupertinoIcons.signature,
  ),
//  skew
  GalleryIcon(
    name: "skew",
    icon: CupertinoIcons.skew,
  ),
//  slash_circle
  GalleryIcon(
    name: "slash_circle",
    icon: CupertinoIcons.slash_circle,
  ),
//  slash_circle_fill
  GalleryIcon(
    name: "slash_circle_fill",
    icon: CupertinoIcons.slash_circle_fill,
  ),
//  slider_horizontal_3
  GalleryIcon(
    name: "slider_horizontal_3",
    icon: CupertinoIcons.slider_horizontal_3,
  ),
//  slider_horizontal_below_rectangle
  GalleryIcon(
    name: "slider_horizontal_below_rectangle",
    icon: CupertinoIcons.slider_horizontal_below_rectangle,
  ),
//  slowmo
  GalleryIcon(
    name: "slowmo",
    icon: CupertinoIcons.slowmo,
  ),
//  smallcircle_circle
  GalleryIcon(
    name: "smallcircle_circle",
    icon: CupertinoIcons.smallcircle_circle,
  ),
//  smallcircle_circle_fill
  GalleryIcon(
    name: "smallcircle_circle_fill",
    icon: CupertinoIcons.smallcircle_circle_fill,
  ),
//  smallcircle_fill_circle
  GalleryIcon(
    name: "smallcircle_fill_circle",
    icon: CupertinoIcons.smallcircle_fill_circle,
  ),
//  smallcircle_fill_circle_fill
  GalleryIcon(
    name: "smallcircle_fill_circle_fill",
    icon: CupertinoIcons.smallcircle_fill_circle_fill,
  ),
//  smiley
  GalleryIcon(
    name: "smiley",
    icon: CupertinoIcons.smiley,
  ),
//  smiley_fill
  GalleryIcon(
    name: "smiley_fill",
    icon: CupertinoIcons.smiley_fill,
  ),
//  smoke
  GalleryIcon(
    name: "smoke",
    icon: CupertinoIcons.smoke,
  ),
//  smoke_fill
  GalleryIcon(
    name: "smoke_fill",
    icon: CupertinoIcons.smoke_fill,
  ),
//  snow
  GalleryIcon(
    name: "snow",
    icon: CupertinoIcons.snow,
  ),
//  sort_down
  GalleryIcon(
    name: "sort_down",
    icon: CupertinoIcons.sort_down,
  ),
//  sort_down_circle
  GalleryIcon(
    name: "sort_down_circle",
    icon: CupertinoIcons.sort_down_circle,
  ),
//  sort_down_circle_fill
  GalleryIcon(
    name: "sort_down_circle_fill",
    icon: CupertinoIcons.sort_down_circle_fill,
  ),
//  sort_up
  GalleryIcon(
    name: "sort_up",
    icon: CupertinoIcons.sort_up,
  ),
//  sort_up_circle
  GalleryIcon(
    name: "sort_up_circle",
    icon: CupertinoIcons.sort_up_circle,
  ),
//  sort_up_circle_fill
  GalleryIcon(
    name: "sort_up_circle_fill",
    icon: CupertinoIcons.sort_up_circle_fill,
  ),
//  sparkles
  GalleryIcon(
    name: "sparkles",
    icon: CupertinoIcons.sparkles,
  ),
//  speaker
  GalleryIcon(
    name: "speaker",
    icon: CupertinoIcons.speaker,
  ),
//  speaker_1
  GalleryIcon(
    name: "speaker_1",
    icon: CupertinoIcons.speaker_1,
  ),

//  speaker_1_fill
  GalleryIcon(
    name: "speaker_1_fill",
    icon: CupertinoIcons.speaker_1_fill,
  ),
//  speaker_2
  GalleryIcon(
    name: "speaker_2",
    icon: CupertinoIcons.speaker_2,
  ),
//  speaker_2_fill
  GalleryIcon(
    name: "speaker_2_fill",
    icon: CupertinoIcons.speaker_2_fill,
  ),
//  speaker_3
  GalleryIcon(
    name: "speaker_3",
    icon: CupertinoIcons.speaker_3,
  ),

//  speaker_3_fill
  GalleryIcon(
    name: "speaker_3_fill",
    icon: CupertinoIcons.speaker_3_fill,
  ),

//  speaker_fill
  GalleryIcon(
    name: "speaker_fill",
    icon: CupertinoIcons.speaker_fill,
  ),
//  speaker_slash
  GalleryIcon(
    name: "speaker_slash",
    icon: CupertinoIcons.speaker_slash,
  ),

//  speaker_slash_fill
  GalleryIcon(
    name: "speaker_slash_fill",
    icon: CupertinoIcons.speaker_slash_fill,
  ),

//  speaker_slash_fill_rtl
  GalleryIcon(
    name: "speaker_slash_fill_rtl",
    icon: CupertinoIcons.speaker_slash_fill_rtl,
  ),
//  speaker_slash_rtl
  GalleryIcon(
    name: "speaker_slash_rtl",
    icon: CupertinoIcons.speaker_slash_rtl,
  ),
//  speaker_zzz
  GalleryIcon(
    name: "speaker_zzz",
    icon: CupertinoIcons.speaker_zzz,
  ),
//  speaker_zzz_fill
  GalleryIcon(
    name: "speaker_zzz_fill",
    icon: CupertinoIcons.speaker_zzz_fill,
  ),
//  speaker_zzz_fill_rtl
  GalleryIcon(
    name: "speaker_zzz_fill_rtl",
    icon: CupertinoIcons.speaker_zzz_fill_rtl,
  ),
//  speaker_zzz_rtl
  GalleryIcon(
    name: "speaker_zzz_rtl",
    icon: CupertinoIcons.speaker_zzz_rtl,
  ),
//  speedometer
  GalleryIcon(
    name: "speedometer",
    icon: CupertinoIcons.speedometer,
  ),
//  sportscourt
  GalleryIcon(
    name: "sportscourt",
    icon: CupertinoIcons.sportscourt,
  ),
//  sportscourt_fill
  GalleryIcon(
    name: "sportscourt_fill",
    icon: CupertinoIcons.sportscourt_fill,
  ),
//  square
  GalleryIcon(
    name: "square",
    icon: CupertinoIcons.square,
  ),
//  square_arrow_down
  GalleryIcon(
    name: "square_arrow_down",
    icon: CupertinoIcons.square_arrow_down,
  ),
//  square_arrow_down_fill
  GalleryIcon(
    name: "square_arrow_down_fill",
    icon: CupertinoIcons.square_arrow_down_fill,
  ),
//  square_arrow_down_on_square
  GalleryIcon(
    name: "square_arrow_down_on_square",
    icon: CupertinoIcons.square_arrow_down_on_square,
  ),
//  square_arrow_down_on_square_fill
  GalleryIcon(
    name: "square_arrow_down_on_square_fill",
    icon: CupertinoIcons.square_arrow_down_on_square_fill,
  ),
//  square_arrow_left
  GalleryIcon(
    name: "square_arrow_left",
    icon: CupertinoIcons.square_arrow_left,
  ),
//  square_arrow_left_fill
  GalleryIcon(
    name: "square_arrow_left_fill",
    icon: CupertinoIcons.square_arrow_left_fill,
  ),
//  square_arrow_right
  GalleryIcon(
    name: "square_arrow_right",
    icon: CupertinoIcons.square_arrow_right,
  ),
//  square_arrow_right_fill
  GalleryIcon(
    name: "square_arrow_right_fill",
    icon: CupertinoIcons.square_arrow_right_fill,
  ),

//  square_arrow_up
  GalleryIcon(
    name: "square_arrow_up",
    icon: CupertinoIcons.square_arrow_up,
  ),

//  square_arrow_up_fill
  GalleryIcon(
    name: "square_arrow_up_fill",
    icon: CupertinoIcons.square_arrow_up_fill,
  ),
//  square_arrow_up_on_square
  GalleryIcon(
    name: "square_arrow_up_on_square",
    icon: CupertinoIcons.square_arrow_up_on_square,
  ),
//  square_arrow_up_on_square_fill
  GalleryIcon(
    name: "square_arrow_up_on_square_fill",
    icon: CupertinoIcons.square_arrow_up_on_square_fill,
  ),
//  square_favorites
  GalleryIcon(
    name: "square_favorites",
    icon: CupertinoIcons.square_favorites,
  ),
//  square_favorites_alt
  GalleryIcon(
    name: "square_favorites_alt",
    icon: CupertinoIcons.square_favorites_alt,
  ),
//  square_favorites_alt_fill
  GalleryIcon(
    name: "square_favorites_alt_fill",
    icon: CupertinoIcons.square_favorites_alt_fill,
  ),
//  square_favorites_fill
  GalleryIcon(
    name: "square_favorites_fill",
    icon: CupertinoIcons.square_favorites_fill,
  ),
//  square_fill
  GalleryIcon(
    name: "square_fill",
    icon: CupertinoIcons.square_fill,
  ),
//  square_fill_line_vertical_square
  GalleryIcon(
    name: "square_fill_line_vertical_square",
    icon: CupertinoIcons.square_fill_line_vertical_square,
  ),
//  square_fill_line_vertical_square_fill
  GalleryIcon(
    name: "square_fill_line_vertical_square_fill",
    icon: CupertinoIcons.square_fill_line_vertical_square_fill,
  ),
//  square_fill_on_circle_fill
  GalleryIcon(
    name: "square_fill_on_circle_fill",
    icon: CupertinoIcons.square_fill_on_circle_fill,
  ),
//  square_fill_on_square_fill
  GalleryIcon(
    name: "square_fill_on_square_fill",
    icon: CupertinoIcons.square_fill_on_square_fill,
  ),
//  square_grid_2x2
  GalleryIcon(
    name: "square_grid_2x2",
    icon: CupertinoIcons.square_grid_2x2,
  ),
//  square_grid_2x2_fill
  GalleryIcon(
    name: "square_grid_2x2_fill",
    icon: CupertinoIcons.square_grid_2x2_fill,
  ),
//  square_grid_3x2
  GalleryIcon(
    name: "square_grid_3x2",
    icon: CupertinoIcons.square_grid_3x2,
  ),
//  square_grid_3x2_fill
  GalleryIcon(
    name: "square_grid_3x2_fill",
    icon: CupertinoIcons.square_grid_3x2_fill,
  ),
//  square_grid_4x3_fill
  GalleryIcon(
    name: "square_grid_4x3_fill",
    icon: CupertinoIcons.square_grid_4x3_fill,
  ),
//  square_lefthalf_fill
  GalleryIcon(
    name: "square_lefthalf_fill",
    icon: CupertinoIcons.square_lefthalf_fill,
  ),
//  square_line_vertical_square
  GalleryIcon(
    name: "square_line_vertical_square",
    icon: CupertinoIcons.square_line_vertical_square,
  ),
//  square_line_vertical_square_fill
  GalleryIcon(
    name: "square_line_vertical_square_fill",
    icon: CupertinoIcons.square_line_vertical_square_fill,
  ),
//  square_list
  GalleryIcon(
    name: "square_list",
    icon: CupertinoIcons.square_list,
  ),
//  square_list_fill
  GalleryIcon(
    name: "square_list_fill",
    icon: CupertinoIcons.square_list_fill,
  ),
//  square_on_circle
  GalleryIcon(
    name: "square_on_circle",
    icon: CupertinoIcons.square_on_circle,
  ),
//  square_on_square
  GalleryIcon(
    name: "square_on_square",
    icon: CupertinoIcons.square_on_square,
  ),

//  square_pencil
  GalleryIcon(
    name: "square_pencil",
    icon: CupertinoIcons.square_pencil,
  ),

//  square_pencil_fill
  GalleryIcon(
    name: "square_pencil_fill",
    icon: CupertinoIcons.square_pencil_fill,
  ),
//  square_righthalf_fill
  GalleryIcon(
    name: "square_righthalf_fill",
    icon: CupertinoIcons.square_righthalf_fill,
  ),
//  square_split_1x2
  GalleryIcon(
    name: "square_split_1x2",
    icon: CupertinoIcons.square_split_1x2,
  ),
//  square_split_1x2_fill
  GalleryIcon(
    name: "square_split_1x2_fill",
    icon: CupertinoIcons.square_split_1x2_fill,
  ),
//  square_split_2x1
  GalleryIcon(
    name: "square_split_2x1",
    icon: CupertinoIcons.square_split_2x1,
  ),
//  square_split_2x1_fill
  GalleryIcon(
    name: "square_split_2x1_fill",
    icon: CupertinoIcons.square_split_2x1_fill,
  ),
//  square_split_2x2
  GalleryIcon(
    name: "square_split_2x2",
    icon: CupertinoIcons.square_split_2x2,
  ),
//  square_split_2x2_fill
  GalleryIcon(
    name: "square_split_2x2_fill",
    icon: CupertinoIcons.square_split_2x2_fill,
  ),
//  square_stack
  GalleryIcon(
    name: "square_stack",
    icon: CupertinoIcons.square_stack,
  ),
//  square_stack_3d_down_dottedline
  GalleryIcon(
    name: "square_stack_3d_down_dottedline",
    icon: CupertinoIcons.square_stack_3d_down_dottedline,
  ),
//  square_stack_3d_down_right
  GalleryIcon(
    name: "square_stack_3d_down_right",
    icon: CupertinoIcons.square_stack_3d_down_right,
  ),
//  square_stack_3d_down_right_fill
  GalleryIcon(
    name: "square_stack_3d_down_right_fill",
    icon: CupertinoIcons.square_stack_3d_down_right_fill,
  ),
//  square_stack_3d_up
  GalleryIcon(
    name: "square_stack_3d_up",
    icon: CupertinoIcons.square_stack_3d_up,
  ),
//  square_stack_3d_up_fill
  GalleryIcon(
    name: "square_stack_3d_up_fill",
    icon: CupertinoIcons.square_stack_3d_up_fill,
  ),
//  square_stack_3d_up_slash
  GalleryIcon(
    name: "square_stack_3d_up_slash",
    icon: CupertinoIcons.square_stack_3d_up_slash,
  ),
//  square_stack_3d_up_slash_fill
  GalleryIcon(
    name: "square_stack_3d_up_slash_fill",
    icon: CupertinoIcons.square_stack_3d_up_slash_fill,
  ),
//  square_stack_fill
  GalleryIcon(
    name: "square_stack_fill",
    icon: CupertinoIcons.square_stack_fill,
  ),
//  squares_below_rectangle
  GalleryIcon(
    name: "squares_below_rectangle",
    icon: CupertinoIcons.squares_below_rectangle,
  ),
//  star
  GalleryIcon(
    name: "star",
    icon: CupertinoIcons.star,
  ),
//  star_circle
  GalleryIcon(
    name: "star_circle",
    icon: CupertinoIcons.star_circle,
  ),
//  star_circle_fill
  GalleryIcon(
    name: "star_circle_fill",
    icon: CupertinoIcons.star_circle_fill,
  ),
//  star_fill
  GalleryIcon(
    name: "star_fill",
    icon: CupertinoIcons.star_fill,
  ),
//  star_lefthalf_fill
  GalleryIcon(
    name: "star_lefthalf_fill",
    icon: CupertinoIcons.star_lefthalf_fill,
  ),
//  star_slash
  GalleryIcon(
    name: "star_slash",
    icon: CupertinoIcons.star_slash,
  ),
//  star_slash_fill
  GalleryIcon(
    name: "star_slash_fill",
    icon: CupertinoIcons.star_slash_fill,
  ),
//  staroflife
  GalleryIcon(
    name: "staroflife",
    icon: CupertinoIcons.staroflife,
  ),
//  staroflife_fill
  GalleryIcon(
    name: "staroflife_fill",
    icon: CupertinoIcons.staroflife_fill,
  ),
//  stop
  GalleryIcon(
    name: "stop",
    icon: CupertinoIcons.stop,
  ),
//  stop_circle
  GalleryIcon(
    name: "stop_circle",
    icon: CupertinoIcons.stop_circle,
  ),
//  stop_circle_fill
  GalleryIcon(
    name: "stop_circle_fill",
    icon: CupertinoIcons.stop_circle_fill,
  ),
//  stop_fill
  GalleryIcon(
    name: "stop_fill",
    icon: CupertinoIcons.stop_fill,
  ),
//  stopwatch
  GalleryIcon(
    name: "stopwatch",
    icon: CupertinoIcons.stopwatch,
  ),
//  stopwatch_fill
  GalleryIcon(
    name: "stopwatch_fill",
    icon: CupertinoIcons.stopwatch_fill,
  ),
//  strikethrough
  GalleryIcon(
    name: "strikethrough",
    icon: CupertinoIcons.strikethrough,
  ),
//  suit_club
  GalleryIcon(
    name: "suit_club",
    icon: CupertinoIcons.suit_club,
  ),
//  suit_club_fill
  GalleryIcon(
    name: "suit_club_fill",
    icon: CupertinoIcons.suit_club_fill,
  ),
//  suit_diamond
  GalleryIcon(
    name: "suit_diamond",
    icon: CupertinoIcons.suit_diamond,
  ),
//  suit_diamond_fill
  GalleryIcon(
    name: "suit_diamond_fill",
    icon: CupertinoIcons.suit_diamond_fill,
  ),
//  suit_heart
  GalleryIcon(
    name: "suit_heart",
    icon: CupertinoIcons.suit_heart,
  ),
//  suit_heart_fill
  GalleryIcon(
    name: "suit_heart_fill",
    icon: CupertinoIcons.suit_heart_fill,
  ),
//  suit_spade
  GalleryIcon(
    name: "suit_spade",
    icon: CupertinoIcons.suit_spade,
  ),
//  suit_spade_fill
  GalleryIcon(
    name: "suit_spade_fill",
    icon: CupertinoIcons.suit_spade_fill,
  ),
//  sum
  GalleryIcon(
    name: "sum",
    icon: CupertinoIcons.sum,
  ),
//  sun_dust
  GalleryIcon(
    name: "sun_dust",
    icon: CupertinoIcons.sun_dust,
  ),
//  sun_dust_fill
  GalleryIcon(
    name: "sun_dust_fill",
    icon: CupertinoIcons.sun_dust_fill,
  ),
//  sun_haze
  GalleryIcon(
    name: "sun_haze",
    icon: CupertinoIcons.sun_haze,
  ),
//  sun_haze_fill
  GalleryIcon(
    name: "sun_haze_fill",
    icon: CupertinoIcons.sun_haze_fill,
  ),

//  sun_max
  GalleryIcon(
    name: "sun_max",
    icon: CupertinoIcons.sun_max,
  ),

//  sun_max_fill
  GalleryIcon(
    name: "sun_max_fill",
    icon: CupertinoIcons.sun_max_fill,
  ),
//  sun_min
  GalleryIcon(
    name: "sun_min",
    icon: CupertinoIcons.sun_min,
  ),
//  sun_min_fill
  GalleryIcon(
    name: "sun_min_fill",
    icon: CupertinoIcons.sun_min_fill,
  ),
//  sunrise
  GalleryIcon(
    name: "sunrise",
    icon: CupertinoIcons.sunrise,
  ),
//  sunrise_fill
  GalleryIcon(
    name: "sunrise_fill",
    icon: CupertinoIcons.sunrise_fill,
  ),
//  sunset
  GalleryIcon(
    name: "sunset",
    icon: CupertinoIcons.sunset,
  ),
//  sunset_fill
  GalleryIcon(
    name: "sunset_fill",
    icon: CupertinoIcons.sunset_fill,
  ),
//  t_bubble
  GalleryIcon(
    name: "t_bubble",
    icon: CupertinoIcons.t_bubble,
  ),
//  t_bubble_fill
  GalleryIcon(
    name: "t_bubble_fill",
    icon: CupertinoIcons.t_bubble_fill,
  ),
//  table
  GalleryIcon(
    name: "table",
    icon: CupertinoIcons.table,
  ),
//  table_badge_more
  GalleryIcon(
    name: "table_badge_more",
    icon: CupertinoIcons.table_badge_more,
  ),
//  table_badge_more_fill
  GalleryIcon(
    name: "table_badge_more_fill",
    icon: CupertinoIcons.table_badge_more_fill,
  ),
//  table_fill
  GalleryIcon(
    name: "table_fill",
    icon: CupertinoIcons.table_fill,
  ),
//  tag_circle
  GalleryIcon(
    name: "tag_circle",
    icon: CupertinoIcons.tag_circle,
  ),
//  tag_circle_fill
  GalleryIcon(
    name: "tag_circle_fill",
    icon: CupertinoIcons.tag_circle_fill,
  ),

//  tag_fill
  GalleryIcon(
    name: "tag_fill",
    icon: CupertinoIcons.tag_fill,
  ),
//  text_aligncenter
  GalleryIcon(
    name: "text_aligncenter",
    icon: CupertinoIcons.text_aligncenter,
  ),
//  text_alignleft
  GalleryIcon(
    name: "text_alignleft",
    icon: CupertinoIcons.text_alignleft,
  ),
//  text_alignright
  GalleryIcon(
    name: "text_alignright",
    icon: CupertinoIcons.text_alignright,
  ),
//  text_append
  GalleryIcon(
    name: "text_append",
    icon: CupertinoIcons.text_append,
  ),
//  text_badge_checkmark
  GalleryIcon(
    name: "text_badge_checkmark",
    icon: CupertinoIcons.text_badge_checkmark,
  ),
//  text_badge_minus
  GalleryIcon(
    name: "text_badge_minus",
    icon: CupertinoIcons.text_badge_minus,
  ),
//  text_badge_plus
  GalleryIcon(
    name: "text_badge_plus",
    icon: CupertinoIcons.text_badge_plus,
  ),
//  text_badge_star
  GalleryIcon(
    name: "text_badge_star",
    icon: CupertinoIcons.text_badge_star,
  ),
//  text_badge_xmark
  GalleryIcon(
    name: "text_badge_xmark",
    icon: CupertinoIcons.text_badge_xmark,
  ),
//  text_bubble
  GalleryIcon(
    name: "text_bubble",
    icon: CupertinoIcons.text_bubble,
  ),
//  text_bubble_fill
  GalleryIcon(
    name: "text_bubble_fill",
    icon: CupertinoIcons.text_bubble_fill,
  ),
//  text_cursor
  GalleryIcon(
    name: "text_cursor",
    icon: CupertinoIcons.text_cursor,
  ),
//  text_insert
  GalleryIcon(
    name: "text_insert",
    icon: CupertinoIcons.text_insert,
  ),
//  text_justify
  GalleryIcon(
    name: "text_justify",
    icon: CupertinoIcons.text_justify,
  ),
//  text_justifyleft
  GalleryIcon(
    name: "text_justifyleft",
    icon: CupertinoIcons.text_justifyleft,
  ),
//  text_justifyright
  GalleryIcon(
    name: "text_justifyright",
    icon: CupertinoIcons.text_justifyright,
  ),
//  text_quote
  GalleryIcon(
    name: "text_quote",
    icon: CupertinoIcons.text_quote,
  ),
//  textbox
  GalleryIcon(
    name: "textbox",
    icon: CupertinoIcons.textbox,
  ),
//  textformat
  GalleryIcon(
    name: "textformat",
    icon: CupertinoIcons.textformat,
  ),
//  textformat_123
  GalleryIcon(
    name: "textformat_123",
    icon: CupertinoIcons.textformat_123,
  ),
//  textformat_abc
  GalleryIcon(
    name: "textformat_abc",
    icon: CupertinoIcons.textformat_abc,
  ),
//  textformat_abc_dottedunderline
  GalleryIcon(
    name: "textformat_abc_dottedunderline",
    icon: CupertinoIcons.textformat_abc_dottedunderline,
  ),
//  textformat_alt
  GalleryIcon(
    name: "textformat_alt",
    icon: CupertinoIcons.textformat_alt,
  ),
//  textformat_size
  GalleryIcon(
    name: "textformat_size",
    icon: CupertinoIcons.textformat_size,
  ),
//  textformat_subscript
  GalleryIcon(
    name: "textformat_subscript",
    icon: CupertinoIcons.textformat_subscript,
  ),
//  textformat_superscript
  GalleryIcon(
    name: "textformat_superscript",
    icon: CupertinoIcons.textformat_superscript,
  ),
//  thermometer
  GalleryIcon(
    name: "thermometer",
    icon: CupertinoIcons.thermometer,
  ),
//  thermometer_snowflake
  GalleryIcon(
    name: "thermometer_snowflake",
    icon: CupertinoIcons.thermometer_snowflake,
  ),
//  thermometer_sun
  GalleryIcon(
    name: "thermometer_sun",
    icon: CupertinoIcons.thermometer_sun,
  ),
//  ticket
  GalleryIcon(
    name: "ticket",
    icon: CupertinoIcons.ticket,
  ),
//  ticket_fill
  GalleryIcon(
    name: "ticket_fill",
    icon: CupertinoIcons.ticket_fill,
  ),
//  tickets
  GalleryIcon(
    name: "tickets",
    icon: CupertinoIcons.tickets,
  ),
//  tickets_fill
  GalleryIcon(
    name: "tickets_fill",
    icon: CupertinoIcons.tickets_fill,
  ),
//  timelapse
  GalleryIcon(
    name: "timelapse",
    icon: CupertinoIcons.timelapse,
  ),
//  timer
  GalleryIcon(
    name: "timer",
    icon: CupertinoIcons.timer,
  ),
//  timer_fill
  GalleryIcon(
    name: "timer_fill",
    icon: CupertinoIcons.timer_fill,
  ),
//  today
  GalleryIcon(
    name: "today",
    icon: CupertinoIcons.today,
  ),
//  today_fill
  GalleryIcon(
    name: "today_fill",
    icon: CupertinoIcons.today_fill,
  ),
//  tornado
  GalleryIcon(
    name: "tornado",
    icon: CupertinoIcons.tornado,
  ),
//  tortoise
  GalleryIcon(
    name: "tortoise",
    icon: CupertinoIcons.tortoise,
  ),
//  tortoise_fill
  GalleryIcon(
    name: "tortoise_fill",
    icon: CupertinoIcons.tortoise_fill,
  ),
//  tram_fill
  GalleryIcon(
    name: "tram_fill",
    icon: CupertinoIcons.tram_fill,
  ),

//  trash
  GalleryIcon(
    name: "trash",
    icon: CupertinoIcons.trash,
  ),
//  trash_circle
  GalleryIcon(
    name: "trash_circle",
    icon: CupertinoIcons.trash_circle,
  ),
//  trash_circle_fill
  GalleryIcon(
    name: "trash_circle_fill",
    icon: CupertinoIcons.trash_circle_fill,
  ),

//  trash_fill
  GalleryIcon(
    name: "trash_fill",
    icon: CupertinoIcons.trash_fill,
  ),
//  trash_slash
  GalleryIcon(
    name: "trash_slash",
    icon: CupertinoIcons.trash_slash,
  ),
//  trash_slash_fill
  GalleryIcon(
    name: "trash_slash_fill",
    icon: CupertinoIcons.trash_slash_fill,
  ),
//  tray
  GalleryIcon(
    name: "tray",
    icon: CupertinoIcons.tray,
  ),
//  tray_2
  GalleryIcon(
    name: "tray_2",
    icon: CupertinoIcons.tray_2,
  ),
//  tray_2_fill
  GalleryIcon(
    name: "tray_2_fill",
    icon: CupertinoIcons.tray_2_fill,
  ),
//  tray_arrow_down
  GalleryIcon(
    name: "tray_arrow_down",
    icon: CupertinoIcons.tray_arrow_down,
  ),
//  tray_arrow_down_fill
  GalleryIcon(
    name: "tray_arrow_down_fill",
    icon: CupertinoIcons.tray_arrow_down_fill,
  ),
//  tray_arrow_up
  GalleryIcon(
    name: "tray_arrow_up",
    icon: CupertinoIcons.tray_arrow_up,
  ),
//  tray_arrow_up_fill
  GalleryIcon(
    name: "tray_arrow_up_fill",
    icon: CupertinoIcons.tray_arrow_up_fill,
  ),
//  tray_fill
  GalleryIcon(
    name: "tray_fill",
    icon: CupertinoIcons.tray_fill,
  ),
//  tray_full
  GalleryIcon(
    name: "tray_full",
    icon: CupertinoIcons.tray_full,
  ),
//  tray_full_fill
  GalleryIcon(
    name: "tray_full_fill",
    icon: CupertinoIcons.tray_full_fill,
  ),
//  tree
  GalleryIcon(
    name: "tree",
    icon: CupertinoIcons.tree,
  ),
//  triangle
  GalleryIcon(
    name: "triangle",
    icon: CupertinoIcons.triangle,
  ),
//  triangle_fill
  GalleryIcon(
    name: "triangle_fill",
    icon: CupertinoIcons.triangle_fill,
  ),
//  triangle_lefthalf_fill
  GalleryIcon(
    name: "triangle_lefthalf_fill",
    icon: CupertinoIcons.triangle_lefthalf_fill,
  ),
//  triangle_righthalf_fill
  GalleryIcon(
    name: "triangle_righthalf_fill",
    icon: CupertinoIcons.triangle_righthalf_fill,
  ),
//  tropicalstorm
  GalleryIcon(
    name: "tropicalstorm",
    icon: CupertinoIcons.tropicalstorm,
  ),
//  tuningfork
  GalleryIcon(
    name: "tuningfork",
    icon: CupertinoIcons.tuningfork,
  ),
//  tv
  GalleryIcon(
    name: "tv",
    icon: CupertinoIcons.tv,
  ),
//  tv_circle
  GalleryIcon(
    name: "tv_circle",
    icon: CupertinoIcons.tv_circle,
  ),
//  tv_circle_fill
  GalleryIcon(
    name: "tv_circle_fill",
    icon: CupertinoIcons.tv_circle_fill,
  ),
//  tv_fill
  GalleryIcon(
    name: "tv_fill",
    icon: CupertinoIcons.tv_fill,
  ),
//  tv_music_note
  GalleryIcon(
    name: "tv_music_note",
    icon: CupertinoIcons.tv_music_note,
  ),
//  tv_music_note_fill
  GalleryIcon(
    name: "tv_music_note_fill",
    icon: CupertinoIcons.tv_music_note_fill,
  ),
//  uiwindow_split_2x1
  GalleryIcon(
    name: "uiwindow_split_2x1",
    icon: CupertinoIcons.uiwindow_split_2x1,
  ),
//  umbrella
  GalleryIcon(
    name: "umbrella",
    icon: CupertinoIcons.umbrella,
  ),
//  umbrella_fill
  GalleryIcon(
    name: "umbrella_fill",
    icon: CupertinoIcons.umbrella_fill,
  ),
//  underline
  GalleryIcon(
    name: "underline",
    icon: CupertinoIcons.underline,
  ),
//  upload_circle
  GalleryIcon(
    name: "upload_circle",
    icon: CupertinoIcons.upload_circle,
  ),
//  upload_circle_fill
  GalleryIcon(
    name: "upload_circle_fill",
    icon: CupertinoIcons.upload_circle_fill,
  ),

//  videocam
  GalleryIcon(
    name: "videocam",
    icon: CupertinoIcons.videocam,
  ),
//  videocam_circle
  GalleryIcon(
    name: "videocam_circle",
    icon: CupertinoIcons.videocam_circle,
  ),
//  videocam_circle_fill
  GalleryIcon(
    name: "videocam_circle_fill",
    icon: CupertinoIcons.videocam_circle_fill,
  ),

//  videocam_fill
  GalleryIcon(
    name: "videocam_fill",
    icon: CupertinoIcons.videocam_fill,
  ),
//  view_2d
  GalleryIcon(
    name: "view_2d",
    icon: CupertinoIcons.view_2d,
  ),
//  view_3d
  GalleryIcon(
    name: "view_3d",
    icon: CupertinoIcons.view_3d,
  ),
//  viewfinder
  GalleryIcon(
    name: "viewfinder",
    icon: CupertinoIcons.viewfinder,
  ),
//  viewfinder_circle
  GalleryIcon(
    name: "viewfinder_circle",
    icon: CupertinoIcons.viewfinder_circle,
  ),
//  viewfinder_circle_fill
  GalleryIcon(
    name: "viewfinder_circle_fill",
    icon: CupertinoIcons.viewfinder_circle_fill,
  ),
//  wand_rays
  GalleryIcon(
    name: "wand_rays",
    icon: CupertinoIcons.wand_rays,
  ),
//  wand_rays_inverse
  GalleryIcon(
    name: "wand_rays_inverse",
    icon: CupertinoIcons.wand_rays_inverse,
  ),
//  wand_stars
  GalleryIcon(
    name: "wand_stars",
    icon: CupertinoIcons.wand_stars,
  ),
//  wand_stars_inverse
  GalleryIcon(
    name: "wand_stars_inverse",
    icon: CupertinoIcons.wand_stars_inverse,
  ),
//  waveform
  GalleryIcon(
    name: "waveform",
    icon: CupertinoIcons.waveform,
  ),
//  waveform_circle
  GalleryIcon(
    name: "waveform_circle",
    icon: CupertinoIcons.waveform_circle,
  ),
//  waveform_circle_fill
  GalleryIcon(
    name: "waveform_circle_fill",
    icon: CupertinoIcons.waveform_circle_fill,
  ),
//  waveform_path
  GalleryIcon(
    name: "waveform_path",
    icon: CupertinoIcons.waveform_path,
  ),
//  waveform_path_badge_minus
  GalleryIcon(
    name: "waveform_path_badge_minus",
    icon: CupertinoIcons.waveform_path_badge_minus,
  ),
//  waveform_path_badge_plus
  GalleryIcon(
    name: "waveform_path_badge_plus",
    icon: CupertinoIcons.waveform_path_badge_plus,
  ),
//  waveform_path_ecg
  GalleryIcon(
    name: "waveform_path_ecg",
    icon: CupertinoIcons.waveform_path_ecg,
  ),
//  wifi
  GalleryIcon(
    name: "wifi",
    icon: CupertinoIcons.wifi,
  ),
//  wifi_exclamationmark
  GalleryIcon(
    name: "wifi_exclamationmark",
    icon: CupertinoIcons.wifi_exclamationmark,
  ),
//  wifi_slash
  GalleryIcon(
    name: "wifi_slash",
    icon: CupertinoIcons.wifi_slash,
  ),
//  wind
  GalleryIcon(
    name: "wind",
    icon: CupertinoIcons.wind,
  ),
//  wind_snow
  GalleryIcon(
    name: "wind_snow",
    icon: CupertinoIcons.wind_snow,
  ),
//  wrench
  GalleryIcon(
    name: "wrench",
    icon: CupertinoIcons.wrench,
  ),
//  wrench_fill
  GalleryIcon(
    name: "wrench_fill",
    icon: CupertinoIcons.wrench_fill,
  ),

//  xmark
  GalleryIcon(
    name: "xmark",
    icon: CupertinoIcons.xmark,
  ),

//  xmark_circle
  GalleryIcon(
    name: "xmark_circle",
    icon: CupertinoIcons.xmark_circle,
  ),

//  xmark_circle_fill
  GalleryIcon(
    name: "xmark_circle_fill",
    icon: CupertinoIcons.xmark_circle_fill,
  ),
//  xmark_octagon
  GalleryIcon(
    name: "xmark_octagon",
    icon: CupertinoIcons.xmark_octagon,
  ),
//  xmark_octagon_fill
  GalleryIcon(
    name: "xmark_octagon_fill",
    icon: CupertinoIcons.xmark_octagon_fill,
  ),
//  xmark_rectangle
  GalleryIcon(
    name: "xmark_rectangle",
    icon: CupertinoIcons.xmark_rectangle,
  ),
//  xmark_rectangle_fill
  GalleryIcon(
    name: "xmark_rectangle_fill",
    icon: CupertinoIcons.xmark_rectangle_fill,
  ),
//  xmark_seal
  GalleryIcon(
    name: "xmark_seal",
    icon: CupertinoIcons.xmark_seal,
  ),
//  xmark_seal_fill
  GalleryIcon(
    name: "xmark_seal_fill",
    icon: CupertinoIcons.xmark_seal_fill,
  ),
//  xmark_shield
  GalleryIcon(
    name: "xmark_shield",
    icon: CupertinoIcons.xmark_shield,
  ),
//  xmark_shield_fill
  GalleryIcon(
    name: "xmark_shield_fill",
    icon: CupertinoIcons.xmark_shield_fill,
  ),
//  xmark_square
  GalleryIcon(
    name: "xmark_square",
    icon: CupertinoIcons.xmark_square,
  ),
//  xmark_square_fill
  GalleryIcon(
    name: "xmark_square_fill",
    icon: CupertinoIcons.xmark_square_fill,
  ),
//  zoom_in
  GalleryIcon(
    name: "zoom_in",
    icon: CupertinoIcons.zoom_in,
  ),
//  zoom_out
  GalleryIcon(
    name: "zoom_out",
    icon: CupertinoIcons.zoom_out,
  ),
//  zzz
  GalleryIcon(
    name: "zzz",
    icon: CupertinoIcons.zzz,
  ),
];
