import 'package:flutter/material.dart';
import 'package:flutter_app_ex/models/story_board.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final story = watch(storyChange).story;
    final num = watch(storyChange).num;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 5, child: Image.asset(story[num].backgroundImage)),
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                story[num].title,
                style: TextStyle(fontSize: 25, color: Colors.grey[800]),
                textAlign: TextAlign.center,
              ),
            )),
        Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                ),
                onPressed: () {
                  context.read(storyChange).onTouch(story[num].choice1);
                },
                child: Text(
                  story[num].choice1,
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ))),
        SizedBox(
          height: 20,
        ),
        Visibility(
          visible: story[num].choice2 == '' ? false : true,
          child: Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
              ),
              onPressed: () {
                context.read(storyChange).onTouch(story[num].choice2);
              },
              child: Text(
                story[num].choice2,
                style: TextStyle(fontSize: 20, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
