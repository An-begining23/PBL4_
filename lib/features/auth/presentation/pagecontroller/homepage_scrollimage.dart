import'package:flutter/material.dart';
import 'package:my_app/features/auth/presentation/pages/User/home_page.dart';
import 'package:my_app/features/auth/presentation/pages/User/message_page.dart';

class HomePage_ScrollImage extends StatefulWidget
{
  const HomePage_ScrollImage({super.key});
  @override
 State<HomePage_ScrollImage> createState()=> _HomePage_ScrollImageState();
}
class _HomePage_ScrollImageState extends State<HomePage_ScrollImage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slide Page with Scroll"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.large(
            pinned: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Home Page with Scroll'),
              background: Image.network(
                'https://example.com/your-image.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: <Widget>[
                Expanded(child: HomePage()),
                Container(height: 50, color: Colors.blue, child: Center(child: Text("Footer Area"))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}