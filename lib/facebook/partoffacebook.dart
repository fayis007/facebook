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
  String? name1;
  String? image1;
  String? imagex;
  String? caption;
  String? name2;
  String? image2;
  String? imagey;
  String? name3;
  String? image3;
  String? imagez;

  Facebook(
      {this.name1,
        this.image1,
        this.imagex,
        this.caption,
        this.name2,
        this.image2,
        this.imagey,
        this.name3,
        this.image3,
        this.imagez});

  Facebook.fromJson(Map<String, dynamic> json) {
    name1 = json['name1'];
    image1 = json['image1'];
    imagex = json['imagex'];
    caption = json['caption'];
    name2 = json['name2'];
    image2 = json['image2'];
    imagey = json['imagey'];
    name3 = json['name3'];
    image3 = json['image3'];
    imagez = json['imagez'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name1'] = this.name1;
    data['image1'] = this.image1;
    data['imagex'] = this.imagex;
    data['caption'] = this.caption;
    data['name2'] = this.name2;
    data['image2'] = this.image2;
    data['imagey'] = this.imagey;
    data['name3'] = this.name3;
    data['image3'] = this.image3;
    data['imagez'] = this.imagez;
    return data;
  }
}
