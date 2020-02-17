import 'dart:ui';

import 'package:flame/components/parallax_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:hostgator_runner_game/game.dart';
import 'package:hostgator_runner_game/game_state.dart';

class Background extends ParallaxComponent{

  ParallaxComponent parallaxComponent;

  Background() : super(
      [

        ParallaxImage("bg/bg-clouds.png",),
        ParallaxImage("bg/bg-city-far.png"),
        ParallaxImage("bg/bg-city.png"),

      ],
      baseSpeed: Offset(0, 0),
      layerDelta: Offset(0, 0)
  );

  @override
  void update(double t) {

    super.update(t);

    if(Game.gameState == GameState.STARTED){

         baseSpeed = Offset(50, 0);
         layerDelta = Offset(20, 0);

    } else {
      baseSpeed = Offset(0, 0);
      layerDelta = Offset(0, 0);
    }


  }

}



