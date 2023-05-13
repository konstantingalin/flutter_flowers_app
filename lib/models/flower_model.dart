enum FlowerCategory {
  birthday,
  chrismas,
  general,
  congratulation,
  wedding,
}

class FlowerModel {
  final int id;
  final String name;
  final String title;
  final String price;
  final String thumbnailPath;
  final List<FlowerCategory> categories;

  FlowerModel({
    required this.id,
    required this.name,
    required this.title,
    required this.price,
    required this.thumbnailPath,
    required this.categories,
  });

  static List<FlowerModel> sampleCards = [
    FlowerModel(
      id: 1,
      name: 'Микс из роз 25 штук',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие. Высота: 50 см. Прямо сейчас вы можете купить букет цветов с доставкой домой и офис в Костанае. «Микс из роз 25 штук» по цене от 20 460₸.',
      price: '20 460₸',
      thumbnailPath: "assets/flower_imgs/flower_img_1.png",
      categories: [FlowerCategory.congratulation],
    ),
    FlowerModel(
      id: 2,
      name: 'Сборный букет цветов "Emily"',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.Высота: 50 см.  Некоторые цветы в букете  могут быть заменены.',
      price: '21 450₸',
      thumbnailPath: "assets/flower_imgs/flower_img_2.png",
      categories: [FlowerCategory.congratulation],
    ),
    FlowerModel(
      id: 3,
      name: 'Эустомы букет',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие. Высота: 50 см. Прямо сейчас вы можете купить букет цветов с доставкой домой и офис в Костанае. «Эустомы букет» по цене от 11 990₸.',
      price: '11 990₸',
      thumbnailPath: "assets/flower_imgs/flower_img_3.png",
      categories: [FlowerCategory.congratulation],
    ),
    FlowerModel(
      id: 4,
      name: 'Эустомы букет',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие. Высота: 50 см. Прямо сейчас вы можете купить букет цветов с доставкой домой и офис в Костанае. «Эустомы букет» по цене от 11 990₸.',
      price: '11 990₸',
      thumbnailPath: "assets/flower_imgs/flower_img_3.png",
      categories: [FlowerCategory.congratulation],
    ),
    FlowerModel(
      id: 5,
      name: 'Эустомы букет',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие. Высота: 50 см. Прямо сейчас вы можете купить букет цветов с доставкой домой и офис в Костанае. «Эустомы букет» по цене от 11 990₸.',
      price: '11 990₸',
      thumbnailPath: "assets/flower_imgs/flower_img_3.png",
      categories: [FlowerCategory.congratulation],
    ),
  ];
}
