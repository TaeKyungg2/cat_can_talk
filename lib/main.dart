import 'package:flutter/material.dart';
import 'chat_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Cat Can Talk', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color:Color.fromRGBO(89, 89, 89, 1) ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: null,
        spacing: 50,
        children: [
          Image(image: AssetImage('assets/cat.gif'), colorBlendMode: null, fit: null, isAntiAlias: false, width: 300),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatPage()),
              );
            },
            color: Color.fromARGB(255, 255, 209, 2),
            textTheme: null,
            elevation: 30,
            colorBrightness: null,
            focusElevation: 40,
            highlightElevation: 40,
            autofocus: true,
            height: 60,
            hoverElevation: 50,
            child: Text(
              style: GoogleFonts.aDLaMDisplay(),
              'Go to talk with cat!🐈‍⬛',
              textDirection: TextDirection.ltr,
              softWrap: null,
            ),
          ),
        ],
      ),
    );
  }
}
