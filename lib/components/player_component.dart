import 'dart:ui';

import 'package:flame/animation.dart';
import 'package:flame/components/component.dart';

class PlayerComponent extends Component {

  Animation animation;

  PlayerComponent(){

  animation = Animation.sequenced(
    "player-idle.png",
    4,
    textureWidth: 256,
    textureHeight: 256,
    textureX: 100,
    textureY: 100,
    stepTime: 0.05
  );

  }


  void render(Canvas canvas){
    animation.getSprite().render(canvas);
  }

  void update(double dt){

  }

}