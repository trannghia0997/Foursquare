import 'dart:async';

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

extension Excerpt on String {
  String excerpt({
    int maxLength = 100,
    bool withEllipsis = true,
  }) {
    if (length <= maxLength) {
      return this;
    }

    final excerpt = substring(0, maxLength);
    return withEllipsis ? '$excerpt...' : excerpt;
  }
}
