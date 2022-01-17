class model_new {
  List<News>? news;

  model_new({this.news});

  model_new.fromJson(Map<String, dynamic> json) {
    if (json['news'] != null) {
      news = <News>[];
      json['news'].forEach((v) {
        news!.add(new News.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.news != null) {
      data['news'] = this.news!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class News {
  String? titile;
  String? image;
  String? notes;
  String? date;
  String? more;

  News({this.titile, this.image, this.notes, this.date, this.more});

  News.fromJson(Map<String, dynamic> json) {
    titile = json['titile'];
    image = json['image'];
    notes = json['notes'];
    date = json['date'];
    more = json['more'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titile'] = this.titile;
    data['image'] = this.image;
    data['notes'] = this.notes;
    data['date'] = this.date;
    data['more'] = this.more;
    return data;
  }
}
