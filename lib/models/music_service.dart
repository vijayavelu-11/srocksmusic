class MusicService {
  final String id;
  final String title;
  final String description;
  final String iconName;
  final int order;

  MusicService({
    required this.id,
    required this.title,
    required this.description,
    required this.iconName,
    required this.order,
  });

  factory MusicService.fromFirestore(Map<String, dynamic> data, String id) {
    return MusicService(
      id: id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      iconName: data['iconName'] ?? 'music_note',
      order: data['order'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'iconName': iconName,
      'order': order,
    };
  }
}