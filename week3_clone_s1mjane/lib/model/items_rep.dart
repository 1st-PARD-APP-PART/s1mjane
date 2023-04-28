import 'item.dart';

class ItemsRep {
  static List<Item> loadItems() {
    return [
      Item(
        id: 0,
        imgUrl: 'assets/image/item.png',
        name: 'S22 자급제 화이트 미개봉',
        location: '군자동',
        price: '750,000원',
        isBooked: true,
        isSold: false,
      ),
      Item(
        id: 1,
        imgUrl: 'assets/image/item.png',
        name: 'S22 자급제 화이트 미개봉',
        location: '군자동',
        price: '750,000원',
        isBooked: false,
        isSold: true,
      ),
      Item(
        id: 2,
        imgUrl: 'assets/image/item.png',
        name: 'S22 자급제 화이트 미개봉',
        location: '군자동',
        price: '750,000원',
        isBooked: false,
        isSold: false,
      ),
      Item(
        id: 3,
        imgUrl: 'assets/image/item.png',
        name: 'S22 자급제 화이트 미개봉',
        location: '군자동',
        price: '750,000원',
        isBooked: false,
        isSold: false,
      ),
      Item(
        id: 4,
        imgUrl: 'assets/image/item.png',
        name: 'S22 자급제 화이트 미개봉',
        location: '군자동',
        price: '750,000원',
        isBooked: false,
        isSold: false,
      ),
    ];
  }
}