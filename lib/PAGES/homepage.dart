import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomePage extends StatelessWidget {
  late TextEditingController ttsEdiingController = TextEditingController();
  final FlutterTts fltts = FlutterTts();

  speakOut(text) {
    fltts.setLanguage("en-Us");
    fltts.setPitch(1.5);
    fltts.speak(text);
  }

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: Colors.black)),
                child: TextField(
                  controller: ttsEdiingController,
                  maxLines: null,
                  textAlign: TextAlign.justify,
                  textAlignVertical: TextAlignVertical.top,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Enter your text here...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
                onTap: () => speakOut(ttsEdiingController.text),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 99, 181),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Speak it out !!!",
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
