class Event {
  String title;
  String text;
  String? imageURL;
  String? link;

  Event({
    required this.title,
    required this.text,
    this.imageURL,
    this.link,
  });

  static List<Event> parseList(Map<String, dynamic> json) =>
      json["data"].map((data) => Event.fromJson(data)).toList().cast<Event>();

  factory Event.fromJson(Map<String, dynamic> json) => Event(
      title: json["title"],
      text: json["text"],
      link: json["link"],
      imageURL: json["imageURL"]);
}
