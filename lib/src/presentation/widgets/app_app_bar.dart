import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp/app/router/app_router.gr.dart';
import 'package:flutter_otp/src/presentation/cubits/message/message_cubit.dart';

class AppAppBar extends StatefulWidget implements PreferredSizeWidget {
  const AppAppBar({super.key, required this.title});
  final String title;

  @override
  State<AppAppBar> createState() => _AppAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppAppBarState extends State<AppAppBar> {
  late MessageCubit _messageCubit;

  @override
  void initState() {
    super.initState();
    _messageCubit = context.read<MessageCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      actions: [
        IconButton(
          onPressed: () {
            context.router.push(SettingsRoute());
          },
          icon: Icon(Icons.settings),
        ),
        IconButton(
          onPressed: () {
            _messageCubit.getMessages();
          },
          icon: Icon(Icons.refresh),
        ),
        BlocBuilder<MessageCubit, MessageState>(
          bloc: _messageCubit,
          builder: (context, state) {
            final stopped = state.maybeWhen(
              orElse: () => true,
              started: () => false,
              sending: () => false,
              sent: (sentMessage) => false,
            );
            return IconButton(
              icon: Icon(stopped ? Icons.play_arrow : Icons.pause),
              onPressed: () {
                if (stopped) {
                  _messageCubit.start();
                } else {
                  _messageCubit.stop();
                }
              },
            );
          },
        ),
      ],
    );
  }
}
