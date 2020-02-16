
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostgator_runner_game/components/background.dart';

class Game extends BaseGame with HasWidgetsOverlay {

  final Size size;

  Game(this.size){

    add(new Background(size: size, sprite: Sprite("bg/bg-clouds.png"), speed: -50));
    add(new Background(size: size, sprite: Sprite("bg/bg-city-far.png"), speed: -70));
    add(new Background(size: size, sprite: Sprite("bg/bg-city.png"), speed: -100));

    //for(int i = 0; i < size.width; i++){
    //  add(new Ground(size, i.toDouble()));
    //}

    //add(new Player(size));

  }

}