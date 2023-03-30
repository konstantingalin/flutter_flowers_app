import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/icons/mainLogo.png'), 
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Row (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/mapIcon.png'),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Костанай',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
            ),
            )
          ]
        ), 
        onPressed: () {  },
      ),
      actions: [
        Image.asset('assets/icons/menuBurger.png')
      ],
    );
  }
}