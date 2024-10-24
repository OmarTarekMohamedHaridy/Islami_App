import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart' hide Radio;
import 'package:islami/home/tabs/radio_model.dart';

class EditRadio extends StatefulWidget {
  final AudioPlayer player;
  final Radios radio;

  EditRadio({super.key, required this.radio, required this.player});

  @override
  State<EditRadio> createState() => _EditRadioState();
}

class _EditRadioState extends State<EditRadio> {
  bool isPlaying = false; // Track if the audio is playing

  Future<void> togglePlayPause() async {
    if (isPlaying) {
      await widget.player.pause();
    } else {
      await widget.player.play(UrlSource(widget.radio.url ?? ""));
    }
    setState(() {
      isPlaying = !isPlaying; // Toggle the state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 57),
        child: Text(
          widget.radio.name ?? "",
          style: TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: togglePlayPause,
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow,
              size: 40,
            ),
          ),
        ],
      ),
    ]);
  }
}
