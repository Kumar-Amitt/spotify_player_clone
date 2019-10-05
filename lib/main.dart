import 'package:flutter/material.dart';
import 'package:spotify_player_clone/song.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Best of Hindi',
            ),
          ),
        ),
        body: SpotifyPlayer(),
        backgroundColor: Colors.black,
      ),
    ),
  );
}

class SpotifyPlayer extends StatefulWidget {
  @override
  _SpotifyPlayerState createState() => _SpotifyPlayerState();
}

class _SpotifyPlayerState extends State<SpotifyPlayer> {
  List<Song> allSongs = SongData().songs;

  Icon playPause = Icon(Icons.play_circle_filled);
  int result = 0;
  AudioPlayer audioPlayer = AudioPlayer();
  String name;
  String playUrl;
  String imageUrl;
  String artistName;
  int turn = 0;

  void player() {
    name = allSongs[turn].name;
    playUrl = allSongs[turn].playUrl;
    imageUrl = allSongs[turn].imageUrl;
    artistName = allSongs[turn].artistName;
  }

  void play() async {
    setState(() {
      switch (result) {
        case 0:
          audioPlayer.play(playUrl);
          result = 1;
          playPause = Icon(Icons.pause_circle_filled);
          break;
        case 1:
          audioPlayer.pause();
          playPause = Icon(Icons.play_circle_filled);
          result = 0;
          break;
      }
    });
  }

  void nextSong() {
    setState(() {
      turn++;
      turn = turn % allSongs.length;
      player();
      result = 0;
      play();
    });
  }

  void prevSong() {
    setState(() {
      turn--;
      turn = turn == -1 ? allSongs.length - 1 : turn;
      player();
      result = 0;
      play();
    });
  }

  @override
  Widget build(BuildContext context) {
    player();
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 9,
              child: Image(
                image: NetworkImage(imageUrl),
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(color: Colors.white, fontSize: 24,),
                  ),
                  Text(
                    artistName,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        icon: Icon(Icons.thumb_up),
                        color: Colors.white,
                        iconSize: 28,
                        onPressed: () => {}),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        icon: Icon(Icons.skip_previous),
                        color: Colors.white,
                        iconSize: 32,
                        onPressed: prevSong),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconButton(
                      icon: playPause,
                      color: Colors.white,
                      iconSize: 56,
                      onPressed: play,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        icon: Icon(Icons.skip_next),
                        color: Colors.white,
                        iconSize: 32,
                        onPressed: nextSong),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        icon: Icon(Icons.thumb_down),
                        color: Colors.white,
                        iconSize: 28,
                        onPressed: () => {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
