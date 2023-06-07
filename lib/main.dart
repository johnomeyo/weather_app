import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/date.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 5);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade900,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                            Text(
                              "Nairobi",
                              style: myTextStyle,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: Lottie.network(
                            "https://assets5.lottiefiles.com/packages/lf20_xzgLBZ.json"),
                      ),
                      const MyDateTimeWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Column(
                        children: [
                          Text(
                            "24 ",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Heavy rain",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
