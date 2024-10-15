import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/appbar.dart';

class MediaPlayer extends StatefulWidget {
  const MediaPlayer({super.key});

  @override
  State<MediaPlayer> createState() => _MediaPlayerState();
}

class _MediaPlayerState extends State<MediaPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Media Player')
    );
  }
}