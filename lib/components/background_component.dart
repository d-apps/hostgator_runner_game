import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';

class BackgroundComponent extends Component {

  final height;
  final width;

  Sprite sprite;
  SpriteComponent backgroundComponent;

  BackgroundComponent(this.width, this.height, this.sprite){

    backgroundComponent = SpriteComponent.fromSprite(width, height, sprite);

  }

  void render(Canvas canvas){
      backgroundComponent.render(canvas);
  }

  void update(double dt){

  }

}