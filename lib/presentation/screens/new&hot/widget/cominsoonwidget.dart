import 'package:flutter/material.dart';
import 'package:netflixx/presentation/widgets/videowidget.dart';

class CominSoonWidget extends StatelessWidget {
  const CominSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 33,
          height: 400,
          child: Column(
            children: [
              Text('Feb'),
              Text(
                '11',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Tall Girl',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.alarm, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.info_sharp, color: Colors.white),
                  ),
                ],
              ),
              Text('Coming on Friday', style: TextStyle(fontSize: 18)),
              Text(
                'gsgdsdufgyadsvgvadshvgsvayucasyuyvsadvvvafhsdvuhvsdfghvhasvdghvghacvsvgvascggacvstyv',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
