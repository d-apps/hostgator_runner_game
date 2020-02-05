import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';

class Ground extends Component {

  Rect rect;
  double groundSize;
  Sprite sprite = Sprite("bg/ground.png");

  Size size;

  double groundInitialPositionX;
  double groundInitialPositionY;

  double newPositionX;

  Ground(this.size){

    groundSize = size.width / size.height * 30;
    print(groundSize);

    rect = Rect.fromLTWH(groundInitialPositionX, size.height - groundSize, groundSize, groundSize);

  }

  @override
  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }

  @override
  void update(double t) {

  }



}