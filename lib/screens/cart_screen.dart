import 'package:flutter/material.dart';
import 'package:flutter_flowers_app/provider/add_to_cart_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddToCartProvider>(context);
    final cartFlowers = provider.flowers;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(
          child: Header(),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 3),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
              top: 16,
              left: 10,
              right: 10,
              bottom: 16,
            ),
            child: Text(
              'Корзина',
              style: TextStyle(
                color: Color.fromRGBO(53, 53, 53, 1),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: cartFlowers.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/cartIcon.png',
                          width: 48,
                          height: 48,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Ваша корзина пуста',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/',
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE13E3C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 20.0),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Вернуться',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: ListView.builder(
                      itemCount: cartFlowers.length,
                      itemBuilder: (context, index) {
                        final flower = cartFlowers[index];
                        return Container(
                          margin: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/card',
                                    arguments: flower,
                                  );
                                },
                                child: Image.asset(
                                  flower.thumbnailPath,
                                  fit: BoxFit.cover,
                                  width: 126,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color.fromRGBO(
                                            0, 0, 0, 0.05), // #F3F3F3
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              flower.name,
                                              style: const TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            const Text(
                                              'Цена',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              provider.toggleFavorite(flower);
                                            },
                                            padding: EdgeInsets.zero,
                                            icon: const Icon(
                                              Icons.close_sharp,
                                              color: Colors.red,
                                              size: 20.0,
                                            ),
                                          ),
                                          Text(
                                            flower.price,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
          ),
          if (cartFlowers.isNotEmpty)
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE13E3C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 20.0),
                  elevation: 0,
                ),
                child: const Text(
                  'Оформить заказ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
