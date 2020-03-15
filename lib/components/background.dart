import 'dart:ui';

import 'package:flame_scrolling_sprite/flame_scrolling_sprite.dart';
import 'package:hostgator_runner_game/game.dart';
import 'package:hostgator_runner_game/util/game_state.dart';

class Background extends ScrollingSpriteComponent{

  final String spritePath;
  Size size;
  double currentSpeed;
  double speed;

  //Start 40, 20
  Background({this.spritePath, this.size, this.speed, this.currentSpeed}){

    x = 0;
    y = 0;
    scrollingSprite = ScrollingSprite(
      spritePath: spritePath,
      spriteDestHeight: size.height,
      spriteDestWidth: size.width,
      horizontalSpeed: currentSpeed,
    );

  }

  @override
  void update(double t) {
    scrollingSprite.update(t);

    if(Game.gameState == GameState.GAMEOVER){
      stop();
    }

    super.update(t);

  }

  void move(){

    currentSpeed = speed;

    scrollingSprite = ScrollingSprite(
      spritePath: spritePath,
      spriteDestHeight: size.height,
      spriteDestWidth: size.width,
      horizontalSpeed: currentSpeed,
    );

  }

  void stop(){

    currentSpeed = 0;

    scrollingSprite = ScrollingSprite(
      spritePath: spritePath,
      spriteDestHeight: size.height,
      spriteDestWidth: size.width,
      horizontalSpeed: currentSpeed,
    );

  }

}



