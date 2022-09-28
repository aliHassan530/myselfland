class AudioModel {
  const AudioModel({
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

List<AudioModel> audio = [
  AudioModel(
      img: "assets/Now 1.png",
      title: "Living the Moment of Now",
      subtitle: "Why depression and anxiety are connected",
      quality: "Journey"),
  AudioModel(
    img: "assets/Gratitude 1.png",
    title: "Biochemistry of Gratitude",
    subtitle: "Powerful effect of giving thanks",
    quality: "New",
  ),
  AudioModel(
    img: "assets/Wormies Outdoors.png",
    title: "How to let it be",
    subtitle: "Overcoming intense emotions",
    quality: "Journey",
  ),
];

List<AudioModel> get audioList => audio;
