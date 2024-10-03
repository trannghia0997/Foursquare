import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AcceptFAB extends HookConsumerWidget {
  const AcceptFAB({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      heroTag: 'accept',
      onPressed: onPressed,
      tooltip: 'Xác nhận đơn hàng',
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      child: const Icon(Icons.check),
    );
  }
}

class PauseFAB extends HookConsumerWidget {
  const PauseFAB({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      heroTag: 'pause',
      onPressed: onPressed,
      tooltip: 'Tạm dừng đơn hàng',
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      child: const Icon(Icons.pause),
    );
  }
}

class CancelFAB extends HookConsumerWidget {
  const CancelFAB({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      heroTag: 'cancel',
      onPressed: onPressed,
      tooltip: 'Hủy đơn hàng',
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      child: const Icon(Icons.cancel),
    );
  }
}
