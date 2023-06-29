import 'package:flutter/material.dart';

import '../models/flower_model.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(
          child: Header(),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        index: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 235, 235, 235),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Фильтры',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(78, 78, 78, 1),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Image(
                      image: AssetImage('assets/icons/filterIcon.png'),
                      width: 18,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Букеты-бестселлеры',
                            style: TextStyle(
                              color: Color.fromRGBO(53, 53, 53, 1),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Stack(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 4,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/card',
                                      arguments: FlowerModel.sampleCards[0],
                                    );
                                  },
                                  child: Image.asset(
                                    FlowerModel.sampleCards[0].thumbnailPath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                height: 30,
                                width: 30,
                                top: 10,
                                right: 10,
                                child: IconButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.zero,
                                  icon: const Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.red,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    left: 12.0,
                                    right: 12.0,
                                    top: 6.0,
                                    bottom: 9.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF572C5),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: const Text(
                                    'Хит продаж',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                FlowerModel.sampleCards[0].price,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                FlowerModel.sampleCards[0].name,
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: FlowerModel.sampleCards.length - 1,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.85,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0),
                                  spreadRadius: 0,
                                  blurRadius: 0,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Container(
                              margin: EdgeInsets.only(
                                  right: index % 2 == 0 ? 10.0 : 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          InkWell(
                                            child: Image.asset(
                                              FlowerModel.sampleCards[index + 1]
                                                  .thumbnailPath,
                                              fit: BoxFit.cover,
                                            ),
                                            onTap: () {
                                              Navigator.pushNamed(
                                                context,
                                                '/card',
                                                arguments: FlowerModel
                                                    .sampleCards[index + 1],
                                              );
                                            },
                                          ),
                                          Positioned(
                                            height: 26,
                                            width: 26,
                                            top: 8,
                                            right: 8,
                                            child: IconButton(
                                              onPressed: () {},
                                              padding: EdgeInsets.zero,
                                              icon: const Icon(
                                                Icons.favorite_border_rounded,
                                                color: Colors.red,
                                                size: 26.0,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 8,
                                            left: 8,
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                left: 6.0,
                                                right: 6.0,
                                                top: 6.0,
                                                bottom: 6.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF3DBCCD),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: const Text(
                                                'Популярный',
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        FlowerModel
                                            .sampleCards[index + 1].price,
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        FlowerModel.sampleCards[index + 1].name,
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
