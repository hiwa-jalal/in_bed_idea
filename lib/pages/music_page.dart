import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inbedidea/components/audio_card_wiget.dart';
import 'package:inbedidea/services/custom_controller.dart';


//void myBackgroundTaskEntrypoint() {
//  AudioServiceBackground.run(() => MyBackgroundTask());
//}

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  CustomController controller = CustomController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AudioCard(
                  onTap: () => controller.playOne(Player.white),
                  imagePath: 'white_noise.png'),
              AudioCard(
                imagePath: 'brown_noise.png',
                onTap: () => controller.playOne(Player.brown),
              ),
              AudioCard(
                imagePath: 'fire.png',
                onTap: () => controller.playOne(Player.fire),
              ),
              AudioCard(
                imagePath: 'fan.png',
                onTap: () => controller.playOne(Player.fan),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//class MyBackgroundTask extends BackgroundAudioTask {
//  @override
//  Future<void> onStart() async {
//    _player.play();
//  }
//
//  @override
//  void onStop() {
//    print('onStop');
//  }
//
//  @override
//  void onPlay() {
//    _player.play();
//    print('onPlay');
//  }
//
//  @override
//  void onPause() {
//    print('onPause');
//  }
//
//  @override
//  void onClick(MediaButton button) {
//    print('onClick');
//  }
//}
//
//void connect() async {
//  AudioService.connect();
//}
