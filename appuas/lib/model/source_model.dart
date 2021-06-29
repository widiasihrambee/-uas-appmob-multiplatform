//Making the source model class so
class Source {
  String id;
  String name;

//Create the constructor
  Source({this.id, this.name});

//Create the factory function to map the json
  factory Source.fromJSON(Map<String, dynamic> json) {
    return Source(id: json['id'], name: json['name']);
  }
}
