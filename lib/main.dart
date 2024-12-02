import 'package:flutter/material.dart';
import 'stream.dart'; // Pastikan file ini sudah ada
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  int lastNumber = 0;
  late ColorStream colorStream;
  late StreamController<int> numberStreamController;
  late NumberStream numberStream;
  late StreamSubscription subscription;
  late StreamSubscription subscription2;
  String value = '';

  @override
  void initState() {
    super.initState();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;

    // Mengatur stream sebagai broadcast stream
    Stream stream = numberStreamController.stream.asBroadcastStream();

    // Subscription pertama
    subscription = stream.listen((event) {
      setState(() {
        value += '$event - '; // Menambahkan nilai ke string value
      });
    });

    // Subscription kedua
    subscription2 = stream.listen((event) {
      setState(() {
        value +=
            '$event - '; // Menambahkan nilai ke string value (dari subscription kedua)
      });
    });
  }

  void stopStream() {
    numberStreamController.close();
  }

  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    subscription2.cancel(); // Cancel subscription kedua
    super.dispose();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }

  void addError() {
    numberStreamController.addError("Error: Simulated error");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream | Tyase')),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(
            //   lastNumber == -1 ? "Error Occurred!" : lastNumber.toString(),
            //   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            // ),
            // Menambahkan Text(values) sesuai Langkah 5
            Text(" $value", style: const TextStyle(fontSize: 16)),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            ),
            ElevatedButton(
              onPressed: () => stopStream(),
              child: const Text('Stop Subscription'),
            ),
          ],
        ),
      ),
    );
  }
}
