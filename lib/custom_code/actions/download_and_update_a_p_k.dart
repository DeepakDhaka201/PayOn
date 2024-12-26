// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:ota_update/ota_update.dart';

Future<void> downloadAndUpdateAPK(BuildContext context, String apkUrl) async {
  try {
    // Check if platform is Android
    if (!Platform.isAndroid) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('This feature is only available on Android devices'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Show initial loading message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Starting download...'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      ),
    );

    // Create OTA Update instance
    final ota = OtaUpdate();

    // Start download with status updates
    ota.execute(
      apkUrl,
      destinationFilename: 'app-update.apk',
    ).listen(
          (OtaEvent event) {
        switch (event.status) {
          case OtaStatus.DOWNLOADING:
          // You can show progress here if needed
            break;
          case OtaStatus.INSTALLING:
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Installing update...'),
                duration: Duration(seconds: 2),
                backgroundColor: Colors.blue,
              ),
            );
            break;
          case OtaStatus.PERMISSION_NOT_GRANTED_ERROR:
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Permission denied to install updates'),
                backgroundColor: Colors.red,
              ),
            );
            break;
          case OtaStatus.DOWNLOAD_ERROR:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Download error: ${event.value}'),
                backgroundColor: Colors.red,
              ),
            );
            break;
          case OtaStatus.INTERNAL_ERROR:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Internal error: ${event.value}'),
                backgroundColor: Colors.red,
              ),
            );
            break;
          default:
            break;
        }
      },
      onError: (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error updating app: $error'),
            backgroundColor: Colors.red,
          ),
        );
      },
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error: ${e.toString()}'),
        backgroundColor: Colors.red,
      ),
    );
  }
}