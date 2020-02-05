import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/resizable.dart';
import 'package:flame/sprite.dart';

class Ground extends Component with Resizable {

  Rect rect;
  static double groundSize;

  Sprite sprite = Sprite("bg/ground.png");


  double groundPositionX;
  double index;
  double groundPositionY;



  Ground(this.index);

  @override
  void resize(Size size) {
    super.resize(size);
    groundSize = size.width / size.height * 30;
    groundPositionX = (size.width / size.height * 30) * index;
    groundPositionY = size.height - groundSize;
    rect = Rect.fromLTWH(groundPositionX, groundPositionY, groundSize, groundSize);

    //print("POSIÇÃO X: $groundPositionX");

  }

  @override
  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }

  @override
  void update(double t) {

  }



}