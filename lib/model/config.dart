class Config {
  List<Time>? time;

  Config({this.time});

  Config.fromJson(Map<String, dynamic> json) {
    if (json['Time'] != null) {
      time = <Time>[];
      json['Time'].forEach((v) {
        time!.add(Time.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (time != null) {
      data['Time'] = time!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Time {
  int? id;
  String? name;
  List<Field>? field;

  Time({this.id, this.name, this.field});

  Time.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['field'] != null) {
      field = <Field>[];
      json['field'].forEach((v) {
        field!.add(Field.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (field != null) {
      data['field'] = field!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Field {
  int? id;
  String? name;
  dynamic value;

  Field({this.id, this.name, this.value});

  Field.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}
