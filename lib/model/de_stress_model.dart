class DeStressModel {
  const DeStressModel({
    this.img,
    this.title,
    this.subtitle,
  });

  final img;
  final title;
  final subtitle;
}

List<DeStressModel> deStress = [
  DeStressModel(
    img: "assets/PMR 1.png",
    title: "Progressive Muscle Relaxation",
    subtitle: "A deep relaxation technique",
  ),
  DeStressModel(
    img: "assets/box 1.png",
    title: "Box breathing",
    subtitle: "“Reset” your breath to relax the body and improve focus",
  ),
  DeStressModel(
    img: "assets/Wormies Outdoors.png",
    title: "Grounding meditation",
    subtitle: "Calm your senses and your body",
  ),
];

List<DeStressModel> get deStressList => deStress;
