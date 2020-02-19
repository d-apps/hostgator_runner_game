import 'dart:ui';

import 'package:flame/components/parallax_component.dart';
import 'package:hostgator_runner_game/game.dart';
import 'package:hostgator_runner_game/game_state.dart';

class Background extends ParallaxComponent{

  //Start 40, 20

  Background({List<ParallaxImage> images,}) : super(
      [

        ParallaxImage("bg/bg-clouds.png",),
        ParallaxImage("bg/bg-city-far.png"),
        ParallaxImage("bg/bg-city.png"),

      ],
      baseSpeed: Offset(0, 0),
      layerDelta: Offset(0, 0),
  );

  @override
  void update(double t) {

    super.update(t);

    if(Game.gameState == GameState.IDLE){
      baseSpeed = Offset(0, 0);
      layerDelta = Offset(0, 0);
    } else {
      baseSpeed = Offset(50, 0);
      layerDelta = Offset(20, 0);
    }

  }

}



