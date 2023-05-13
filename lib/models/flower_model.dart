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
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.',
      price: '20 460₸',
      thumbnailPath: "assets/flower_imgs/flower_img_1.png",
      categories: [FlowerCategory.congratulation],
    ),
    FlowerModel(
      id: 2,
      name: 'Сборный букет цветов "Emily"',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.',
      price: '21 450₸',
      thumbnailPath: "assets/flower_imgs/flower_img_2.png",
      categories: [FlowerCategory.congratulation],
    ),
    FlowerModel(
      id: 3,
      name: 'Эустомы букет',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.',
      price: '11 990₸',
      thumbnailPath: "assets/flower_imgs/flower_img_3.png",
      categories: [FlowerCategory.congratulation],
    ),
    FlowerModel(
      id: 4,
      name: '33 микс розы',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.',
      price: '29 700₸',
      thumbnailPath: "assets/flower_imgs/flower_img_4.png",
      categories: [FlowerCategory.congratulation],
    ),
    FlowerModel(
      id: 5,
      name: 'Евробукет',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.',
      price: '23 000₸',
      thumbnailPath: "assets/flower_imgs/flower_img_5.png",
      categories: [FlowerCategory.congratulation],
    ),
  ];
}
