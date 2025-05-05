class News {
  final int id;
  final String type;
  final DateTime pubTime;
  final String images;
  final String title;
  final String content;
  final DateTime eventTime;

  News(
      {required this.id,
      required this.type,
      required this.pubTime,
      required this.images,
      required this.title,
      required this.content,
      required this.eventTime});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['id'],
      type: json['type'],
      pubTime: DateTime.parse(json['pubTime']),
      images: json['images'],
      title: json['title'],
      content: json['content'],
      eventTime: DateTime.parse(json['eventTime']),
    );
  }
}
