import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pit_display/widgets/event/twitch_view_windows.dart';

class TwitchPage extends StatelessWidget {
  const TwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 7,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Platform.isWindows
                        ? const TwitchViewWindows()
                        : const Center(
                            child:
                                Text('Twitch stream only supported on windows'),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
