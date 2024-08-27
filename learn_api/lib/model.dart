class Album {
  int? userId;
  int? id;
  String? title;
  String? body;

  Album({this.userId, this.id, this.title, this.body});

  Album.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

}