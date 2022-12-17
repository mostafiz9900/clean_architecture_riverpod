import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../src/app.dart';
import 'package:flutter/material.dart';

import 'src/core/utils/state_logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(
      // observers: [StateLogger()],
      child: MyApp()));
}
