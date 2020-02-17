
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
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

    add(Background());

    for(int i = 0; i < size.width; i++){
      add(Ground(size, i.toDouble()));
    }

    add(Player(size));

  }

  @override
  void onTap() {
    super.onTap();



  }

}