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

Future<dynamic> convertToUSDTAmount(
  BuildContext context,
  double amountInr,
  String paymentMode,
  dynamic rates,
) async {
  try {
    // Initialize default values
    double usdtAmount = 0.0;
    double selectedRate = 0.0;

    // Early return if rates is null
    if (rates == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Rates data is not available'),
          duration: Duration(seconds: 3),
        ),
      );
      return {
        'usdtAmount': 0.00,
        'rate': 0.00,
      };
    }

    // Safely handle the rates map
    final Map<String, dynamic> ratesMap = Map<String, dynamic>.from(rates);
    if (!ratesMap.containsKey(paymentMode)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('No rates found for payment mode: $paymentMode'),
          duration: const Duration(seconds: 3),
        ),
      );
      return {
        'usdtAmount': 0.00,
        'rate': 0.00,
      };
    }

    // Safely handle the rate list
    final dynamic rateListDynamic = ratesMap[paymentMode];
    if (rateListDynamic is! List) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid rate data format'),
          duration: Duration(seconds: 3),
        ),
      );
      return {
        'usdtAmount': 0.00,
        'rate': 0.00,
      };
    }

    final List<dynamic> rateList = rateListDynamic;
    if (rateList.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No rate ranges defined'),
          duration: Duration(seconds: 3),
        ),
      );
      return {
        'usdtAmount': 0.00,
        'rate': 0.00,
      };
    }

    // Find matching rate
    for (var rateItem in rateList) {
      if (rateItem is! Map) continue;

      double minAmount = (rateItem['min_amount'] ?? 0.0).toDouble();
      double maxAmount = (rateItem['max_amount'] ?? 0.0).toDouble();
      double currentRate = (rateItem['rate'] ?? 0.0).toDouble();

      if (amountInr >= minAmount && amountInr <= maxAmount && currentRate > 0) {
        usdtAmount = amountInr / currentRate;
        selectedRate = currentRate;
        break;
      }
    }

    // Check if we found a valid rate
    if (selectedRate == 0.0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('No matching rate range found for amount: $amountInr'),
          duration: const Duration(seconds: 3),
        ),
      );
      return {
        'usdtAmount': 0.00,
        'rate': 0.00,
      };
    }

    return {
      'usdtAmount': double.parse(usdtAmount.toStringAsFixed(2)),
      'rate': selectedRate,
    };
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error: ${e.toString()}'),
        duration: const Duration(seconds: 3),
      ),
    );

    return {
      'usdtAmount': 0.00,
      'rate': 0.00,
    };
  }
}
