import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp/src/domain/entities/settings.dart';
import 'package:flutter_otp/src/presentation/cubits/settings/settings_cubit.dart';

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController? listenApiController;
  TextEditingController? notifyApiController;
  TextEditingController? listenInterval;
  TextEditingController? sentInterval;
  TextEditingController? apiKeyController;
  bool notifyServer = false;
  bool hasChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings'), centerTitle: false),
      body: BlocBuilder<SettingsCubit, SettingsState>(
        bloc: context.read<SettingsCubit>(),
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(child: CircularProgressIndicator());
            },
            succeeded: (Settings settings) {
              listenApiController = TextEditingController(
                text: settings.listenApi,
              );
              notifyApiController = TextEditingController(
                text: settings.notifyApi,
              );
              listenInterval = TextEditingController(
                text: settings.listenInterval.toString(),
              );
              listenInterval = TextEditingController(
                text: settings.sentInterval.toString(),
              );
              apiKeyController = TextEditingController(text: settings.apiKey);
              if (!hasChanged) {
                notifyServer = settings.notifyServer;
              }
              hasChanged = true;

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        label: Text('Listen api'),
                      ),
                      controller: listenApiController,
                      keyboardType: TextInputType.url,
                      maxLines: 3,
                    ),
                    SizedBox(height: 16),
                    TextField(
                      decoration: const InputDecoration(
                        label: Text('Notify api'),
                      ),
                      controller: notifyApiController,
                      keyboardType: TextInputType.url,
                      maxLines: 3,
                    ),
                    SizedBox(height: 16),
                    TextField(
                      decoration: const InputDecoration(label: Text('API Key')),
                      controller: apiKeyController,
                      keyboardType: TextInputType.multiline,
                      maxLines: 2,
                    ),

                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              label: Text('Interval'),
                              prefix: Text('In seconds:'),
                            ),
                            controller: listenInterval,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              label: Text('Interval'),
                              prefix: Text('In seconds:'),
                            ),
                            controller: sentInterval,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        const Text('Notify to server'),
                        Checkbox(
                          value: notifyServer,
                          onChanged: (value) {
                            setState(() {
                              notifyServer = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              final newSettings = Settings(
                                null,
                                listenApi: listenApiController?.text ?? '',
                                notifyApi: notifyApiController?.text ?? '',
                                listenInterval: int.parse(
                                  listenInterval?.text ?? '30',
                                ),
                                sentInterval: int.parse(
                                  sentInterval?.text ?? '15',
                                ),
                                notifyServer: notifyServer,
                                apiKey: apiKeyController?.text ?? '',
                              );
                              context.read<SettingsCubit>().setSettings(
                                newSettings,
                              );
                              context.router.pop();
                            },
                            child: Text('Save'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
