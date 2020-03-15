
import 'dart:math';
import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/has_game_ref.dart';
import 'package:flame/time.dart';
import 'package:hostgator_runner_game/components/enemy.dart';
import 'package:hostgator_runner_game/game.dart';
import 'package:hostgator_runner_game/util/game_state.dart';

class EnemyCreator extends Component with HasGameRef<Game>{

  static Timer timer;
  static List<Enemy> enemies = [];
  bool destroyed = false;

  List<double> seconds = [

    2.0,
    5.0,
    7.0,

  ];

  Random random = Random();

  EnemyCreator(){

    timer = Timer(seconds[random.nextInt(3)], repeat: true, callback: (){

      Enemy enemy = Enemy(
          size: gameRef.size,
          randomNum: random.nextInt(4)
      );
      enemies.add(enemy);
      gameRef.add(enemy);

    })..start();

  }


  @override
  void render(Canvas c) {

  }

  @override
  void update(double dt) {
    timer?.update(dt);

    if(Game.gameState == GameState.GAMEOVER){
      stop();
    }

  }

  void stop(){
    timer?.stop();
    timer = null;
  }

  @override
  bool destroy() => destroyed;

}