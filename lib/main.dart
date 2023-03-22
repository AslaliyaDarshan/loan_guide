import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/UiScreen/SplashScreen.dart';
import 'package:loan_guide/view/UiScreen/IntroScreen.dart';
import 'package:loan_guide/view/UiScreen/MainScreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (value) => runApp(
      ResponsiveSizer(
        builder: (p0, p1, p2) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: [
            GetPage(name: "/", page: () => const SplashScreen()),
            GetPage(name: "/IntroScreen", page: () => const IntroScreen()),
            GetPage(name: "/MainScreen", page: () => const MainScreen()),
          ],
        ),
      ),
    ),
  );
}
