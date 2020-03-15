import 'dart:ui';

import 'package:flame_scrolling_sprite/flame_scrolling_sprite.dart';
import 'package:hostgator_runner_game/game.dart';
import 'package:hostgator_runner_game/util/config.dart';
import 'package:hostgator_runner_game/util/game_state.dart';

class Ground extends ScrollingSpriteComponent {

  Size size;
  double counter;
  double currentSpeed;
  double speed;

  Ground({this.size, this.counter, this.currentSpeed, this.speed}){

    x = Config.GROUND_WIDTH * counter;
    y = size.height - Config.GROUND_HEIGHT;
    scrollingSprite = ScrollingSprite(
      spritePath: "bg/ground.png",
      spriteDestHeight: Config.GROUND_HEIGHT,
      spriteDestWidth: Config.GROUND_WIDTH,
      horizontalSpeed: currentSpeed,
    );

  }

  @override
  void update(double dt) {
      scrollingSprite.update(dt);

      if(Game.gameState == GameState.GAMEOVER){
        stop();
      }

  }

  void move(){

    currentSpeed = speed;

    scrollingSprite = ScrollingSprite(
      spritePath: "bg/ground.png",
      spriteDestHeight: Config.GROUND_HEIGHT,
      spriteDestWidth: Config.GROUND_WIDTH,
      horizontalSpeed: currentSpeed,
    );

  }

  void stop(){
    currentSpeed = 0;

    scrollingSprite = ScrollingSprite(
      spritePath: "bg/ground.png",
      spriteDestHeight: Config.GROUND_HEIGHT,
      spriteDestWidth: Config.GROUND_WIDTH,
      horizontalSpeed: currentSpeed,
    );

  }


}