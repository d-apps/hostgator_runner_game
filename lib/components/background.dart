import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';

class Background extends Component {

  Size size;

  Sprite sprite;
  Rect bgRect;


  Background(this.size, this.sprite){

    bgRect = Rect.fromLTWH(0, 0, size.width, size.height);


  }

  void render(Canvas canvas){
    sprite.renderRect(canvas, bgRect);
  }

  void update(double dt){
    bgRect = bgRect.translate(10 * dt, 0);
  }

}