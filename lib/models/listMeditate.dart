import 'package:flutter/cupertino.dart';

List<Meditate> meditate = [
  Meditate(
      name: 'Relax Morning',
      imgPath:
          'https://i.pinimg.com/originals/2d/bf/f9/2dbff91f48a7b1ed9c7d4915897f8ff0.jpg',
      color: Color(0xFF8DA5EA)),
  Meditate(
      name: 'Chill Night',
      imgPath:
          'https://i.pinimg.com/originals/12/d5/8f/12d58ff403e7237968cfeee48bae334f.jpg',
      color: Color(0xFFCC691E)),
  Meditate(
      name: 'Axient Release',
      imgPath:
          'https://i.pinimg.com/originals/f1/2f/26/f12f26f0d288d92c1ce5f3019787abc3.jpg',
      color: Color(0XFF5F4122)),
  Meditate(
    name: '7 Days Calm',
    imgPath:
        'https://i.pinimg.com/originals/77/67/12/7767121f01a6987ebe6a4fd2073df448.jpg',
    color: Color(0xFFCACB68),
  ),
  Meditate(
      name: '7 Days Calm',
      imgPath:
          'https://i.pinimg.com/originals/f1/2f/26/f12f26f0d288d92c1ce5f3019787abc3.jpg',
      color: Color(0XFF5F4122)),
  Meditate(
      name: 'Axient Release',
      imgPath:
          'https://i.pinimg.com/originals/12/d5/8f/12d58ff403e7237968cfeee48bae334f.jpg',
      color: Color(0xFFCC691E)),
  Meditate(
      name: 'Relax Morning',
      imgPath:
          'https://i.pinimg.com/originals/77/67/12/7767121f01a6987ebe6a4fd2073df448.jpg',
      color: Color(0XFF5F4122)),
  Meditate(
      name: 'Relax Morning',
      imgPath:
          'https://i.pinimg.com/originals/2d/bf/f9/2dbff91f48a7b1ed9c7d4915897f8ff0.jpg',
      color: Color(0xFF8DA5EA)),
];

class Meditate {
  String name;
  Color color;
  String imgPath;

  Meditate({
    this.name,
    this.color,
    this.imgPath,
  });
}
