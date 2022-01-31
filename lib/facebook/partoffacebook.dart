class model_facebook {
  List<Facebook>? facebook;

  model_facebook({this.facebook});

  model_facebook.fromJson(Map<String, dynamic> json) {
    if (json['facebook'] != null) {
      facebook = <Facebook>[];
      json['facebook'].forEach((v) {
        facebook!.add(new Facebook.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.facebook != null) {
      data['facebook'] = this.facebook!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Facebook {
  String? name;
  String? image;
  String? imagex;
  String? caption;

  Facebook({this.name, this.image, this.imagex, this.caption});

  Facebook.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    imagex = json['imagex'];
    caption = json['caption'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['imagex'] = this.imagex;
    data['caption'] = this.caption;
    return data;
  }
}
