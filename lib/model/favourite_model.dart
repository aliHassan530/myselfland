class FavouriteModel {
  const FavouriteModel({
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

List<FavouriteModel> favourite = [
  FavouriteModel(
    img: "assets/Wormies Online Treats.png",
    title: "Feed your senses",
    subtitle: "How to release oxytocine, dopamine and serotonin",
  ),
  FavouriteModel(
    img: "assets/Wormies Fin in Jello.png",
    title: "Progressive Muscle Relaxation",
    subtitle: "A deep relaxation technique",
  ),
  FavouriteModel(
    img: "assets/Wormies Outdoors.png",
    title: "Grouding Meditation",
    subtitle: "Calm your senses and re-connect to body",
  ),
  FavouriteModel(
    img: "assets/Wormies Celebration (3).png",
    title: "Alternate-Nostril Breathing",
    subtitle: "Relieve anxiety ",
  ),
  FavouriteModel(
    img: "assets/Wormies Staying Home (2).png",
    title: "Living the Moment of Now",
    subtitle: "Why depression and anxiety are connected",
    quality: "New",
  ),
  FavouriteModel(
    img: "assets/Wormies Fin in Jello (1).png",
    title: "“Bad” emotions",
    subtitle: "How to handle what you shouldn't or don't want to feel",
  ),
];

List<FavouriteModel> get favouriteList => favourite;
