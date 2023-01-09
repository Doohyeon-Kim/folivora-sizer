import 'package:flutter/material.dart';
import 'package:folivora_sizer/folivora_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ResponsiveSizer responsiveSizer = ResponsiveSizer(context: context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Folivora"),
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
                Text("window width: ${responsiveSizer.unitWidth.window}"),
                const SizedBox(
                  width: 24,
                ),
                Text("window height: ${responsiveSizer.unitHeight.window}"),
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
                Text("logical width 4: 4"),
                SizedBox(
                  width: 24,
                ),
                Text("logical height 4: 4"),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("unit width 4: ${Sizer.unitWidth.lp4.toStringAsFixed(2)}"),
                const SizedBox(
                  width: 8,
                ),
                Text(
                    "unit height 4: ${Sizer.unitHeight.lp4.toStringAsFixed(2)}"),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "responsive width 4: ${responsiveSizer.unitWidth.lp4.toStringAsFixed(2)}"),
                const SizedBox(
                  width: 8,
                ),
                Text(
                    "responsive height 4: ${responsiveSizer.unitHeight.lp4.toStringAsFixed(2)}"),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Image(
              image: const AssetImage(
                  "assets/images/folivora-square-logo-transparent.png"),
              width: responsiveSizer.unitWidth.lp52,
              height: responsiveSizer.unitHeight.lp52,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text("Rebuild"))
          ],
        ),
      ),
    );
  }
}
