import 'dart:ui';

import 'package:flame/animation.dart';
import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/resizable.dart';
import 'package:flame/sprite.dart';


class Player extends Component with Resizable {

  Animation animation;
  final List<Sprite> idleSprites = [

    Sprite("player/player-idle-0.png"),
    Sprite("player/player-idle-1.png"),
    Sprite("player/player-idle-2.png"),
    Sprite("player/player-idle-3.png"),

  ];

  static const double playerSize = 48;
  Rect rect;
  static double playerInitialPositionX;
  static double playerInitialPositionY;

  @override
  void resize(Size size) {
    super.resize(size);
    playerInitialPositionX = size.width / 9;
    playerInitialPositionY = size.height - (size.width / size.height) * 30 - 48;

    print(playerInitialPositionY);

    rect = Rect.fromLTWH(playerInitialPositionX, playerInitialPositionY, playerSize, playerSize);
    animation = Animation.spriteList(idleSprites, stepTime: 0.4, loop: true);
  }


  void render(Canvas canvas){
    animation.getSprite().renderRect(canvas, rect);
  }

  void update(double dt){
    animation.update(dt);
  }

}