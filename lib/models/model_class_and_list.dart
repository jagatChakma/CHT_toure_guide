class ModelClass {
  String imgUrl;
  String placeName;
  String goAway;
  String goAwayDis;
  String food;
  String foodDis;
  String hotel;
  String hotelDis;

  ModelClass({
    required this.imgUrl,
    required this.placeName,
    required this.goAway,
    required this.goAwayDis,
    required this.food,
    required this.foodDis,
    required this.hotel,
    required this.hotelDis,
  });
}

List<ModelClass> bandarbanList = [
  ModelClass(
    imgUrl: 'images/image.png',
    placeName: "Nilgige",
    goAway: '20',
    goAwayDis: 'alskdjfl lask dflkaj sdfl alksdf ',
    food: 'food',
    foodDis: 'foodDis',
    hotel: 'hotel ajk alk',
    hotelDis:
        'hotelDis aks df asdfj aklsdjf klas dfkja sdfkas dflk askjdf lkajs dfkla sdflk a sdkflja sdkfjak sdfkla sdfkja sdfkl askldf akjsd fkja sdf kaskj df klaj sdfkajsd fkj',
  ),
  ModelClass(
    imgUrl: 'images/image2.png',
    placeName: "nilacol",
    goAway: '30',
    goAwayDis: 'alskdjfl lask dflkaj sdfl alksdf ',
    food: 'food',
    foodDis: 'foodDis',
    hotel: 'hotel',
    hotelDis: 'hotelDis',
  ),
];
