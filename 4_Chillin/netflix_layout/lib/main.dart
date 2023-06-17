import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const redColor = Color(0xFFD61E21);
const greyColor = Color(0xFF8D8E98);

const kTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
);

void main() => runApp(NetflixScreen());

class NetflixScreen extends StatelessWidget {
  const NetflixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: NetflixPage(),
    );
  }
}

class NetflixPage extends StatefulWidget {
  const NetflixPage({super.key});

  @override
  State<NetflixPage> createState() => _NetflixPageState();
}

class _NetflixPageState extends State<NetflixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: redColor,
        title: Text('Netflix'),
        elevation: 0,
      ),
      body: VideoPlayer(),
    );
  }
}

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  double height = 20.0;
  double sizeIcon = 40.0;
  String titleTVShow = 'The Bold Type: The New Normal';
  String seasonEpisode = 'S03:E01';
  double _value = 20;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: height,
          ),
          Icon(
            Icons.expand_more,
          ),
          SizedBox(
            height: height,
          ),
          Text(
            titleTVShow,
            style: kTitleTextStyle,
          ),
          SizedBox(
            height: height,
          ),
          Text(
            seasonEpisode,
          ),
          SizedBox(
            height: height,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.speaker_notes),
              Icon(Icons.volume_up),
              Icon(Icons.star_rate),
              Icon(Icons.content_copy),
            ],
          ),
          SizedBox(
            height: height,
          ),
          AspectRatio(
            aspectRatio: 1.6,
            child: Image.asset(
              'images/theboldtype.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: height,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: redColor,
              activeTrackColor: redColor,
              inactiveTrackColor: greyColor,
            ),
            child: Slider(
              min: 0.0,
              max: 100.0,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.replay,
                size: sizeIcon,
              ),
              Icon(
                Icons.play_arrow,
                size: sizeIcon,
              ),
              Icon(
                Icons.pause,
                size: sizeIcon,
              ),
            ],
          ),
          SizedBox(
            height: height,
          ),
        ],
      ),
    );
  }
}
