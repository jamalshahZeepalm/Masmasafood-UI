import 'package:masmasafood/Data/images_path.dart';

class ChatModel {
  String name;
  String massage;
  List listMessage;
  String time;
  String image;
  String sendingMessage;
  ChatModel(
      {required this.name,
      required this.massage,
      required this.time,
      required this.listMessage,
      required this.sendingMessage,
      required this.image});
}

List chatList = [
  ChatModel(
      name: 'Louis Kelly',
      massage: 'Your Order Just Arrived!',
      time: '20:00',
      listMessage: [
        'Okay, for what level of spiciness?',
        "Okay I'm waiting  👍",
      ],
      image: CustomAssets.klouisKelly,
      sendingMessage: "Okay I'm waiting  👍"),
  ChatModel(
      name: 'Paul Koch',
      massage: 'Your Order Just Arrived!',
      time: '20:00',
      listMessage: [
        'Okay, for what level of spiciness?',
        "Okay I'm waiting  👍",
      ],
      image: CustomAssets.kpaulKoch,
      sendingMessage: "Okay I'm waiting  👍"),
  ChatModel(
      name: 'Carla Klein',
      massage: 'Your Order Just Arrived!',
      time: '20:00',
      listMessage: [
        'Okay, for what level of spiciness?',
        "Okay I'm waiting  👍",
      ],
      image: CustomAssets.kcarlaKlein,
      sendingMessage: "Okay I'm waiting  👍"),
];
