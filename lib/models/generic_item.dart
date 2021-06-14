class GenericItem {
  String title;
  String description;
  DateTime date;
  String content;
  String imageUrl;

  GenericItem({
    this.title,
    this.description,
    this.date,
    this.content,
    this.imageUrl,
  });

  static List<GenericItem> parseList(Map<String, dynamic> json) => json["data"]
      .map((data) => GenericItem.fromJson(data))
      .toList()
      .cast<GenericItem>();

  factory GenericItem.fromJson(Map<String, dynamic> json) => GenericItem(
        title: json["title"],
        description: json["description"],
        date: DateTime.parse(json["date"]),
        content: json["content"],
        imageUrl: json["imageUrl"],
      );
}
