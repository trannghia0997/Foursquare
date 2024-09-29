import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/constants.dart';
import 'package:foursquare/shared/models/enums/user_role.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: isSmallScreen
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const _Logo(),
                      _FormContent(),
                    ],
                  )
                : Container(
                    padding: const EdgeInsets.all(32.0),
                    constraints: const BoxConstraints(maxWidth: 800),
                    child: Row(
                      children: [
                        const Expanded(child: _Logo()),
                        Expanded(
                          child: Center(child: _FormContent()),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(12.0), // Adjust the radius as needed
          child: Image(
            image: const AssetImage('assets/icon/icon.png'),
            height: isSmallScreen ? 100 : 200,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

class _FormContent extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPasswordVisible = useState(false);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final usernameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final passwordConfirmController = useTextEditingController();
    final nameController = useTextEditingController();
    final phoneController = useTextEditingController();

    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: usernameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Hãy nhập tên đăng nhập';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Tên đăng nhập',
                hintText: 'Tên đăng nhập',
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              controller: emailController,
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  bool isEmailValid = RegExp(validEmailPattern).hasMatch(value);
                  if (!isEmailValid) {
                    return 'Hãy điền đúng email';
                  }
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Email (tùy chọn)',
                hintText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              controller: passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Hãy điền mật khẩu';
                }
                return null;
              },
              obscureText: !isPasswordVisible.value,
              decoration: InputDecoration(
                labelText: 'Mật khẩu',
                hintText: 'Mật khẩu',
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(isPasswordVisible.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    isPasswordVisible.value = !isPasswordVisible.value;
                  },
                ),
              ),
            ),
            _gap(),
            TextFormField(
              controller: passwordConfirmController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Hãy xác nhận mật khẩu';
                }
                if (value != passwordController.text) {
                  return 'Mật khẩu không khớp';
                }
                return null;
              },
              obscureText: !isPasswordVisible.value,
              decoration: InputDecoration(
                labelText: 'Xác nhận mật khẩu',
                hintText: 'Xác nhận mật khẩu',
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(isPasswordVisible.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    isPasswordVisible.value = !isPasswordVisible.value;
                  },
                ),
              ),
            ),
            _gap(),
            TextFormField(
              controller: nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Hãy nhập tên';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Tên',
                hintText: 'Tên',
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              controller: phoneController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Hãy nhập số điện thoại';
                } else if (!RegExp(validVietnamesePhoneNumberPattern)
                        .hasMatch(value) &&
                    !RegExp(validInternationalPhoneNumberPattern)
                        .hasMatch(value)) {
                  return 'Hãy nhập đúng số điện thoại';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Số điện thoại',
                hintText: 'Số điện thoại',
                prefixIcon: Icon(Icons.phone_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Đăng ký',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () async {
                  // Validate form
                  if (!(formKey.currentState?.validate() ?? false)) {
                    return;
                  }
                  String enteredUsername = usernameController.text;
                  String enteredEmail = emailController.text;
                  String enteredPassword = passwordController.text;
                  String enteredName = nameController.text;
                  String enteredPhone =
                      RegExp(validVietnamesePhoneNumberPattern)
                              .hasMatch(phoneController.text)
                          ? "+84${phoneController.text.substring(1)}"
                          : phoneController.text;
                  try {
                    final userCreationDto = UserCreationDto(
                      username: enteredUsername,
                      email: enteredEmail,
                      emailVisibility: true,
                      password: enteredPassword,
                      passwordConfirm: enteredPassword,
                      name: enteredName,
                      avatarUrl: fallbackAvatarUrl,
                      phone: enteredPhone,
                      role: UserRole.customer,
                    );
                    await PBApp.instance.collection('users').create(
                          body: userCreationDto.toJson(),
                        );
                    if (!context.mounted) return;
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Đăng ký thành công'),
                          content: const Text("Vui lòng đăng nhập để tiếp tục"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                context.goNamed('login');
                              },
                              child: const Text('Đóng'),
                            ),
                          ],
                        );
                      },
                    );
                  } catch (e) {
                    if (!context.mounted) return;
                    if (kDebugMode) {
                      debugPrint(e.toString());
                    }
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Đăng ký thất bại'),
                          content: const Text("Kiểm tra thông tin tài khoản"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Đóng'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Quay lại trang đăng nhập',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  context.goNamed('login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
