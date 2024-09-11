import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<String> problems = [
  'Không đủ số lượng mặt hàng này trong kho',
  'Yêu cầu của khách về loại không thể đáp ứng',
  'Cần thêm thông tin để hoàn thiện mặt hàng',
];

class ReportProductScreen extends StatefulWidget {
  const ReportProductScreen({super.key, required this.order});
  final Order order;

  @override
  ReportProductScreenState createState() => ReportProductScreenState();
}

class ReportProductScreenState extends State<ReportProductScreen> {
  String? selectedProblem;
  final TextEditingController _detailsProblemController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        OrderState orderState = ref.read(orderProvider);
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
                    groupValue: selectedProblem,
                    onChanged: (String? value) {
                      setState(() {
                        selectedProblem = value;
                      });
                    },
                  );
                }).toList(),
              ),
              TextField(
                controller: _detailsProblemController,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Nhập lý do về mặt hàng không thể hoàn thiện ❤️",
                  hintMaxLines: 3,
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey), // Màu viền
                    borderRadius: BorderRadius.circular(10.0), // Bo tròn viền
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.blue), // Màu viền khi focus
                    borderRadius: BorderRadius.circular(10.0), // Bo tròn viền
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 8.0),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: _cancel,
              child: const Text('Hủy'),
            ),
            TextButton(
              onPressed: () {
                final problem = selectedProblem ??
                    _detailsProblemController
                        .text; // Fallback value if selectedProblem is null

                orderState.orders
                    .firstWhere((order) => order.id == widget.order.id)
                    .addOrderProductNote(
                        widget.order.listOrderProduct.first.id, problem);

                Navigator.of(context).pop();
              },
              child: const Text('Lưu'),
            ),
          ],
        );
      },
    );
  }

  void _cancel() {
    Navigator.of(context).pop(); // Đóng AlertDialog
  }

  @override
  void dispose() {
    _detailsProblemController.dispose();
    super.dispose();
  }
}
