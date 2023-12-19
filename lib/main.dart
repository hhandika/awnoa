import 'package:awnoa/providers/settings.dart';
import 'package:awnoa/screens/home/home.dart';
import 'package:awnoa/styles/theme.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  runApp(ProviderScope(
      overrides: [settingProvider.overrideWithValue(prefs)],
      child: const AwnoaApp()));
}

class AwnoaApp extends ConsumerWidget {
  const AwnoaApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
      return MaterialApp(
        title: 'AWNOA Species ID',
        debugShowCheckedModeBanner: false,
        theme: AwnoaTheme.lightTheme(lightColorScheme),
        darkTheme: AwnoaTheme.darkTheme(darkColorScheme),
        themeMode: ref.watch(themeSettingProvider).when(
              data: (theme) => theme,
              loading: () => ThemeMode.system,
              error: (error, stackTrace) => ThemeMode.system,
            ),
        home: const AwnoaHome(),
      );
    });
  }
}
