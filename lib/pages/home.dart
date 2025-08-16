import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Breakfast',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true, // can giua cho tieu de
        leading: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: const Icon(Icons.arrow_back, color: Colors.black),
          // child: SvgPicture.asset(
          //   'assets\icon\Arrow - Left 2.svg',
          //   cacheColorFilter: true,
          // ),
          decoration: BoxDecoration(
            color: Color(0xff),
            borderRadius: BorderRadius.circular(10),
          ), // tao box cho nut back
        ),
      ),
    );
  }

  Future<PictureInfo> _loadSvg(BuildContext context, String asset) async {
    final svgString = await DefaultAssetBundle.of(context).loadString(asset);
    final pictureInfo = await vg.loadPicture(SvgStringLoader(svgString), null);
    return pictureInfo;
  }
}
