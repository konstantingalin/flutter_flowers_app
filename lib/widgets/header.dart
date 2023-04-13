import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10, ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width:4.0, color: Color.fromRGBO(0, 0, 0, 0.05)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
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
              ),
            ],
          ),
          Image.asset('assets/icons/mainLogo.png'),
          IconButton(
            onPressed: (){},
            icon: Image.asset('assets/icons/menuBurger.png'),
            iconSize: 30,
          )
        ],
      ),
    );
  }
}