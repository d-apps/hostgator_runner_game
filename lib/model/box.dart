import 'package:box2d_flame/box2d_browser.dart';

class Box {

  BodyDef bodyDef;
  Body body;
  Shape shape;
  Fixture fixture;
  World world;

  double _x, _y;
  double width, height;

  Box(double x, double y){

    _x = x;
    _y = y;

    // 1 - Create body def
    bodyDef = BodyDef();
    bodyDef.type = BodyType.DYNAMIC; 
    bodyDef.position.setValues(_x, _y);

    // 2 - Create a body
    body = Body(bodyDef, world);


    // 3 - Create a shape



    // 4 - Create a fixture


    // 5 - Put it all together

  }






}