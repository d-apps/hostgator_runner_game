import 'dart:ui';

import 'package:flame/components/parallax_component.dart';

class Background extends ParallaxComponent{

  //Start 40, 20

  Background({List<ParallaxImage> images,}) : super(
      [

        ParallaxImage("bg/bg-clouds.png",),
        ParallaxImage("bg/bg-city-far.png"),
        ParallaxImage("bg/bg-city.png"),

      ],
      baseSpeed: Offset(0, 0),
      layerDelta: Offset(0, 0)
  );

  @override
  void update(double t) {

    super.update(t);



  }

}



