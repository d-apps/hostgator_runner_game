import 'dart:ui';

import 'package:flame/animation.dart';
import 'package:flame/components/animation_component.dart';

class Player extends AnimationComponent {

  Size size;
  static String spriteSheet = "player/player-idle.png";

  Player(this.size):super(
      64, 64, Animation.sequenced(spriteSheet, 4, textureWidth: 64, textureHeight: 64, stepTime: 0.40)
  ){

    x = size.width / 9;
    y = size.height - (size.width / size.height) * 30 - 48;

  }

}