import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '/src/utils/locator/locator.dart';
import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupDependency();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const App(),
    ),
  );
}
