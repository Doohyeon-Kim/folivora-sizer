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
    Sizer.init(logicalWidth: 393, logicalHeight: 852);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text("${Sizer.unitWidth.lp24}"),
                Text("${Sizer.unitHeight.lp24}"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
