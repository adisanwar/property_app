import 'package:flutter/material.dart';

class BarChartAnimation extends StatefulWidget {
  @override
  _BarChartAnimationState createState() => _BarChartAnimationState();
}

class _BarChartAnimationState extends State<BarChartAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  final List<double> data = [0.3, 0.6, 0.8, 0.4, 0.9]; // Data bar chart

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Bar Chart Animation'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < data.length; i++)
                  Bar(
                    height: 200 * _animation.value * data[i],
                    label: 'Bar ${i + 1}',
                    value: data[i],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Bar extends StatelessWidget {
  final double height;
  final String label;
  final double value;

  const Bar(
      {Key? key,
      required this.height,
      required this.label,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(height: 10),
        Text(label),
        Text('${(value * 100).toStringAsFixed(1)}%'),
      ],
    );
  }
}
