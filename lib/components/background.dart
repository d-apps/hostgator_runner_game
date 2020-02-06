import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';

class Background extends Component {

  Size size;

  Sprite sprite;
  //Rect bgRect;
  int speed;
  List<Rect> rects = [];

  Background({this.size, this.sprite, this.speed}){

    //bgRect = Rect.fromLTWH(0, 0, size.width, size.height);
    rects.add(Rect.fromLTWH(0, 0, size.width, size.height));
    rects.add(Rect.fromLTWH(size.width, 0, size.width +1, size.height));

  }

  void render(Canvas canvas){

    rects.forEach((rect) {
      sprite.renderRect(canvas, rect);
    });

  }

  void update(double dt){

    if(rects.isNotEmpty){

      for(int i =0; i < rects.length; i++){
        rects[i] = rects[i].translate(speed * dt, 0);

        //print("RIGHT: ${rects[0].right}");
        //print("METADE DO WIDTH: ${size.width / 2}");

        if(rects[i].right <= -1){

          rects.add(Rect.fromLTWH(size.width + 1, 0, size.width +1, size.height));
          //print("ADICIONOU NOVO BACKGROUND!");

        }

        if(rects[i].right <= -1){

          rects.remove(rects[i]);
          //print("REMOVEU BACKGROUND: $i");

        }


      }



    }

  }

}