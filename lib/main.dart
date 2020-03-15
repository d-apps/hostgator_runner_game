
import 'package:flame/flame.dart';
import 'package:flame/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:hostgator_runner_game/game.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setLandscapeRightOnly();
  Size size = await flameUtil.initialDimensions();

  await Flame.images.loadAll([

    "bg/bg-clouds.png",
    "bg/bg-city-far.png",
    "bg/bg-city.png",
    "bg/ground.png",
    "player/player-hurt.png",
    "player/player-idle.png",
    "player/player-jump.png",
    "player/player-run.png",
    "enemies/enemy-0.png",
    "enemies/enemy-1.png",
    "enemies/enemy-2.png",
    "enemies/enemy-3.png",

  ]);

  Game game = Game(size);
  runApp(game.widget);

}
