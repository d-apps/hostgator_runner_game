import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/has_game_ref.dart';
import 'package:flame/sprite.dart';
import 'package:hostgator_runner_game/game.dart';
import 'package:hostgator_runner_game/util/game_state.dart';

class Enemy extends Component with HasGameRef<Game>{

  Sprite sprite;
  double width;
  double height;
  Size size;
  int randomNum;
  bool destroyed = false;

  double speed = 100;

  SpriteComponent component;

  Enemy({this.size, this.randomNum}){

    if(randomNum == 0 || randomNum == 1 || randomNum == 2){

      width = 32;
      height = 32;
      sprite = Sprite('enemies/enemy-$randomNum.png');
      component = SpriteComponent.fromSprite(width, height, sprite);

    } else {

      width = 48;
      height = 32;
      sprite = Sprite('enemies/enemy-$randomNum.png');
      component = SpriteComponent.fromSprite(width, height, sprite);

    }

    component.x = size.width + 25;
    component.y = size.height -85;

  }

  @override
  void render(Canvas c) {
    component.render(c);
  }

  @override
  void update(double t) {


    if(Game.gameState == GameState.STARTED){
      component.x -=speed * t;
    }

    if(gameRef.player.toRect().overlaps(component.toRect())){
      Game.gameState = GameState.GAMEOVER;
    }

    //print(component.x);

  }

  @override
  bool destroy() {

    //print("DESTRUÍDO");
    return destroyed || component.x <= -50;

  }

  void stop(){

    component.x = component.x;

  }


}