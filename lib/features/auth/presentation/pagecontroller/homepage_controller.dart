import 'package:flutter/material.dart';
import 'package:my_app/features/auth/presentation/pages/User/detailuser_page.dart';
import 'package:my_app/features/auth/presentation/pages/User/home_page.dart';
import 'package:my_app/features/auth/presentation/pages/User/message_page.dart';

class SlideHomePageWithController extends StatefulWidget {
  @override
  _SlideHomePageWithControllerState createState() =>
      _SlideHomePageWithControllerState();
}

class _SlideHomePageWithControllerState
    extends State<SlideHomePageWithController> {
  final PageController _controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slide Page with Controller")),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              controller: _controller,
              children: <Widget>[HomePage(), MessagePage()],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  _controller.jumpToPage(
                    _controller.page! > 0 ? _controller.page!.toInt() - 1 : 0,
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  _controller.jumpToPage(
                    _controller.page! < 2 ? _controller.page!.toInt() + 1 : 2,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
