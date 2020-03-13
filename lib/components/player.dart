import 'dart:ui';

import 'package:flame/animation.dart';
import 'package:flame/components/animation_component.dart';

class Player extends AnimationComponent {

  Size size;

  Player(this.size):super(
      64, 64, Animation.sequenced("player/player-idle.png", 4, textureWidth: 64, textureHeight: 64, stepTime: 0.40)
  ){

    x = size.width / 9;
    y = size.height -118;

  }

  void idle(){

    print("CORRENDO!");

    animation = Animation.sequenced("player/player-idle.png", 4, textureWidth: 64, textureHeight: 64, stepTime: 0.40);

  }

  void run(){

    animation = Animation.sequenced("player/player-run.png", 10, textureWidth: 64, textureHeight: 64, stepTime: 0.05,);

  }

  void jump(){

    print("PULOU!!");

    //animation = Animation.sequenced("player/player-jump.png", 2, textureWidth: 64, textureHeight: 64, stepTime: 0.40);
    //this.toRect().translate(0, size.height - 118);
  }

  void hurt(){

    print("MORREU!!");

    animation = Animation.sequenced("player/player-hurt.png", 2, textureWidth: 64, textureHeight: 64, stepTime: 0.40);

  }

}