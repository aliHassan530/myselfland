class AudioGuideStressModel {
  const AudioGuideStressModel({
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

List<AudioGuideStressModel> audioGuideStress = [
  AudioGuideStressModel(
      img: "assets/Wormies Jae in Space.png",
      title: "“Bad” emotions",
      subtitle: "How to handle what you shouldn't or don't want to feel",
      quality: "Free"),
  AudioGuideStressModel(
    img: "assets/Wormies Outdoors.png",
    title: "Biochemistry of Gratitude",
    subtitle: "Powerful effect of giving thanks",
    quality: "Journey",
  ),
  AudioGuideStressModel(
    img: "assets/Wormies Celebration (2).png",
    title: "Train your Joy Muscles",
    subtitle: "How to invite more joy into your life",
  ),
  AudioGuideStressModel(
    img: "assets/Wormies Celebration (2).png",
    title: "How to Let it Be",
    subtitle: "Overcoming intense emotions",
  ),
  AudioGuideStressModel(
    img: "assets/Wormies Staying Home.png",
    title: "Living the Moment of Now",
    subtitle: "Why depression and anxiety are connected",
    quality: "Free",
  ),
  AudioGuideStressModel(
    img: "assets/Wormies Conversations.png",
    title: "Grow in Empathy",
    subtitle: "Learn the power to heal and create connections ",
    quality: "Free",
  ),
  AudioGuideStressModel(
      img: "assets/Wormies Poh.png",
      title: "Overthinking",
      subtitle: "How to break the cycle of rumination",
      quality: "Coming Soon"),
  AudioGuideStressModel(
    img: "assets/Wormies Favourite Meal.png",
    title: "Mindful Eating",
    subtitle: "Reconnect with your body and let food serve its proper purpose.",
    quality: "Coming Soon",
  ),
];

List<AudioGuideStressModel> get audioGuideStressList => audioGuideStress;
