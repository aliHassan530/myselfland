class ChatBoardModel {
  const ChatBoardModel({
    this.img,
    this.title,
    this.subtitle,
    this.quality,
  });

  final img;
  final quality;
  final title;
  final subtitle;
}

List<ChatBoardModel> chatBoard = [
  ChatBoardModel(
    img: "assets/Wormies Jae in Space.png",
    title: "“Bad” emotions",
    subtitle: "How to handle what you shouldn't or don't want to feel",
  ),
  ChatBoardModel(
    img: "assets/Wormies Outdoors.png",
    title: "Biochemistry of Gratitude",
    subtitle: "Powerful effect of giving thanks",
  ),
  ChatBoardModel(
    img: "assets/Wormies Staying Home.png",
    title: "Living the Moment of Now",
    subtitle: "Why depression and anxiety are connected",
  ),
  ChatBoardModel(
    img: "assets/Wormies Conversations.png",
    title: "Grow in Empathy",
    subtitle: "Learn the power to heal and create connections ",
  ),
  ChatBoardModel(
    img: "assets/Wormies Poh.png",
    title: "Overthinking",
    subtitle: "How to break the cycle of rumination",
    quality: "New",
  ),
  ChatBoardModel(
    img: "assets/Wormies Favourite Meal.png",
    title: "Mindful Eating",
    subtitle: "Reconnect with your body and let food serve its proper purpose.",
  ),
];

List<ChatBoardModel> get chatBoardList => chatBoard;
