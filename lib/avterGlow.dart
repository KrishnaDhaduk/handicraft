import 'package:flutter/material.dart';

import 'avter_Glow.dart';

Widget avterGlow1 = AvatarGlow(
  startDelay: Duration(milliseconds: 1000),
  glowColor: Colors.white,
  endRadius: 150.0,
  duration: Duration(milliseconds: 2000),
  repeat: true,
  repeatPauseDuration: Duration(milliseconds: 100),
  child: Material(
    elevation: 8.0,
    shape: CircleBorder(),
    child: CircleAvatar(
        backgroundColor: Colors.grey[100],
        radius: 80.0,
        backgroundImage: NetworkImage(
            "https://tse3.mm.bing.net/th?id=OIP.inxkFQFyNH2u1vJ_rbL8vgAAAA&pid=Api&P=0&w=212&h=181")),
  ),
  shape: BoxShape.circle,
  animate: true,
  curve: Curves.fastOutSlowIn,
);
