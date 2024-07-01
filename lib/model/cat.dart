import 'package:poopaye_paint/model/breeds.dart';

class Cat {
  List<Breeds>? breeds;
  String? id;
  String? url;
  int? width;
  int? height;

  Cat({this.breeds, this.id, this.width, this.height, this.url});

  Cat.fromJson(Map<String, dynamic> json) {
    if (json['breeds'] != null) {
      breeds = <Breeds>[];
      json['breeds'].forEach((v) {
        breeds!.add(Breeds.fromJson(v));
      });
    }
    id = json['id'];
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (breeds != null) {
      data['breeds'] = breeds!.map((v) => v.toJson()).toList();
    }
    data['id'] = id;
    data['url'] = url;
    data['width'] = width;
    data['height'] = height;
    return data;
  }

  static List<Cat> fromListJson(List<dynamic> json) {
    return json.map((e) => Cat.fromJson(e)).toList();
  }
}
