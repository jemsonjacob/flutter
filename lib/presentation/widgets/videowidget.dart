import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  final String url;
  const VideoWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            url,
            fit: BoxFit.cover,
            loadingBuilder: (
              BuildContext _,
              Widget child,
              ImageChunkEvent? progress,
            ) {
              if (progress == null) {
                return child;
              } else {
                return Center(child: CircularProgressIndicator(strokeWidth: 2));
              }
            },
            errorBuilder: (BuildContext _, Object a, StackTrace? trace) {
              return Center(child: Icon(Icons.wifi_off, color: Colors.white));
            },
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.volume_off)),
          ),
        ),
      ],
    );
  }
}
