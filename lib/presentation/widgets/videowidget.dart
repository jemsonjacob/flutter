import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            'https://dnm.nflximg.net/api/v6/BvVbc2Wxr2w6QuoANoSpJKEIWjQ/AAAAQTnr7EfrCd61W8HAp3ZrXHc-aw7s1UmFG1DSi7wzs-_qx5_jUQg49GOUJ7zz9jYM7JNJV4PDxXGiF4EmH1b1hJ_mET8nVSfYdoOEF3EVAjg33_evJFawky2PYPL4kcpeFBbbD_X0xbHx9MREAaY2Ud66VdY.jpg?r=903',
            fit: BoxFit.cover,
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
