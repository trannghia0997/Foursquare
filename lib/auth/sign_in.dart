import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/staff_info.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/constants.dart';
import 'package:foursquare/shared/models/enums/user_role.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
    final loginController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Hãy nhập email / tên đăng nhập';
                }
                bool isEmailValid = RegExp(validEmailPattern).hasMatch(value);
                bool isUsernameValid =
                    RegExp(validUsernamePattern).hasMatch(value);
                if (!isEmailValid && !isUsernameValid) {
                  return 'Hãy điền đúng email hoặc tên đăng nhập';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Email',
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
                    'Đăng nhập',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () async {
                  // Always sign out before sign in
                  PBApp.instance.authStore.clear();
                  // Validate form
                  if (!(formKey.currentState?.validate() ?? false)) {
                    return;
                  }
                  String enteredUsernameOrEmail = loginController.text;
                  String enteredPassword = passwordController.text;
                  try {
                    await PBApp.instance.collection('users').authWithPassword(
                        enteredUsernameOrEmail, enteredPassword);
                    final userInfo =
                        UserDto.fromRecord(PBApp.instance.authStore.model);
                    // Read staff info if user is staff
                    if (userInfo.role == UserRole.staff) {
                      await ref.read(staffInfoByUserProvider(
                        userInfo.id,
                      ).future);
                    }
                  } catch (e) {
                    if (!context.mounted) return;
                    if (kDebugMode) {
                      debugPrint(e.toString());
                    }
                    await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Đăng nhập thất bại'),
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
                    return;
                  } finally {
                    if (context.mounted) {
                      context.goNamed('home');
                    }
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Đăng ký',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward_rounded),
                    ],
                  ),
                ),
                onPressed: () async {
                  context.goNamed('signup');
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
