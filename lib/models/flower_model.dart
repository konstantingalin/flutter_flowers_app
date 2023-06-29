class FlowerCategory {
  static const String birthday = 'День рождения';
  static const String christmas = 'Рождество';
  static const String wedding = 'Свадьба';
  static const String march = '8 марта';
  static const String february = '23 февраля';
}

class FlowerType {
  static const String rose = 'Розы';
  static const String multi = 'Микс';
  static const String eustoma = 'Эустомы';
}

class FlowerColor {
  static const String red = 'Красный';
  static const String white = 'Белый';
  static const String multi = 'Разноцветный';
  static const String pink = 'Розовый';
  static const String yellow = 'Желтый';
}

class FlowerPrice {
  static const String expensive = 'Дорогие';
  static const String medium = 'Средняя';
  static const String budgetary = 'Бюджетные';
}

class FlowerModel {
  final int id;
  final String name;
  final String title;
  final String price;
  final String thumbnailPath;
  final String composition;
  final List<String> categories;
  final List<String> priceCategory;
  final List<String> color;
  final List<String> type;

  FlowerModel({
    required this.id,
    required this.name,
    required this.title,
    required this.price,
    required this.thumbnailPath,
    required this.categories,
    required this.priceCategory,
    required this.composition,
    required this.color,
    required this.type,
  });

  static List<FlowerModel> sampleCards = [
    FlowerModel(
      id: 1,
      name: 'Микс из роз 25 штук',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.',
      price: '20 460₸',
      composition: 'Розы: 25',
      thumbnailPath: "assets/flower_imgs/flower_img_1.png",
      categories: [
        FlowerCategory.birthday,
        FlowerCategory.march,
        FlowerCategory.wedding
      ],
      priceCategory: [FlowerPrice.medium],
      color: [FlowerColor.white, FlowerColor.pink, FlowerColor.yellow],
      type: [FlowerType.rose],
    ),
    FlowerModel(
      id: 2,
      name: 'Сборный букет цветов "Emily"',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.',
      price: '21 450₸',
      composition: 'Микс: 26',
      thumbnailPath: "assets/flower_imgs/flower_img_2.png",
      categories: [FlowerCategory.birthday, FlowerCategory.wedding],
      priceCategory: [FlowerPrice.medium],
      color: [FlowerColor.white, FlowerColor.pink, FlowerColor.red],
      type: [FlowerType.multi],
    ),
    FlowerModel(
      id: 3,
      name: 'Эустомы букет',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.',
      price: '11 990₸',
      composition: 'Эустомы: 22',
      thumbnailPath: "assets/flower_imgs/flower_img_3.png",
      categories: [FlowerCategory.birthday, FlowerCategory.christmas],
      priceCategory: [FlowerPrice.budgetary],
      color: [FlowerColor.white, FlowerColor.pink, FlowerColor.yellow],
      type: [FlowerType.eustoma],
    ),
    FlowerModel(
      id: 4,
      name: '33 микс розы',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.',
      price: '29 700₸',
      composition: 'Розы: 33',
      thumbnailPath: "assets/flower_imgs/flower_img_4.png",
      categories: [
        FlowerCategory.birthday,
        FlowerCategory.march,
        FlowerCategory.wedding
      ],
      priceCategory: [FlowerPrice.expensive],
      color: [FlowerColor.white, FlowerColor.pink],
      type: [FlowerType.rose],
    ),
    FlowerModel(
      id: 5,
      name: 'Евробукет',
      title:
          'В этом букете некоторых сезонных растений может не быть. Флорист так же аккуратно и без дополнительной стоимости подберет похожие.',
      price: '23 000₸',
      composition: 'Розы: 20',
      thumbnailPath: "assets/flower_imgs/flower_img_5.png",
      categories: [FlowerCategory.birthday, FlowerCategory.march],
      priceCategory: [FlowerPrice.medium],
      color: [FlowerColor.white, FlowerColor.red],
      type: [FlowerType.rose],
    ),
  ];
}
