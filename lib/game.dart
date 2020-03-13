
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostgator_runner_game/components/background.dart';
import 'package:hostgator_runner_game/components/ground.dart';
import 'package:hostgator_runner_game/components/player.dart';
import 'package:hostgator_runner_game/config.dart';
import 'package:hostgator_runner_game/game_state.dart';

class Game extends BaseGame with HasWidgetsOverlay, TapDetector {

  Size size;
  Player player;
  Background background1;
  Background background2;
  Background background3;
  Ground ground;
  List<Ground> grounds = [];

  static GameState gameState = GameState.IDLE;

  Game(this.size){

    print(size.width);
    print(size.height);

    // Adding backgrounds
    background1 = Background(spritePath: "bg/bg-clouds.png", size: size, speed: Config.BG1_SPEED, currentSpeed: 0);
    background2 = Background(spritePath: "bg/bg-city-far.png", size: size, speed: Config.BG2_SPEED, currentSpeed: 0);
    background3 = Background(spritePath: "bg/bg-city.png", size: size, speed: Config.BG3_SPEED, currentSpeed: 0);

    add(background1);
    add(background2);
    add(background3);

    // Adding ground

    for(int i = 0; i < (size.width / 128); i++){
      grounds.add(ground = Ground(size: size, counter: i.toDouble(), currentSpeed: 0, speed: Config.GROUND_SPEED));
    }

    // Show ground components
    grounds.forEach((ground)=> add(ground));

    player = Player(size);
    add(player);

  }

  @override
  void onTap() {
    super.onTap();

    if(gameState == GameState.IDLE){
      gameState = GameState.STARTED;

      background1.move();
      background2.move();
      background3.move();
      grounds.forEach((ground) => ground.move());
      player.run();


      // If the game is started and the player is touching the ground, he can jump
    } else if(gameState == GameState.STARTED && player.height <= Config.GROUND_HEIGHT) {

      //player.jump();

      player.toRect().translate(0, size.height -150);

     //if(player.height >= Config.GROUND_HEIGHT){
     //   player.run();
     // }

    }



  }

}