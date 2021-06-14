class NewsItem {
  String title;
  String description;
  DateTime date;

  NewsItem({
    this.title,
    this.description,
    this.date,
  });

  static List<NewsItem> parseList(Map<String, dynamic> json) => json["data"]
      .map((data) => NewsItem.fromJson(data))
      .toList()
      .cast<NewsItem>();

  factory NewsItem.fromJson(Map<String, dynamic> json) => NewsItem(
        title: json["title"],
        description: json["description"],
        date: DateTime.parse(json["date"]),
      );
}
