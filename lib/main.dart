
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

    "bg-1.png",
    "bg-2.png",
    "bg-3.png",
    "player-idle.png",

  ]);

  Game game = Game(size);
  runApp(game.widget);

}
