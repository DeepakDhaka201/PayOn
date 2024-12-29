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
    double usdtAmount = 0.0;
    double selectedRate = 0.0;

    if (rates == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content:
              Text('Unable to fetch current rates. Please try again later.'),
          duration: Duration(seconds: 3),
        ),
      );
      return {
        'usdtAmount': 0.00,
        'rate': 0.00,
      };
    }

    final Map<String, dynamic> ratesMap = Map<String, dynamic>.from(rates);
    if (!ratesMap.containsKey(paymentMode)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              '$paymentMode rates are currently unavailable. Please try a different payment method.'),
          duration: const Duration(seconds: 3),
        ),
      );
      return {
        'usdtAmount': 0.00,
        'rate': 0.00,
      };
    }

    final dynamic rateListDynamic = ratesMap[paymentMode];
    if (rateListDynamic is! List) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Rate information is incorrectly formatted. Please contact support.'),
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
          content: Text(
              'No rate slabs are currently available. Please try again later.'),
          duration: Duration(seconds: 3),
        ),
      );
      return {
        'usdtAmount': 0.00,
        'rate': 0.00,
      };
    }

    // Check minimum amount (first slab)
    var firstSlab = rateList.first;
    if (firstSlab is Map) {
      double minAmount = (firstSlab['min_amount'] ?? 0.0).toDouble();
      if (amountInr < minAmount) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Minimum amount required is ₹${minAmount.toStringAsFixed(2)}. Please increase your amount.'),
            duration: const Duration(seconds: 3),
          ),
        );
        return {
          'usdtAmount': 0.00,
          'rate': 0.00,
        };
      }
    }

    // Check maximum amount (last slab)
    var lastSlab = rateList.last;
    if (lastSlab is Map) {
      double maxAmount = (lastSlab['max_amount'] ?? 0.0).toDouble();
      if (amountInr > maxAmount) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Maximum amount allowed is ₹${maxAmount.toStringAsFixed(2)}. Please decrease your amount or contact support for larger transactions.'),
            duration: const Duration(seconds: 3),
          ),
        );
        return {
          'usdtAmount': 0.00,
          'rate': 0.00,
        };
      }
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

    if (selectedRate == 0.0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'No rate slab found for ₹${amountInr.toStringAsFixed(2)}. Please adjust your amount.'),
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
      const SnackBar(
        content: Text('An unexpected error occurred. Please try again later.'),
        duration: Duration(seconds: 3),
      ),
    );

    return {
      'usdtAmount': 0.00,
      'rate': 0.00,
    };
  }
}
