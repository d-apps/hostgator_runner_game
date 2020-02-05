import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';

class Ground extends Component {

  Rect rect;
  static double groundSize;
  Sprite sprite = Sprite("bg/ground.png");

  Size size;

  double groundPositionX;
  double index;
  double groundPositionY;


  Ground(this.size, this.index){

    groundSize = size.width / size.height * 30;

    groundPositionX = (size.width / size.height * 30) * index;

    //print("POSIÇÃO X: $groundPositionX");

    groundPositionY = size.height - groundSize;

    rect = Rect.fromLTWH(groundPositionX, groundPositionY, groundSize, groundSize);

  }

  @override
  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }

  @override
  void update(double t) {

  }



}