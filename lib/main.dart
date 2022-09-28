import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myselfland/provider/main_provider.dart';
import 'package:myselfland/screen/splash_screen.dart';
import 'package:myselfland/utilites/constants.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarContrastEnforced: false,
    systemStatusBarContrastEnforced: false,
    statusBarBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return ChangeNotifierProvider<MainProvider>(
          create: (context) => MainProvider(),
          builder: (context, child) => MaterialApp(
            title: "myselfland",
            theme: ThemeData(
              splashColor: kMainColor,
              accentColor: kMainColor,
              scaffoldBackgroundColor: kMainColor,
              fontFamily: "DmSans",
              appBarTheme: Theme.of(context)
                  .appBarTheme
                  .copyWith(brightness: Brightness.light),
              brightness: Brightness.light,
            ),
            debugShowMaterialGrid: false,
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          ),
        );
      },
      designSize: const Size(375, 812),
    );
  }
}
