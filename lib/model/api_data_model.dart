import 'dart:convert';

List<ApiData> apiDataFromJson(String str) =>
    List<ApiData>.from(json.decode(str).map((x) => ApiData.fromJson(x)));

String apiDataToJson(List<ApiData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiData {
  int? id;
  String? title;
  String? worth;
  String? thumbnail;
  String? image;
  String? description;
  String? instructions;
  String? openGiveawayUrl;
  String? publishedDate;
  String? type;
  String? platforms;
  String? endDate;
  int? users;
  String? status;
  String? gamerpowerUrl;
  String? openGiveaway;

  ApiData(
      {this.id,
      this.title,
      this.worth,
      this.thumbnail,
      this.image,
      this.description,
      this.instructions,
      this.openGiveawayUrl,
      this.publishedDate,
      this.type,
      this.platforms,
      this.endDate,
      this.users,
      this.status,
      this.gamerpowerUrl,
      this.openGiveaway});

  ApiData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    worth = json['worth'];
    thumbnail = json['thumbnail'];
    image = json['image'];
    description = json['description'];
    instructions = json['instructions'];
    openGiveawayUrl = json['open_giveaway_url'];
    publishedDate = json['published_date'];
    type = json['type'];
    platforms = json['platforms'];
    endDate = json['end_date'];
    users = json['users'];
    status = json['status'];
    gamerpowerUrl = json['gamerpower_url'];
    openGiveaway = json['open_giveaway'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['worth'] = worth;
    data['thumbnail'] = thumbnail;
    data['image'] = image;
    data['description'] = description;
    data['instructions'] = instructions;
    data['open_giveaway_url'] = openGiveawayUrl;
    data['published_date'] = publishedDate;
    data['type'] = type;
    data['platforms'] = platforms;
    data['end_date'] = endDate;
    data['users'] = users;
    data['status'] = status;
    data['gamerpower_url'] = gamerpowerUrl;
    data['open_giveaway'] = openGiveaway;
    return data;
  }
}
