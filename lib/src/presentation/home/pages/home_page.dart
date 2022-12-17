import 'package:clean_arch_riverpod/src/about/ui/about.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../application/states/auth.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static const path = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your phenomenal app")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Home Page"),
            ListTile(
              title: Text('About'),
              trailing: Icon(Icons.forward),
              onTap: () {
                context.go(AboutPage.path);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});
  static const path = '/login';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Login Page"),
            ElevatedButton(
              onPressed: () async {
                ref.read(authNotifierProvider.notifier).login(
                      "myEmail",
                      "myPassword",
                    );
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static const path = '/splash';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Splash Page")),
    );
  }
}

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});
  static const path = 'admin';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Admin Page")),
    );
  }
}

class UserPage extends StatelessWidget {
  const UserPage({super.key});
  static const path = 'user';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("User Page")),
    );
  }
}

class GuestPage extends StatelessWidget {
  const GuestPage({super.key});
  static const path = 'guest';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Guest Page")),
    );
  }
}
