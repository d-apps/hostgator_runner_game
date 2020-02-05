
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

    "bg/bg-1.png",
    "bg/bg-2.png",
    "bg/bg-3.png",
    "bg/ground.png",
    "player/player-idle-0.png",
    "player/player-idle-1.png",
    "player/player-idle-2.png",
    "player/player-idle-3.png",

  ]);

  Game game = Game(size);
  runApp(game.widget);

}
