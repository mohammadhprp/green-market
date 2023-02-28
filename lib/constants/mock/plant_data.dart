import 'package:green_market/models/image/image.dart';
import 'package:green_market/models/plant/plant.dart';

class PlantData {
  static List<Plant> list = [
    Plant(
      id: 1,
      name: 'Calathea White Fusion',
      price: 23.00,
      type: 'Indoor',
      height: 2,
      potSize: 6,
      potType: 'Ceramic',
      about:
          'Indoor plants have many health and decorative benefits such as allergy relief, mood improvements, humidity increase in rooms, air purification, better sleep, stress release, or even better digestion. As medical science has made progress, more and more benefits of having indoor plants are being discovered.',
      images: <Image>[
        Image(path: 'plant-1.png'),
        Image(path: 'plant-2.png'),
        Image(path: 'plant-3.png'),
      ],
    ),
    Plant(
      id: 2,
      name: 'Snake Plant',
      price: 15.99,
      type: 'Indoor',
      height: 3,
      potSize: 8,
      potType: 'Terracotta',
      about:
          'The Snake Plant is one of the easiest indoor plants to care for. It can tolerate low light, drought, and various temperature conditions. It\'s also known to purify the air by removing toxins such as formaldehyde and benzene.',
      images: <Image>[
        Image(path: 'plant-2.png'),
        Image(path: 'plant-3.png'),
        Image(path: 'plant-4.png'),
      ],
    ),
    Plant(
      id: 3,
      name: 'Succulent',
      price: 9.99,
      type: 'Indoor',
      height: 1,
      potSize: 4,
      potType: 'Ceramic',
      about:
          'Succulents are low maintenance indoor plants that come in a variety of shapes and sizes. They require minimal watering and can survive in low light conditions. They are also great for adding a touch of green to your desk or windowsill.',
      images: <Image>[
        Image(path: 'plant-3.png'),
        Image(path: 'plant-4.png'),
        Image(path: 'plant-5.png'),
      ],
    ),
    Plant(
      id: 4,
      name: 'Monstera Deliciosa',
      price: 29.99,
      type: 'Indoor',
      height: 4,
      potSize: 10,
      potType: 'Terracotta',
      about:
          'The Monstera Deliciosa is a popular indoor plant that can grow quite large. It requires bright, indirect light and regular watering. Its unique leaves and fast growth make it a great statement piece for any room.',
      images: <Image>[
        Image(path: 'plant-4.png'),
        Image(path: 'plant-5.png'),
        Image(path: 'plant-6.png'),
      ],
    ),
    Plant(
      id: 5,
      name: 'Rubber Plant',
      price: 21.99,
      type: 'Indoor',
      height: 3,
      potSize: 8,
      potType: 'Ceramic',
      about:
          'The Rubber Plant is a great indoor plant for beginners. It requires bright, indirect light and moderate watering. Its large, glossy leaves make it a popular choice for adding a touch of green to any room.',
      images: <Image>[
        Image(path: 'plant-5.png'),
        Image(path: 'plant-6.png'),
        Image(path: 'plant-7.png'),
      ],
    ),
    Plant(
      id: 6,
      name: 'Fiddle Leaf Fig',
      price: 34.99,
      type: 'Indoor',
      height: 5,
      potSize: 12,
      potType: 'Terracotta',
      about:
          'The Fiddle Leaf Fig is a trendy indoor plant that requires bright, indirect light and regular watering. It can grow quite tall and adds a touch of drama to any room. However, it can be difficult to care for and may require some extra attention.',
      images: <Image>[
        Image(path: 'plant-8.png'),
        Image(path: 'plant-9.png'),
        Image(path: 'plant-10.png'),
      ],
    ),
  ];
}
