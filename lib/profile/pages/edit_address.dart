import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../widgets/appbar_widget.dart';

class EditAddressFormPage extends HookWidget {
  EditAddressFormPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final addressController = useTextEditingController();
    final addresses = useState<List<String>>([
      "268 Lý Thường Kiệt, Phường 14, Quận 10",
      "227 Nguyễn Văn Cừ, Phường 4, Quận 5",
    ]);
    final selectedAddresses = useState<Set<String>>({});

    void addAddress(String address) {
      addresses.value = [...addresses.value, address];
    }

    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Các địa chỉ của bạn",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: addresses.value.length,
                itemBuilder: (context, index) {
                  final address = addresses.value[index];
                  return ListTile(
                    title: Text(address),
                    trailing: Checkbox(
                      value: selectedAddresses.value.contains(address),
                      onChanged: (bool? checked) {
                        if (checked ?? false) {
                          selectedAddresses.value.add(address);
                        } else {
                          selectedAddresses.value.remove(address);
                        }
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hãy điền địa chỉ của bạn!';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Địa chỉ mới của bạn',
                  border: OutlineInputBorder(),
                ),
                controller: addressController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      addAddress(addressController.text);
                      addressController.clear();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Địa chỉ đã được thêm!')),
                      );
                    }
                  },
                  child: const Text(
                    'Thêm địa chỉ',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
