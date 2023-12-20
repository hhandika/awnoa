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
                SettingRadioTile(
                  value: ThemeMode.light,
                  title: 'Light',
                  groupValue: theme,
                  onChanged: (value) =>
                      ref.read(themeSettingProvider.notifier).setTheme(value!),
                ),
                SettingRadioTile(
                  value: ThemeMode.dark,
                  title: 'Dark',
                  groupValue: theme,
                  onChanged: (value) =>
                      ref.read(themeSettingProvider.notifier).setTheme(value!),
                ),
                SettingRadioTile(
                  value: ThemeMode.system,
                  title: 'System',
                  groupValue: theme,
                  onChanged: (value) =>
                      ref.read(themeSettingProvider.notifier).setTheme(value!),
                ),
              ],
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(child: Text(error.toString())),
          ),
    );
  }
}

class SettingRadioTile extends StatelessWidget {
  const SettingRadioTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
  });

  final ThemeMode value;
  final ThemeMode groupValue;
  final void Function(ThemeMode?) onChanged;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2),
        child: RadioListTile(
          value: value,
          title: Text(title),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          tileColor:
              Theme.of(context).colorScheme.secondaryContainer.withAlpha(100),
          groupValue: groupValue,
          onChanged: onChanged,
        ));
  }
}
