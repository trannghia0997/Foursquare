import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/assignment.dart';
import 'package:foursquare/riverpod/invoice.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/extension.dart';
import 'package:foursquare/shared/models/data/invoice_status_code.dart';
import 'package:foursquare/shared/models/data/shipment_status_code.dart';
import 'package:foursquare/shared/models/enums/assignment_status.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OutForDeliveryFAB extends ConsumerWidget {
  const OutForDeliveryFAB({super.key, required this.shipmentAssignmentInfo});

  final ShipmentAssignmentInfo shipmentAssignmentInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: FloatingActionButton.extended(
        onPressed: () async {
          await PBApp.instance.collection('shipments').update(
                shipmentAssignmentInfo.shipment.id,
                body: shipmentAssignmentInfo.shipment
                    .copyWith(
                      statusCodeId: ShipmentStatusCodeData.outForDelivery.id,
                    )
                    .toJson(),
              );
          await PBApp.instance.collection('shipment_assignments').update(
                shipmentAssignmentInfo.shipmentAssignment.id,
                body: shipmentAssignmentInfo.shipmentAssignment
                    .copyWith(
                      status: AssignmentStatus.inProgress,
                    )
                    .toJson(),
              );
          if (!context.mounted) return;
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.check),
        label: const Text(
          'Sẵn sàng vận chuyển',
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class SuccessDeliveryFAB extends ConsumerWidget {
  const SuccessDeliveryFAB({super.key, required this.shipmentAssignmentInfo});

  final ShipmentAssignmentInfo shipmentAssignmentInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final singleInvoiceInfoState = ref.watch(
      singleInvoiceInfoProvider(shipmentAssignmentInfo.shipment.invoiceId),
    );
    late final InvoiceInfo invoiceInfo;
    switch (singleInvoiceInfoState) {
      case AsyncData(:final value):
        invoiceInfo = value;
        break;
      default:
        return const SizedBox.shrink();
    }
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: FloatingActionButton.extended(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return HookBuilder(
                  builder: (BuildContext context) {
                    final amountController = useTextEditingController();
                    final isCheckboxChecked = useState(false);
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 16,
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Số tiền cần nhận:',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${(invoiceInfo.invoice.totalAmount - (invoiceInfo.invoice.paidAmount ?? 0)).toInt().formattedNumber} đ',
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          TextField(
                            controller: amountController,
                            readOnly: isCheckboxChecked.value,
                            decoration: const InputDecoration(
                              labelText: 'Nhập số tiền nhận được',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              TextInputFormatter.withFunction(
                                (oldValue, newValue) {
                                  final newText = newValue.text;
                                  if (newText.isEmpty) {
                                    return newValue;
                                  }
                                  final newAmount = int.tryParse(newText);
                                  if (newAmount == null) {
                                    return oldValue;
                                  }
                                  final maxAmount =
                                      invoiceInfo.invoice.totalAmount -
                                          (invoiceInfo.invoice.paidAmount ?? 0);
                                  if (newAmount < 0 || newAmount > maxAmount) {
                                    return oldValue;
                                  }
                                  return newValue;
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            value: isCheckboxChecked.value,
                            onChanged: (bool? value) {
                              isCheckboxChecked.value = value ?? false;
                              if (isCheckboxChecked.value) {
                                amountController.text = (invoiceInfo
                                            .invoice.totalAmount -
                                        (invoiceInfo.invoice.paidAmount ?? 0))
                                    .toInt()
                                    .formattedNumber;
                              } else {
                                amountController.clear();
                              }
                            },
                            title: const Text('Nhận đủ số tiền'),
                          ),
                          const SizedBox(height: 16),
                          FilledButton(
                            onPressed: () async {
                              if (!isCheckboxChecked.value &&
                                  amountController.text.isEmpty) {
                                return;
                              }
                              final result = await showDialog<bool>(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text(
                                        'Xác nhận hoàn thành giao hàng'),
                                    content: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          'Bạn có chắc chắn muốn hoàn thành giao hàng?',
                                        ),
                                        const Text(
                                          'Số tiền nhận được: ',
                                        ),
                                        Text(
                                          '${isCheckboxChecked.value ? amountController.text : int.tryParse(amountController.text)?.formattedNumber} đ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium,
                                        )
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(false);
                                        },
                                        child: const Text('Hủy'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(true);
                                        },
                                        child: const Text('Xác nhận'),
                                      ),
                                    ],
                                  );
                                },
                              );
                              if (result != true) return;
                              await PBApp.instance
                                  .collection('shipments')
                                  .update(
                                    shipmentAssignmentInfo.shipment.id,
                                    body: shipmentAssignmentInfo.shipment
                                        .copyWith(
                                          statusCodeId: ShipmentStatusCodeData
                                              .delivered.id,
                                        )
                                        .toJson(),
                                  );

                              final invoiceInfo = await ref.read(
                                singleInvoiceInfoProvider(shipmentAssignmentInfo
                                        .shipment.invoiceId)
                                    .future,
                              );
                              await PBApp.instance
                                  .collection('invoices')
                                  .update(
                                    invoiceInfo.invoice.id,
                                    body: invoiceInfo.invoice
                                        .copyWith(
                                          paidAmount: isCheckboxChecked.value
                                              ? invoiceInfo.invoice.totalAmount
                                              : double.tryParse(
                                                  amountController.text),
                                          statusCodeId: isCheckboxChecked.value
                                              ? InvoiceStatusCodeData.paid.id
                                              : InvoiceStatusCodeData
                                                  .partial.id,
                                        )
                                        .toJson(),
                                  );
                              await PBApp.instance
                                  .collection('shipment_assignments')
                                  .update(
                                    shipmentAssignmentInfo
                                        .shipmentAssignment.id,
                                    body: shipmentAssignmentInfo
                                        .shipmentAssignment
                                        .copyWith(
                                          status: AssignmentStatus.completed,
                                        )
                                        .toJson(),
                                  );
                              if (!context.mounted) return;
                              Navigator.of(context).pop();
                            },
                            child: const Text('Xác nhận'),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
          icon: const Icon(Icons.done),
          label: const Text(
            'Hoàn thành giao hàng',
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
