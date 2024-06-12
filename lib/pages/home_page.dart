import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia_flutter/components/my_drawer.dart';
import 'package:socialmedia_flutter/components/my_list_title.dart';
import 'package:socialmedia_flutter/components/my_post_button.dart';
import 'package:socialmedia_flutter/components/my_textfield.dart';
import 'package:socialmedia_flutter/database/firestore.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // firestore access
  final FirestoreDatabase _database = FirestoreDatabase();

  // post controller
  final TextEditingController newPostController = TextEditingController();

  // post message
  void postMessage() {
    // si el textfield no esta vacío
    if (newPostController.text.isNotEmpty) {
      String message = newPostController.text;
      _database.addPost(message);
    }

    // clear controller
    newPostController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MENSAJES'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: const MyDrawer(),
      body: Column(
        children: [
          // texfield for user
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                // textfield
                Expanded(
                  child: MyTextfield(
                      hintText: 'Dí algo...',
                      obscureText: false,
                      controller: newPostController),
                ),

                // post button
                MyPostButton(onTap: postMessage)
              ],
            ),
          ),

          // posts
          Expanded(
            child: StreamBuilder(
              stream: _database.getPostsStream(),
              builder: (context, snapshot) {
                // show loading circle
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                // get all posts
                final posts = snapshot.data!.docs;

                // no data?
                if (snapshot.data == null || posts.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Text('Sin Posts... Escribe algo'),
                    ),
                  );
                }

                // return as a list
                return ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    // get each individual post
                    final post = posts[index];

                    // get data from each post
                    String message = post['PostMessage'];
                    String userEmail = post['UserEmail'];
                    Timestamp timestamp = post['TimeStamp'];

                    // return as a list title
                    return MyListTitle(title: message, subTitle: userEmail);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
