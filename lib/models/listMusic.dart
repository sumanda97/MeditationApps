class MusicList {
  String imageUrl;
  String name;
  String duration;
  String description;
  double listening;
  double favorite;

  MusicList(
      {this.imageUrl,
      this.name,
      this.duration,
      this.listening,
      this.description,
      this.favorite});
}

final List<MusicList> musics = [
  MusicList(
    imageUrl:
        'https://i.pinimg.com/originals/a6/11/13/a6111338a575fe8b63155943b8fc22e2.jpg',
    name: 'Night Islands',
    duration: "45 Min . SLEEP MUSIC",
    listening: 24.234,
    favorite: 34.324,
    description:
        "Ease the mind into a restful night’s sleep with these deep, amblent tones.",
  ),
  MusicList(
    imageUrl:
        'https://i.pinimg.com/originals/c6/6c/60/c66c6028b079015027002652387625cb.jpg',
    name: 'Relax Music',
    duration: "45 Min . SLEEP MUSIC",
    listening: 24.234,
    favorite: 34.324,
    description:
        "Ease the mind into a restful night’s sleep with these deep, amblent tones.",
  ),
  MusicList(
    imageUrl:
        'https://i.pinimg.com/originals/02/4c/c0/024cc090b320cd27219091f6c15711f2.jpg',
    name: 'CHill Music',
    duration: "45 Min . SLEEP MUSIC",
    listening: 24.234,
    favorite: 34.324,
    description:
        "Ease the mind into a restful night’s sleep with these deep, amblent tones.",
  ),
  MusicList(
    imageUrl:
        'https://i.pinimg.com/originals/92/c4/2e/92c42e2eee47da2bff57c7e031f29477.jpg',
    name: 'Sleep Music',
    duration: "45 Min . SLEEP MUSIC",
    listening: 24.234,
    favorite: 34.324,
    description:
        "Ease the mind into a restful night’s sleep with these deep, amblent tones.",
  ),
];
