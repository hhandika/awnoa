import 'package:awnoa/providers/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppearanceScreen extends ConsumerStatefulWidget {
  const AppearanceScreen({super.key});

  @override
  AppearanceScreenState createState() => AppearanceScreenState();
}

class AppearanceScreenState extends ConsumerState<AppearanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appearance'),
      ),
      body: ref.watch(themeSettingProvider).when(
            data: (theme) => ListView(
              children: [
                ListTile(
                  title: const Text('Light'),
                  leading: Radio<ThemeMode>(
                    value: ThemeMode.light,
                    groupValue: theme,
                    onChanged: (value) => ref
                        .read(themeSettingProvider.notifier)
                        .setTheme(value!),
                  ),
                ),
                ListTile(
                  title: const Text('Dark'),
                  leading: Radio<ThemeMode>(
                    value: ThemeMode.dark,
                    groupValue: theme,
                    onChanged: (value) => ref
                        .read(themeSettingProvider.notifier)
                        .setTheme(value!),
                  ),
                ),
                ListTile(
                  title: const Text('System'),
                  leading: Radio<ThemeMode>(
                    value: ThemeMode.system,
                    groupValue: theme,
                    onChanged: (value) => ref
                        .read(themeSettingProvider.notifier)
                        .setTheme(value!),
                  ),
                ),
              ],
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(child: Text(error.toString())),
          ),
    );
  }
}
