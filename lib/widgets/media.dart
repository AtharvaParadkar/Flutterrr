import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/appbar.dart';
import 'package:gap/gap.dart';

class MediaPlayer extends StatefulWidget {
  const MediaPlayer({super.key});

  @override
  State<MediaPlayer> createState() => _MediaPlayerState();
}

class _MediaPlayerState extends State<MediaPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Media Player'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MusicPlayer(),
          ],
        ),
      ),
    );
  }
}

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool isAudioPlaying = false;
  Duration duration = Duration.zero, position = Duration.zero;

  @override
  void initState() {
    super.initState();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isAudioPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Asset Audio'),
        Gap(10),
        Slider(
          min: 0,
          max: duration.inSeconds.toDouble(),
          value: position.inSeconds.toDouble(),
          onChanged: (value) async {
            final position = Duration(seconds: value.toInt());
            await audioPlayer.seek(position);
            await audioPlayer.resume();
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Text(formatTime(position)),
              Spacer(),
              Text(formatTime(duration)),
            ],
          ),
        ),
        Gap(5),
        IconButton.filledTonal(
          iconSize: 30,
          onPressed: () async {
            if (isAudioPlaying) {
              await audioPlayer.pause();
            } else {
              // String url='https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';
              // await audioPlayer.play(UrlSource(url));
              await audioPlayer.play(AssetSource('audios/Ignite.m4a'));
            }
          },
          icon: Icon(isAudioPlaying ? Icons.pause : Icons.play_arrow),
        ),
      ],
    );
  }
}
