import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/SplashScreen.dart';
import 'package:loan_guide/view/UiScreen/IntroScreen.dart';
import 'package:loan_guide/view/UiScreen/MainScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (value) => runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: "/", page: () => const SplashScreen()),
          GetPage(name: "/IntroScreen", page: () => const IntroScreen()),
          GetPage(name: "/MainScreen", page: () => const MainScreen()),
        ],
      ),
    ),
  );
}
