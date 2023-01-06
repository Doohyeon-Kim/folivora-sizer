import 'package:flutter/material.dart';
import 'package:folivora_sizer/folivora_sizer.dart';
import 'theme_view_model.dart';

void main() {
  runApp(ThemeViewModel(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ThemeViewModel.of(context)!.theme,
      builder: (BuildContext context, ThemeData themeData, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Folivora Package Test App',
          theme: themeData,
          home: const MyHomePage(title: 'Folivora'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Sizer.init(standardLogicalWidth: 393, standardLogicalHeight: 932);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("window width: ${Sizer.unitWidth.window}"),
                const SizedBox(
                  width: 24,
                ),
                Text("window height: ${Sizer.unitHeight.window}"),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("standard width: ${Sizer.unitWidth.standard}"),
                const SizedBox(
                  width: 24,
                ),
                Text("standard height: ${Sizer.unitHeight.standard}"),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("logical width 24: 24"),
                SizedBox(
                  width: 24,
                ),
                Text("logical height 24: 24"),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Text("unit width 24: ${Sizer.unitWidth.lp24}"),
            const SizedBox(
              height: 8,
            ),
            Text("unit height 24: ${Sizer.unitHeight.lp24}"),
          ],
        ),
      ),
    );
  }
}
