
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostgator_runner_game/components/background.dart';
import 'package:hostgator_runner_game/components/ground.dart';
import 'package:hostgator_runner_game/components/player.dart';

class Game extends BaseGame {

  final Size size;

  Game(this.size){

    //print(size.height);
    //print(size.width);

    add(new Background(size, Sprite("bg/bg-1.png")));
    add(new Background(size, Sprite("bg/bg-2.png")));
    add(new Background(size, Sprite("bg/bg-3.png")));

    for(int i = 0; i < size.width; i++){
      add(new Ground(i.toDouble()));
    }


    add(new Player());

  }

}