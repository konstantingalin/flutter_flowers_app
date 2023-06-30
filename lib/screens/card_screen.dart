import 'package:flutter/material.dart';
import 'package:flutter_flowers_app/widgets/custom_tag.dart';
import '../models/flower_model.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/header.dart';

class CardScreen extends StatelessWidget {
  late FlowerModel card;

  CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RouteSettings? settings = ModalRoute.of(context)?.settings;
    card = settings?.arguments as FlowerModel;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(
          child: Header(),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Image.asset(
                      card.thumbnailPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (card.tag.isNotEmpty)
                    CustomTag(
                      typeTag: card.tag,
                      size: 'medium',
                    ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                card.name,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Описание',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                card.title,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Состав',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                card.composition,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Характеристики',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Цветы:',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Wrap(
                      children: card.type.map((type) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Text(
                            type,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFFE13E3C),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Цена:',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Wrap(
                      children: card.priceCategory.map((priceCategory) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Text(
                            priceCategory,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFFE13E3C),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Повод:',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Wrap(
                      children: card.categories.map((category) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Text(
                            '$category,',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFFE13E3C),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Цвет:',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Wrap(
                      children: card.color.map((color) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Text(
                            '$color,',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFFE13E3C),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Цена',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    card.price,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 238, 238, 238),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
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
                      'Добавить в корзину',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.favorite_border_rounded,
                      color: Color.fromARGB(255, 234, 84, 82),
                      size: 40.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
