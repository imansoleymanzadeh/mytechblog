class Famili {
  Famili({
    required this.id,
    required this.name,
    required this.lastname,
  });
  late final int id;
  late final String name;
  late final String lastname;
  
  Famili.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    lastname = json['lastname'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['lastname'] = lastname;
    return _data;
  }
}
