import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:hostgator_runner_game/game.dart';
import 'package:hostgator_runner_game/game_state.dart';

class Ground extends Component {

  Rect rect;
  static double groundSize;
  Sprite sprite = Sprite("bg/ground.png");
  double speed = -70;

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

    if(Game.gameState == GameState.STARTED){

      rect = rect.translate( speed * t, 0);

    }
  }



}