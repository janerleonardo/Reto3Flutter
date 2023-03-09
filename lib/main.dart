import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF02BB9F),
        primaryColorDark: const Color(0xFF167F67),
        //accentColor: const Color(0xFF02BB9F),
      ),
      home:  const MyHomePage(title: 'Flutter Clip Path'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ required this.title}) : super();
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(color:Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ClipPath(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.blue,
          ),
          clipper: CustomClipPath(),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(30, 10));
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}