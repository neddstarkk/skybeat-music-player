import 'package:flutter/material.dart';
import 'package:skybeat/screens/explore_page/widgets/quarter_circle_painter.dart';


class GenreSelector extends StatelessWidget {
  final CircleAlignment circleAlignment;
  final Color color;

  GenreSelector(
      {this.circleAlignment = CircleAlignment.bottomRight,
      this.color = Colors.green});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 150.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) => Container(
                width: 150.0,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ClipRect(
                  child: CustomPaint(
                    painter: QuarterCirclePainter(
                      circleAlignment: circleAlignment,
                      color: color,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

