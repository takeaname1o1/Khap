import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:khap/view%20model/getx_controllers/form_controller.dart';

// Controller for the image gallery (if needed)
//final ImageGalleryController galleryController = ImageGalleryController(initialPage: 2);

class Maps extends StatefulWidget {
  final controller = Get.put(FormController());

  Maps({Key? key}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late Future<String?> memeFuture;

  @override
  void initState() {
    super.initState();
    memeFuture = fetchMemeUrl();
  }

  Future<String?> fetchMemeUrl() async {
    final response = await http.get(Uri.parse('https://meme-api.com/gimme'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return jsonData['url'];
    } else {
      throw Exception('Failed to load meme');
    }
  }

  void reloadMeme() {
    setState(() {
      memeFuture = fetchMemeUrl();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meme Explorer'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: reloadMeme,
          ),
        ],
      ),
      body: FutureBuilder<String?>(
        future: memeFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return Center(
              child: Image.network(snapshot.data!),
            );
          } else {
            return Center(child: Text('No meme found'));
          }
        },
      ),
    );
  }
}
