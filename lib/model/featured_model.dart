class FeatureModel {
  const FeatureModel({
    this.img,
    this.title,
    this.subtitle,
    this.quality,
  });

  final img;
  final title;
  final subtitle;
  final quality;
}

List<FeatureModel> featureShow = [
  FeatureModel(
    img: "assets/Thoughts 1.png",
    title: "Automatic Negative Thoughts",
    subtitle: "From reacting to consciously responding",
  ),
  FeatureModel(
    img: "assets/Positivity 1.png",
    title: "Chasing Happiness",
    subtitle: "Why positivity is not always a good thing",
    quality: "Journey",
  ),
  FeatureModel(
    img: "assets/Wormies Jae in Space.png",
    title: "Burnout",
    subtitle: "How to help yourself and others",
  ),
  FeatureModel(
    img: "assets/Thoughts 1.png",
    title: "Automatic Negative Thoughts",
    subtitle: "From reacting to consciously responding",
  ),
  FeatureModel(
      img: "assets/Positivity 1.png",
      title: "Chasing Happiness",
      subtitle: "Why positivity is not always a good thing",
      quality: "Journey"),
  FeatureModel(
    img: "assets/Wormies Jae in Space.png",
    title: "Burnout",
    subtitle: "How to help yourself and others",
  ),
];

List<FeatureModel> get featureList => featureShow;
