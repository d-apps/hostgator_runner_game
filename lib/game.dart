
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostgator_runner_game/components/background_component.dart';
import 'package:hostgator_runner_game/components/player_component.dart';

class Game extends BaseGame {

  final Size size;

  Game(this.size){

    add(new BackgroundComponent(size.width, size.height, Sprite("bg-1.png")));
    add(new BackgroundComponent(size.width, size.height, Sprite("bg-2.png")));
    add(new BackgroundComponent(size.width, size.height, Sprite("bg-3.png")));

    add(new PlayerComponent());

  }

}