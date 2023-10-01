import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(ImageExample());

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Images Import'),
          ),
          body: ImageWidget()),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);  

@override
  Widget build(BuildContext context) {
    final String assetNamePath = 'assets/images/bali.jpg';
    // final String assetNameSvg = 'assets/subscribe.svg';
    // final String assetNameUrl = 'https://via.placeholder.com/150';

    AssetImage imageFromAssetImage = AssetImage(assetNamePath);
    // Image imageFromAsset = Image.asset(assetNameSvg, fit: BoxFit.cover);

    // Image imageFromNetwork = Image.network(assetNameUrl);

    // Image changedImage = Image(
    //   image: imageFromNetwork.image,
    //   color: Colors.green,
    //   colorBlendMode: BlendMode.color,
    // );

    // SvgPicture imageFromAssetSvg =
    //     SvgPicture.asset(assetNameSvg, fit: BoxFit.cover);

    return Container(
      constraints: BoxConstraints.expand(height: double.infinity),
      child: Image(image: imageFromAssetImage,fit: BoxFit.cover),
    );
  }
}