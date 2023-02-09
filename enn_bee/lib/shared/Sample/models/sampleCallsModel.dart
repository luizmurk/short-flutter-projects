class SampleUserModel {
  int id;
  String firstName, lastName, email, avatar;

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

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['date'] = this.date;
  //   data['data'] = this.data;
  //   return data;
  // }

  //int get length => mockModels.length;
  static List<SampleUserModel> getMockUsers() {
    return mockModels;
  }
}

class UpcomingPaymentDataModel {
  String amount, reason;
  bool isStandingOrder, isDirectDebit, isCredit, isDebit;

  UpcomingPaymentDataModel({
    required this.amount,
    required this.reason,
    required this.isCredit,
    required this.isDebit,
    required this.isStandingOrder,
    required this.isDirectDebit,
  });
}

List<SampleUserModel> mockModels = [];
