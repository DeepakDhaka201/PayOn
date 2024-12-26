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
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:http/http.dart' as http;
import 'package:android_intent_plus/flag.dart';

Future<bool> downloadAndUpdateAPK(BuildContext context, String apkUrl) async {
  // Check if platform is Android
  if (!Platform.isAndroid) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('This feature is only available on Android devices'),
        backgroundColor: Colors.red,
      ),
    );
    return false;
  }

  // Create a StreamController to handle download progress
  final progressController = StreamController<double>();
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? progressSnackBar;

  void showProgressSnackBar() {
    progressSnackBar = ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: StreamBuilder<double>(
          stream: progressController.stream,
          builder: (context, snapshot) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Downloading update...'),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: snapshot.data ?? 0,
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
                if (snapshot.hasData)
                  Text('${(snapshot.data! * 100).toStringAsFixed(1)}%'),
              ],
            );
          },
        ),
        duration: const Duration(
            days: 1), // Long duration, will be dismissed manually
        backgroundColor: Colors.white,
      ),
    );
  }

  try {
    // Request installation permissions
    if (!await Permission.requestInstallPackages.isGranted) {
      final status = await Permission.requestInstallPackages.request();
      if (status.isDenied) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Permission denied to install packages'),
            backgroundColor: Colors.red,
          ),
        );
        return false;
      }
    }

    // Create a temporary directory to store the downloaded APK
    final tempDir = await getTemporaryDirectory();
    final filePath = '${tempDir.path}/app-update.apk';
    final file = File(filePath);

    // Download the APK with progress
    try {
      final client = http.Client();
      final request = http.Request('GET', Uri.parse(apkUrl));
      final response = await client.send(request);

      if (response.statusCode != 200) {
        throw Exception('Failed to download APK: HTTP ${response.statusCode}');
      }

      final contentLength = response.contentLength ?? 0;
      int receivedBytes = 0;

      showProgressSnackBar();

      final sink = file.openWrite();
      await response.stream.forEach((chunk) {
        sink.add(chunk);
        receivedBytes += chunk.length;
        if (contentLength > 0) {
          progressController.add(receivedBytes / contentLength);
        }
      });

      await sink.close();
      await progressController.close();
      progressSnackBar?.close();
    } catch (e) {
      progressController.close();
      progressSnackBar?.close();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to download APK: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
      return false;
    }

    // Install the APK
    if (await file.exists()) {
      final intent = AndroidIntent(
        action: 'action_view',
        data: 'file://$filePath',
        type: 'application/vnd.android.package-archive',
        flags: [
          Flag.FLAG_ACTIVITY_NEW_TASK,
          Flag.FLAG_GRANT_READ_URI_PERMISSION
        ],
      );
      await intent.launch();
      return true;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Failed to save APK file'),
        backgroundColor: Colors.red,
      ),
    );
    return false;
  } catch (e) {
    progressController.close();
    progressSnackBar?.close();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error installing APK: ${e.toString()}'),
        backgroundColor: Colors.red,
      ),
    );
    return false;
  }
}
