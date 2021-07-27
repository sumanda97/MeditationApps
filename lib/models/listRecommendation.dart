class RecommendationList {
  String imageUrl;
  String name;
  String duration;

  RecommendationList({
    this.imageUrl,
    this.name,
    this.duration,
  });
}

final List<RecommendationList> recommendation = [
  RecommendationList(
    imageUrl:
        'https://i.pinimg.com/originals/2e/5a/d6/2e5ad601c06fa112d7c14eb995acc8ef.jpg',
    name: 'Focus',
    duration: "Meditation . 3-10 Min",
  ),
  RecommendationList(
    imageUrl:
        'https://i.pinimg.com/originals/73/b8/5a/73b85ae5fe219d6e1278fbe1cc8426d9.jpg',
    name: 'Happiness',
    duration: "Meditation . 3-10 Min",
  ),
  RecommendationList(
    imageUrl:
        'https://i.pinimg.com/originals/2e/5a/d6/2e5ad601c06fa112d7c14eb995acc8ef.jpg',
    name: 'Relax',
    duration: "Meditation . 3-10 Min",
  ),
];
