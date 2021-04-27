import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'story.dart';


final storyProvider = Provider((ref)=>StoryBoard());
final storyChange = ChangeNotifierProvider((ref) => StoryBoard());
class StoryBoard with ChangeNotifier{
int num = 0;

  List<Story> _storyOrder = [

    Story(backgroundImage:
    'images/image0.jpg',
        title: 'Rise of Junga Bahadur',
        choice1: 'start',
        choice2: ''),

    Story(backgroundImage:
    'images/image1.jpg',
        title: 'Impress the king Rajendra Bikram Shah and become captain',
        choice1: 'Jump from dharhara',
        choice2: 'Accompanying with him during terai visit'),

    Story(backgroundImage: 'images/image2.jpg',

        title: 'Create the Power vacuum',
        choice1: 'Kill the prime minster Mathabarsingh Thapa ',
        choice2: 'Kill the Crown Prince '),


    Story(backgroundImage:
    'images/image3.jpg',
      title: 'Dismantle queen power',
      choice1: 'Kill the king ',
      choice2: 'Kill Army Chief Gagan Singh ',
    ),


    Story(backgroundImage:
    'images/image4.jpg',
      title: 'Becomes Prime minster',
      choice1: 'Massacre of all the powerful person in kot parva',
      choice2: 'Kill the queen ',
    ),


    Story(backgroundImage:
    'images/image5.jpg',
      title: 'Eliminated all opposition and exiled the Queen ',
      choice1: 'Another Mass Massacre i.e Bhandarkhal Parva ',
      choice2: 'Alau massacre ',
    ),


    Story(backgroundImage:
    'images/image6.jpg',
        title: 'Junga Bahadur and his families rules for 108 years',
        choice1: 'Re-start',
        choice2: ''

    ),
  ];


  void onTouch(String choice){
   if(num == 0 && _storyOrder[num].choice1 == choice){
     num = 1;

   }else if(num == 1 &&_storyOrder[num].choice2 == choice){
     num = 2;
   }else if(num == 2 &&_storyOrder[num].choice1 == choice){
     num = 3;
   }else if(num == 3 &&_storyOrder[num].choice2 == choice) {
     num = 4;
   }else if(num == 4 &&_storyOrder[num].choice1 == choice) {
     num = 5;
   }else if(num == 5 &&_storyOrder[num].choice1 == choice) {
     num = 6;
   }else if(num == 6 &&_storyOrder[num].choice1 == choice) {
     num = 0;
   }else{
     num = 0;
   }
   notifyListeners();


  }


  List<Story> get story{
    return [..._storyOrder];
  }





}