class model_program {
  List<Program>? program;

  model_program({this.program});

  model_program.fromJson(Map<String, dynamic> json) {
    if (json['program'] != null) {
      program = <Program>[];
      json['program'].forEach((v) {
        program!.add(new Program.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.program != null) {
      data['program'] = this.program!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Program {
  String? titile;
  String? image;
  String? notes;
  String? more;

  Program({this.titile, this.image, this.notes, this.more});

  Program.fromJson(Map<String, dynamic> json) {
    titile = json['titile'];
    image = json['image'];
    notes = json['notes'];
    more = json['more'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titile'] = this.titile;
    data['image'] = this.image;
    data['notes'] = this.notes;
    data['more'] = this.more;
    return data;
  }
}
