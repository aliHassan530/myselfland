class JourneyAudioModel {
  const JourneyAudioModel({
    this.url,
    this.title,
    this.subtitle,
  });

  final url;
  final title;
  final subtitle;
}

List<JourneyAudioModel> journeyAudioModel = [
  JourneyAudioModel(
    url: 'https://luan.xyz/files/audio/nasa_on_a_mission.mp3',
    title: "Making Time",
    subtitle: "17 mn",
  ),
  JourneyAudioModel(
    url: 'https://luan.xyz/files/audio/nasa_on_a_mission.mp3',
    title: "Flowing with Thoughts",
    subtitle: "13 mn",
  ),
  JourneyAudioModel(
    url: 'https://luan.xyz/files/audio/nasa_on_a_mission.mp3',
    title: "Setting Expectations",
    subtitle: "14 mn",
  ),
  JourneyAudioModel(
    url: 'https://luan.xyz/files/audio/nasa_on_a_mission.mp3',
    title: "Navigating Resistance",
    subtitle: "19 mn",
  ),
];

List<JourneyAudioModel> get journeyAudioModelList => journeyAudioModel;
