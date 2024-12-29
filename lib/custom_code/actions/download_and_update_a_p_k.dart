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

import 'package:permission_handler/permission_handler.dart';
import 'package:dio/dio.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

Future<String> downloadAndUpdateAPK(BuildContext context, String apkUrl) async {
  try {
    var status = await Permission.storage.request();
    if (!status.isGranted) {
      _showSnackBar(context, 'Storage permission denied', isError: true);
      return 'Storage permission denied';
    }

    final directory = await getExternalStorageDirectory();
    if (directory == null) {
      _showSnackBar(context, 'Failed to get storage directory', isError: true);
      return 'Failed to get storage directory';
    }

    final fileName = 'app_update.apk';
    final savePath = '${directory.path}/$fileName';

    final response = await Dio().download(
      apkUrl,
      savePath,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = (received / total * 100).toStringAsFixed(0);
          _showSnackBar(context, 'Downloading: $progress%');
        }
      },
    );

    if (response.statusCode != 200) {
      _showSnackBar(context, 'Download failed', isError: true);
      return 'Download failed';
    }

    final file = File(savePath);
    if (!await file.exists()) {
      _showSnackBar(context, 'Downloaded file not found', isError: true);
      return 'Downloaded file not found';
    }

    if (Platform.isAndroid) {
      final intent = AndroidIntent(
        action: 'android.intent.action.VIEW',
        data: Uri.encodeFull('file://$savePath'),
        type: 'application/vnd.android.package-archive',
        flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
      );
      await intent.launch();
      _showSnackBar(context, 'Installation started');
      return 'Installation started';
    }

    _showSnackBar(context, 'Platform not supported', isError: true);
    return 'Platform not supported';
  } catch (e) {
    _showSnackBar(context, 'Error: ${e.toString()}', isError: true);
    return 'Error: ${e.toString()}';
  }
}

void _showSnackBar(BuildContext context, String message,
    {bool isError = false}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: isError ? Colors.red : Colors.blue,
      duration: Duration(seconds: isError ? 4 : 2),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(8),
    ),
  );
}
