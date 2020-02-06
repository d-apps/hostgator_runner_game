import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';

class Background extends Component {

  Size size;
  Sprite sprite;
  int speed;
  List<Rect> rects = [];

  Background({this.size, this.sprite, this.speed}){

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

        if(rects[i].right <= -1){

          // Adiciona o background na lista
          rects.add(Rect.fromLTWH(size.width + 1, 0, size.width +1, size.height));

        }

        if(rects[i].right <= -1){

          // Remove o background da lista ao sair da tela
          rects.remove(rects[i]);

        }


      }



    }

  }

}