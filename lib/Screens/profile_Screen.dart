import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../API_COLLECTION.dart';
class ProfileScreen extends StatefulWidget {

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //InAppWebViewController? _webViewController;

  InAppWebViewController? _webViewController;
  bool _isLoading = true;
  @override
  Widget build(BuildContext context) {



    return
      SafeArea(
        child: Scaffold(
          body:

          Stack(
            children: [
              InAppWebView(
                initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                        supportZoom: false
                    )
                ),
                initialUrlRequest: URLRequest(

                  url: Uri.parse(PROFILE_PAGE_URL),
                ),
                onWebViewCreated: (controller) {
                  _webViewController = controller;
                },
                onLoadStart: (controller, url) {
                  setState(() {
                    _isLoading = true;
                  });
                },
                onLoadStop: (controller, url) {
                  setState(() {
                    _isLoading = false;
                  });
                },
              ),
              if (_isLoading)
                Container(
                  color: Colors.white,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          ),


          /*      InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse('https://www.authortommiehinton.com/'),
          ),
        ),*/


        ),
      );
  }
}