import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 16),
          SizedBox(
            height: 150,
            child: PageView(controller: controller, children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/img1.jpeg')),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.redAccent,
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/img2.jpeg')),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.redAccent,
                  ),
                ),
              )
            ]),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8),
            child: Text("Сүүлийн үеийн"),
          ),
          Container(
            child: SmoothPageIndicator(
              controller: controller,
              count: 2,
              effect: WormEffect(),
            ),
          ),
        ],
      ),
    );
  }
}
