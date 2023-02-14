class SampleUserModel {
  int? id;
  String? firstName, lastName, email, avatar;

  SampleUserModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.avatar});

  factory SampleUserModel.fromJson(Map<String, dynamic> json) {
    return SampleUserModel(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        avatar: json["avatar"]);
  }

  static List<SampleUserModel> listFromJson(List<Map<String, dynamic>> json) {
    var res = json
        .map((json) => SampleUserModel(
            id: json["id"],
            firstName: json["firstName"],
            lastName: json["lastName"],
            email: json["email"],
            avatar: json["avatar"]))
        .toList();

    return res;
  }

  //int get length => mockModels.length;
  static List<SampleUserModel> getMockUsers() {
    return mockModels;
  }
}

class SampleUserPostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  SampleUserPostModel({this.userId, this.id, this.title, this.body});

  SampleUserPostModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}

List<SampleUserModel> mockModels = [];

SampleUserPostModel mockPost = SampleUserPostModel(
    userId: 1, title: "Gai Weight", body: "i gained weight");

SampleUserPostModel mockPatchedPost =
    SampleUserPostModel(id: 1, userId: 1, body: "i gained weight");
