import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/internal_order.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/internal_order_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<String> problems = [
  'Không đủ số lượng mặt hàng này trong kho',
  'Yêu cầu của khách về loại không thể đáp ứng',
  'Cần thêm thông tin để hoàn thiện mặt hàng',
];

class ReportProductScreen extends HookConsumerWidget {
  const ReportProductScreen({super.key, required this.internalOrderItem});
  final InternalOrderItemDto internalOrderItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedProblem = useState<String?>(null);
    final detailsProblemController = useTextEditingController();

    return AlertDialog(
      title: const Text('Vấn đề với mặt hàng'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: problems.map((problem) {
              return RadioListTile<String>(
                title: Text(problem),
                value: problem,
                groupValue: selectedProblem.value,
                onChanged: (String? value) {
                  selectedProblem.value = value;
                },
              );
            }).toList(),
          ),
          TextField(
            controller: detailsProblemController,
            maxLines: null,
            decoration: InputDecoration(
              hintText: "Nhập lý do về mặt hàng không thể hoàn thiện ❤️",
              hintMaxLines: 3,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey), // Màu viền
                borderRadius: BorderRadius.circular(10.0), // Bo tròn viền
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.blue), // Màu viền khi focus
                borderRadius: BorderRadius.circular(10.0), // Bo tròn viền
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Đóng AlertDialog
          },
          child: const Text('Hủy'),
        ),
        TextButton(
          onPressed: () async {
            final problem = selectedProblem.value ??
                detailsProblemController
                    .text; // Fallback value if selectedProblem is null
            final internalOrderItemEdit = InternalOrderItemEditDto.fromJson(
              internalOrderItem.toJson(),
            )
              ..note = problem
              ..qty = 0;
            await PBApp.instance.collection('internal_order_items').update(
                  internalOrderItem.id,
                  body: internalOrderItemEdit.toJson(),
                );
            ref.invalidate(singleInternalOrderInfoProvider(
                internalOrderItem.internalOrderId));
            if (!context.mounted) return;
            Navigator.of(context).pop();
          },
          child: const Text('Lưu'),
        ),
      ],
    );
  }
}
