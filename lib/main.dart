import 'package:event/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: const Color.fromARGB(240, 102, 108, 230),
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      animationCurve: Curves.easeIn,
      fadeInChildWidget: SizedBox(
        child: Image.asset("assets/images/01c.jpg"),
      ),
      onFadeInEnd: () => debugPrint("On Fade In End"),
      nextScreen: const HomePage(),
    );

    // EasySplashScreen(
    //   backgroundImage: const AssetImage('assets/images/bg.png'),
    //   showLoader: true,
    //   loadingText: const Text("Loading..."),
    //   navigator: const HomePage(),
    //   durationInSeconds: 8,
    //   logo: Image.asset('assets/images/logo.png'),
    // );
  }
}
