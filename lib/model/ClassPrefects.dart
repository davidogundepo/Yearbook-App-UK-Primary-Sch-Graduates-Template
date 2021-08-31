class ClassPrefects {
  String positionEnforced;
  String image;
  String name;
  String id;

  ClassPrefects.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    image = data['image'];
    positionEnforced = data['position_enforced'];
    name = data['name'];
  }

}