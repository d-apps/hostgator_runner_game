import 'dart:ui';

import 'package:flame/animation.dart';
import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:hostgator_runner_game/game.dart';
import 'package:hostgator_runner_game/game_state.dart';


class Player extends Component {

  Size size;
  Animation animation;
  Animation idleAnimation;
  Animation runAnimation;

  final List<Sprite> idleSprites = [

    Sprite("player/player-idle-0.png"),
    Sprite("player/player-idle-1.png"),
    Sprite("player/player-idle-2.png"),
    Sprite("player/player-idle-3.png"),

  ];

  final List<Sprite> runSprites = [

    Sprite("player/player-run-0.png"),
    Sprite("player/player-run-1.png"),
    Sprite("player/player-run-2.png"),
    Sprite("player/player-run-3.png"),
    Sprite("player/player-run-4.png"),
    Sprite("player/player-run-5.png"),
    Sprite("player/player-run-4.png"),
    Sprite("player/player-run-3.png"),
    Sprite("player/player-run-2.png"),
    Sprite("player/player-run-1.png"),
    Sprite("player/player-run-0.png"),

  ];

  static const double playerSize = 64;
  Rect rect;
  static double playerInitialPositionX;
  static double playerInitialPositionY;

  Player(this.size){

    playerInitialPositionX = size.width / 9;
    playerInitialPositionY = size.height - (size.width / size.height) * 30 - 48;

    //print(size.height );
    //print(size.width / size.height);
    //print(size.height - (size.width / size.height) * 30);

  rect = Rect.fromLTWH(playerInitialPositionX, playerInitialPositionY, playerSize, playerSize);

  idleAnimation = Animation.spriteList(idleSprites, stepTime: 0.4, loop: true);
  runAnimation = Animation.spriteList(runSprites, stepTime: 0.03, loop: true);

  animation = idleAnimation;

  }


  void render(Canvas canvas){
    animation.getSprite().renderRect(canvas, rect);
  }

  void update(double dt){

    animation.update(dt);

    animation = idleAnimation;

    if(Game.gameState == GameState.IDLE){

    } else if(Game.gameState == GameState.STARTED){

      animation = runAnimation;

    }


  }

}