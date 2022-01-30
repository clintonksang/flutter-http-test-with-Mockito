class AlbumPost {
  AlbumPost({
    required this.id,
    required this.title,
  });

  int id;
  String title;

  factory AlbumPost.fromJson(Map<String, dynamic> json) => AlbumPost(
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}
