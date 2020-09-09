class Equipment {
  final String name;
  final String image;


  Equipment({this.name, this.image});

  factory Equipment.fromJson(Map<String, dynamic> json) {
    return new Equipment(
      name: json['name'],
      image: json['image'],
    );
  }
}
