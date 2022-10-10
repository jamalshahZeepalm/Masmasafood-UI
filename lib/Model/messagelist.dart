class ListOfMessages {
  String messageContent;
  String messageType;

  ListOfMessages({
    required this.messageContent,
    required this.messageType,
  });
}

List<ListOfMessages> messages = [
  ListOfMessages(
    messageContent: "Just to order",
    messageType: "receiver",
  ),
  ListOfMessages(
    messageContent: "Okay, for what level of spiciness?",
    messageType: "sender",
  ),
  ListOfMessages(
    messageContent: "Okay, wait a minute 👍",
    messageType: "receiver",
  ),
  ListOfMessages(
    messageContent: "Okay I'm waiting  👍",
    messageType: "sender",
  ),
];
