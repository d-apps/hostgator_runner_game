
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostgator_runner_game/components/background.dart';
import 'package:hostgator_runner_game/components/ground.dart';
import 'package:hostgator_runner_game/components/player.dart';
import 'package:hostgator_runner_game/game_state.dart';

class Game extends BaseGame with HasWidgetsOverlay, TapDetector {

  final Size size;

  static GameState gameState = GameState.IDLE;

  Game(this.size){

    //add(Background(size: size, sprite: Sprite("bg/bg-clouds.png"), speed: -50));
    //add(Background(size: size, sprite: Sprite("bg/bg-city-far.png"), speed: -70));
    add(Background(size: size, sprite: Sprite("bg/bg-city.png"), speed: -70));

    for(int i = 0; i < size.width; i++){
      add(Ground(size, i.toDouble()));
    }

    add(Player(size));

  }

  @override
  void onTap() {
    super.onTap();

    gameState = GameState.STARTED;

  }

}