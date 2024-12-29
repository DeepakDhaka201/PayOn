import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

List<dynamic>? returnEmptyList() {
  return [];
}

int getRemainingMillis(String expiresAt) {
  try {
    DateFormat dateFormat = DateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'");
    // Parse the date string into a DateTime object
    DateTime expiryDateTime = dateFormat.parseUtc(expiresAt);

    // Get current UTC time
    DateTime currentDateTime = DateTime.now().toUtc();

    // Calculate the difference
    Duration remainingDuration = expiryDateTime.difference(currentDateTime);

    // Convert to milliseconds
    int remainingMilliseconds = remainingDuration.inMilliseconds;

    // Return 0 if time has already expired
    return remainingMilliseconds > 0 ? remainingMilliseconds : 0;
  } catch (e) {
    // Handle any parsing errors
    print('Error calculating remaining time: $e');
    return 0;
  }
}
