// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';

List<Temperatures> temperaturesFromJson(String str) => List<Temperatures>.from(json.decode(str).map((x) => Temperatures.fromJson(x)));

String temperaturesToJson(List<Temperatures> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Temperatures {
  int postId;
  int id;
  String name;
  String email;
  String body;

  Temperatures({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    postId: json["postId"],
    id: json["id"],
    name: json["name"],
    email: json["email"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "postId": postId,
    "id": id,
    "name": name,
    "email": email,
    "body": body,
  };
}
