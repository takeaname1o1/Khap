import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:khap/res/constants.dart';
import 'package:khap/view%20model/getx_controllers/certification_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
// For testing purposes, you should probably use https://pub.dev/packages/uuid.
String randomString() {
  final random = Random.secure();
  final values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}

class GlobalChat extends StatelessWidget {
  final controller = Get.put(CertificationController());
  GlobalChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatUI(),
    );
  }
}

class ChatUI extends StatefulWidget {
  const ChatUI({super.key});

  @override
  State<ChatUI> createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
 final _gemini = Gemini.instance;


  @override
  void initState() {
    super.initState();
    Gemini.init(apiKey: 'AIzaSyA3JDrCi8gNzYkBpgokfgW_o2GIN3Xx5bI');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Chat(
      messages: _messages,
      onSendPressed: _handleSendPressed,
      user: _user,
      theme: const DefaultChatTheme(
        primaryColor: Color.fromRGBO(37, 7, 75, 1.0),
        inputBackgroundColor: Color.fromRGBO(255, 255, 255, 0.36),
        backgroundColor: bgColor,
        inputTextColor: Colors.black,
        inputTextDecoration: InputDecoration(
          hintText: 'Type a message...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ),
  );

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) async {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    _addMessage(textMessage);

    try {
      final response = await _gemini.streamGenerateContent(message.text).first;
      final botMessageText = response.output ?? 'Error: No response';
      
      final botMessage = types.TextMessage(
        author: const types.User(id: 'bot'),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: randomString(),
        text: botMessageText,
      );

      _addMessage(botMessage);
    } catch (e) {
      print('Error: $e');
    }
  }
}