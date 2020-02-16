import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';

class Background extends Component {

  Size size;
  Sprite sprite;
  int speed;
  List<Rect> backgrounds;

  Background({this.size, this.sprite, this.speed}){

    backgrounds = [];
    backgrounds.add(Rect.fromLTWH(0, 0, size.width, size.height));
    backgrounds.add(Rect.fromLTWH(size.width, 0, size.width, size.height));

  }

  void render(Canvas canvas){

    backgrounds.forEach((rect) {
      sprite.renderRect(canvas, rect);
    });


  }

  void update(double dt){


      for(int i = 0; i < backgrounds.length; i++){

        // Move background
        backgrounds[i] = backgrounds[i].translate(speed * dt, 0);

        //print("LEFT: ${backgrounds[i].left.toInt()}");
        print("RIGHT: ${backgrounds[i].right.toInt()}");


        if(backgrounds[i].right.toInt() == size.width + 10){
          addBackground();
        }

        if(backgrounds[i].right.toInt() <= -1){
          removeBackground(i);
        }

      }

      print("LENGTH: ${backgrounds.length}");


    }

    void addBackground(){

      print("ADICIONOU BACKGROUND!");

      backgrounds.add(Rect.fromLTWH(size.width + 10.0, 0, size.width, size.height));

    }

    void removeBackground(int i){
      backgrounds.removeAt(i);
      print("REMOVEU O BACKGROUND: $i");

    }

  }
