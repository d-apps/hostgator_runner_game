
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostgator_runner_game/components/background.dart';
import 'package:hostgator_runner_game/components/ground.dart';
import 'package:hostgator_runner_game/components/player.dart';
import 'package:hostgator_runner_game/game_state.dart';

class Game extends BaseGame with HasWidgetsOverlay, TapDetector {

  Size size;
  Player player;
  Background background;
  Ground ground;

  static GameState gameState = GameState.IDLE;

  Game(this.size){

    background = Background();
    add(background);

    //for(int i = 0; i < size.width; i++){
    //  add( ground = Ground(size, i.toDouble()));
    //}

    player = Player(size);
    add(player);

  }

  @override
  void onTap() {
    super.onTap();

    if(gameState == GameState.IDLE){
      gameState = GameState.STARTED;
      player.run();
    }


    //if(gameState == GameState.STARTED && player.toRect().overlaps()){
    //  player.jump();
    //}



  }

}