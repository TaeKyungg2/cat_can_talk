import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = [];
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _messages.insert(0, ChatMessage(text: text, isUserMessage: true));
      // TODo: Replace with actual LLM call
      _messages.insert(
        0,
        ChatMessage(text: '너가 $text 라고 하다니?', isUserMessage: false),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/cat_back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
            const Divider(height: 1, thickness: 5),
            Container(
              decoration: BoxDecoration(color: Color.fromARGB(53, 0, 225, 255)),
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextComposer() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 400,
            height: 60,
            child: TextField(
              style: GoogleFonts.andika(
                fontSize: 30,
                color: Color.fromARGB(255, 210, 144, 0),
              ),
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration(
                hintText: 'cat hear your talk',
                hintStyle: TextStyle(
                  color: Color.from(alpha: 2, red: 5, green: 5, blue: 7),
                ),
              ),
              maxLines: null,
              keyboardAppearance: Brightness.light,
              textInputAction: null,
              expands: true,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(72, 0, 162, 255),
              shape: BoxShape.circle,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              icon: const Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    required this.text,
    required this.isUserMessage,
    super.key,
  });

  final String text;
  final bool isUserMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: isUserMessage
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: <Widget>[
          if (!isUserMessage) ...[
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 216, 140, 0),
              child: Text('🐱'),
            ),
            const SizedBox(width: 8.0),
          ],
          Flexible(
            child: Column(
              crossAxisAlignment: isUserMessage
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  isUserMessage ? '나' : '고양이',
                  style: GoogleFonts.belanosima(),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: isUserMessage
                        ? const Color.fromARGB(255, 80, 220, 255)
                        : const Color.fromARGB(255, 255, 225, 0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(text, style: GoogleFonts.abrilFatface()),
                ),
              ],
            ),
          ),
          if (isUserMessage) ...[
            const SizedBox(width: 8.0),
            const CircleAvatar(
              child: null,
              backgroundColor: Color.fromARGB(235, 37, 0, 0),
            ),
          ],
        ],
      ),
    );
  }
}
