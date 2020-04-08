
class Contact {
  final int id;
  String name;
  String fullImagePath;
  int groupId = 1;
  String phoneNumber;
  String hometown;
  String email;
  DateTime dateOfBirth;
  bool connectedToday = false;
  DateTime lastConnection;
  String overallConnectionLevel;
  String notes = "Has a dog named Biscuit";

  static int _latestID = 0;

  // bool toBoolean(String str, [bool strict]) {
  //   if (strict == true) {
  //   return str == '1' || str == 'true';
  //   }
  //   return str != '0' && str != 'false' && str != '';
  //   }

  Contact(this.name, String imageName, this.groupId,
      [this.phoneNumber = "+354 859 2304",
      this.hometown = "Cape Town",
      this.email = "friend@yahoo.com",
      this.dateOfBirth,
      this.overallConnectionLevel= "Good"])
      : id = _latestID++,
        fullImagePath = _imagePathPrefix + imageName,
        assert(groupId <= _MAXGROUPID);

  Contact.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        fullImagePath = json['fullImagePath'],
        groupId = json["groupId"],
        phoneNumber = json["phonenumber"],
        hometown = json["hometown"],
        email = json["email"],
        dateOfBirth = DateTime.tryParse(json["dateOfBirth"]),
        connectedToday = json["connectedToday"],
        lastConnection = DateTime.tryParse(json["lastConnection"]),
        overallConnectionLevel = json["overallConnectionLevel"],
        notes = json["notes"];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fullImagePath': fullImagePath,
        "groupId": groupId,
        "phonenumber": phoneNumber,
        "hometown": hometown,
        "email" : email,
        "dateOfBirth": dateOfBirth.toString(),
        "connectedToday": connectedToday,
        "lastConnection" : lastConnection.toString(),
        "overallConnectionLevel": overallConnectionLevel,
        "notes": notes
      };

  String toString() {
    return " id: " +
        id.toString() +
        "name:" +
        name +
        " fullImagePath: " +
        fullImagePath +
        " groupId: " +
        groupId.toString() +
        " phoneNumber: " + 
        phoneNumber +
        " hometown: " +
        hometown +
        " email: " +
        email + 
        " dateOfBirth: " +
        dateOfBirth.toString() +
        " connectedToday: " +
        connectedToday.toString() + 
        " lastConnection: " + 
        lastConnection.toString() + 
        " overallConnectionLevel: " +
        overallConnectionLevel +
        " notes: " +
        notes;
  }
}
