import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NotificationServices{
  static Future<void> initializeNotification() async{
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelGroupKey: 'high_importance_channel',
            channelKey: 'high_importance_channel',
            channelName: 'Basic_notifications',
            channelDescription: 'notification_channel_for_basic_tests',
          importance: NotificationImportance.Max,
          playSound: true,
        ),
      ],
      channelGroups:[
        NotificationChannelGroup(
            channelGroupKey: 'high_importance_channel',
            channelGroupName: 'group 1'
        ),
    ],
      debug: true,
    );

    await AwesomeNotifications().isNotificationAllowed().then(
        (isAllowed) async {
          if (!isAllowed) {
            await AwesomeNotifications().requestPermissionToSendNotifications();
          }
        }
          );
    
    await AwesomeNotifications().setListeners(
      onActionReceivedMethod: onActionReceivedMethod,
      onDismissActionReceivedMethod: onDismissActionReceivedMethod,
      onNotificationCreatedMethod: onNotificationCreatedMethod,
      onNotificationDisplayedMethod: onNotificationDisplayedMethod,
    );
  }


  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification
      ) async {
    debugPrint('onNotificationCreatedMethod');
  }


  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification
      ) async {
    debugPrint('onNotificationDisplayedMethod');
  }


  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction
      ) async {
    debugPrint('onDismissActionReceivedMethod');
  }


  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction
      ) async {
    debugPrint('onActionReceivedMethod');
  }

  static Future<void> showNotification({
    required final String title,
    required final String body,
    final String? summary,
    final bool scheduled = false,
    final int? interval,
    final List<NotificationActionButton>? actionButtons,

}) async {
    assert (!scheduled || (scheduled && interval !=null));

    await AwesomeNotifications().createNotification(
      content: NotificationContent(
          id: -1,
          channelKey: 'high_importance_channel',
        title: title,
        body: body,
        summary: summary,
      ),
      actionButtons: actionButtons,
      schedule: scheduled?
          NotificationInterval(
              interval: interval,
              timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
            preciseAlarm: true,
          ) : null,
    );
  }
}