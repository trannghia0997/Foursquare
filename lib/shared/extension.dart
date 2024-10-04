import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension CacheForExtension on AutoDisposeRef<Object?> {
  /// Keeps the provider alive for [duration].
  void cacheFor(Duration duration) {
    // Immediately prevent the state from getting destroyed.
    final link = keepAlive();
    // After duration has elapsed, we re-enable automatic disposal.
    final timer = Timer(duration, link.close);

    // Optional: when the provider is recomputed (such as with ref.watch),
    // we cancel the pending timer.
    onDispose(timer.cancel);
  }
}

extension DateTimeFormat on DateTime {
  String get formattedDate {
    final localDateTime = toLocal();
    return '${localDateTime.year}-${localDateTime.month.toString().padLeft(2, '0')}-${localDateTime.day.toString().padLeft(2, '0')}';
  }

  String get formattedDateTime {
    final localDateTime = toLocal();
    return '${localDateTime.year}-${localDateTime.month.toString().padLeft(2, '0')}-${localDateTime.day.toString().padLeft(2, '0')} '
        '${localDateTime.hour.toString().padLeft(2, '0')}:${localDateTime.minute.toString().padLeft(2, '0')}:${localDateTime.second.toString().padLeft(2, '0')}';
  }
}

extension NumberFormatting on int {
  String get formattedNumber => formatNumber(this);
}

extension NumberFormattingDouble on double {
  String get formattedNumber => formatNumber(toInt());
}

extension TryInto on String {
  Color? tryParseColor() {
    try {
      return Color(
        int.parse(
          'FF${replaceFirst('#', '')}',
          radix: 16,
        ),
      );
    } catch (_) {
      return null;
    }
  }
}
