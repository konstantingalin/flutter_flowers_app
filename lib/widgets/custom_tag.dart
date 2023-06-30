import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  final String typeTag;
  final String size;

  const CustomTag({super.key, required this.typeTag, required this.size});

  @override
  Widget build(BuildContext context) {
    Color color;
    String label;

    switch (typeTag) {
      case 'popular':
        color = const Color(0xFF3DBCCD);
        label = 'Популярное';
        break;
      case 'hit':
        color = const Color(0xFFF572C5);
        label = 'Хит продаж';
        break;
      case 'discount':
        color = const Color(0xFFAB84FF);
        label = 'Скидка';
        break;
      case 'new':
        color = const Color(0xFF3DCD76);
        label = 'Новинка';
        break;
      default:
        color = const Color(0xFF3DBCCD);
        label = 'Популярное';
        break;
    }

    return Positioned(
      top: 10,
      left: 10,
      child: Container(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          top: 6.0,
          bottom: 7.0,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: size == 'medium' ? 10 : 8,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
