class model_gallary {
  List<Gallary>? gallary;

  model_gallary({this.gallary});

  model_gallary.fromJson(Map<String, dynamic> json) {
    if (json['gallary'] != null) {
      gallary = <Gallary>[];
      json['gallary'].forEach((v) {
        gallary!.add(new Gallary.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.gallary != null) {
      data['gallary'] = this.gallary!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Gallary {
  String? titile;
  String? image;
  String? notes;
  String? date;
  String? view;

  Gallary({this.titile, this.image, this.notes, this.date, this.view});

  Gallary.fromJson(Map<String, dynamic> json) {
    titile = json['titile'];
    image = json['image'];
    notes = json['notes'];
    date = json['date'];
    view = json['view'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titile'] = this.titile;
    data['image'] = this.image;
    data['notes'] = this.notes;
    data['date'] = this.date;
    data['view'] = this.view;
    return data;
  }
}
