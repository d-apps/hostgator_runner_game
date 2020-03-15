import 'dart:ui';

import 'package:flame/animation.dart';
import 'package:flame/components/animation_component.dart';
import 'package:hostgator_runner_game/game.dart';
import 'package:hostgator_runner_game/util/game_state.dart';

enum DinoStatus {IDLE, RUNNING, JUMPING, DEAD}

class Player extends AnimationComponent {

  Size size;
  DinoStatus dinoStatus = DinoStatus.IDLE;
  bool canJump = true;

  Animation idleAnimation =
    Animation.sequenced("player/player-idle.png", 4, textureWidth: 64, textureHeight: 64, stepTime: 0.40);

  Animation runningAnimation =
    Animation.sequenced("player/player-run.png", 10, textureWidth: 64, textureHeight: 64, stepTime: 0.05,);

  Animation jumpingAnimation =
    Animation.sequenced("player/player-jump.png", 2, textureWidth: 64, textureHeight: 64, stepTime: 0.50);

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

    //print("Y: $y");

    if(Game.gameState == GameState.STARTED && dinoStatus == DinoStatus.IDLE){

      idle();

    } else if(Game.gameState == GameState.STARTED && dinoStatus == DinoStatus.RUNNING){

      run();


    } else if(Game.gameState == GameState.STARTED && dinoStatus == DinoStatus.JUMPING &&
        canJump ){

      jump(t);

    }

  }

  void idle(){

    if(animation != idleAnimation){
      animation = idleAnimation;
    }

  }

  void run(){

    if(animation != runningAnimation){
      animation = runningAnimation;
      dinoStatus = DinoStatus.RUNNING;
    }

  }

  void jump(double dt){

    print("PULOU!");

    if(animation != jumpingAnimation){

      animation = jumpingAnimation;

    }

    // If the player is touching the ground, move the height to 150

    // Decrease the height (y)
    // When it gets 210 it increases
    // When it get 242 it stops

    double maxHeight = (size.height - 150);
    double minHeight = (size.height - 118);


   if(y > maxHeight){ // if greater than 210
     y = y - 30 * dt;
   }
   else if(y.toInt() <= maxHeight+2){
     y = y + 30 * dt;
     //dinoStatus = DinoStatus.RUNNING;
   }





  }

  void hurt(){

    if(animation != hurtAnimation){
      animation = hurtAnimation;
    }

  }

}