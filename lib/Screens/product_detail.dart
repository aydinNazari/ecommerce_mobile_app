import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  /*final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse('https://flutter.dev/'));*/
  final WebViewController controller = WebViewController();
  final String url = 'https://sketchfab.com/3d-models/shoes-mockup-asset-vans-skate-old-skool-shoes-8d8cecbddb7a4d7b8be72c5e3ec86c72';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: size.width / 25,
            ),
            child: Icon(
              Icons.menu,
              size: size.width / 15,
            ),
          )
        ],
        title: Text(
          'Snekers Detaile',
          style: TextStyle(
            fontSize: size.width / 20,
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          size: size.width / 15,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height,
              child: WebViewWidget(
                controller: controller,
              ),
            )
          ],
        ),
      ),
    );
  }
}
