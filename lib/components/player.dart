import 'dart:ui';

import 'package:flame/animation.dart';
import 'package:flame/components/animation_component.dart';
import 'package:hostgator_runner_game/game.dart';
import 'package:hostgator_runner_game/util/game_state.dart';

enum DinoStatus {IDLE, RUNNING, JUMPING, DEAD}

class Player extends AnimationComponent {

  Size size;
  DinoStatus dinoStatus = DinoStatus.IDLE;

  bool isAirLimit = false;
  bool isGroundLimit = false;

  Animation idleAnimation =
    Animation.sequenced("player/player-idle.png", 4, textureWidth: 64, textureHeight: 64, stepTime: 0.40);

  Animation runningAnimation =
    Animation.sequenced("player/player-run.png", 10, textureWidth: 64, textureHeight: 64, stepTime: 0.05,);

  Animation jumpingAnimation =
    Animation.sequenced("player/player-jump.png", 2, textureWidth: 64, textureHeight: 64, stepTime: 0.60);

  Animation hurtAnimation =
    Animation.sequenced("player/player-hurt.png", 2, textureWidth: 64, textureHeight: 64, stepTime: 0.40);


  Player(this.size):super(
      64, 64, Animation.sequenced("player/player-idle.png", 4, textureWidth: 64, textureHeight: 64, stepTime: 0.40)
  ){

    x = size.width / 9;
    y = size.height -118;


  }


  @override
  void update(double t) {

    animation.update(t);

    print(dinoStatus);

    if(Game.gameState == GameState.STARTED && dinoStatus == DinoStatus.IDLE){

      idle();

    } else if(Game.gameState == GameState.STARTED && dinoStatus == DinoStatus.RUNNING){

      run();


    } else if(Game.gameState == GameState.STARTED && dinoStatus == DinoStatus.JUMPING){

      jump(t);

    }

  }

  void idle(){

    print("PARADO!");

    if(animation != idleAnimation){
      animation = idleAnimation;
    }

  }

  void run(){

    print("CORRENDO!");

    if(animation != runningAnimation){
      animation = runningAnimation;
    }

  }

  void jump(double dt){

    print("PULOU!");

    if(animation != jumpingAnimation){

      animation = jumpingAnimation;

    }

    double airLimit = (size.height /  2);
    double groundLimit = (size.height - 118);

    double jumpSpeed = 100;

    //print("Y: $y");
    //print("MAX HEIGHT: $maxHeight");


    if(y > airLimit && !isAirLimit){
      y -= jumpSpeed * dt;
    } else {
      isAirLimit = true;
    }

    if(y >= groundLimit){
      isGroundLimit = true;
      isAirLimit = false;
      isGroundLimit = false;
      dinoStatus = DinoStatus.RUNNING;

    }

    if(isAirLimit && isGroundLimit == false){
      y += (jumpSpeed+4) * dt;
    }

  }

  void hurt(){

    if(animation != hurtAnimation){
      animation = hurtAnimation;
    }

  }

}