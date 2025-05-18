import 'package:flutter/material.dart';
import 'package:netflixx/presentation/widgets/videowidget.dart';

class CominSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterpath;
  final String moviename;
  final String description;

  const CominSoonWidget({
    super.key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterpath,
    required this.moviename,
    required this.description,
  });

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
              Text(month),
              Text(
                day,
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
              VideoWidget(url: posterpath),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      moviename,
                      maxLines: 1,
                      overflow: TextOverflow.clip,

                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
              Text('Coming on $month$day', style: TextStyle(fontSize: 18)),
              Text(
                description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
