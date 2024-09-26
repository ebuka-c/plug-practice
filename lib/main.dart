import 'package:global_plug/utilities/imports/general_import.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  AppBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Global Plug',
      theme: AppThemes.lightTheme,
      getPages: RoutePages.routes,
      // initialRoute: AppRoutes.nigerianPersonalInfo,
    );
  }
}
