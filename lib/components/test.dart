import 'package:flame/animation.dart';
import 'package:flame/components/animation_component.dart';

class Test extends AnimationComponent {

    Test():super(
      50, 75, Animation.sequenced("player/player-idle.png", 4, textureWidth: 32, textureHeight: 48)
    ){
      x = 100;
      y = 500;
    }

}