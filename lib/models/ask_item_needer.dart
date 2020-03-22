
class AskItemNeeder {
  String iD;
  String title;
  String postType;
  String data;
  User user;
  String status;
  String needHelpType;
  String description;
  List<Null> itensNeeded;

  AskItemNeeder(
      {this.iD,
      this.title,
      this.postType,
      this.data,
      this.user,
      this.status,
      this.needHelpType,
      this.description,
      this.itensNeeded});

  AskItemNeeder.fromJson(Map<String, dynamic> json) {
    iD = json['ID__'];
    title = json['Title'];
    postType = json['PostType'];
    data = json['data'];
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
    status = json['Status'];
    needHelpType = json['NeedHelpType'];
    description = json['description'];
    if (json['ItensNeeded'] != null) {
      itensNeeded = new List<Null>();
      json['ItensNeeded'].forEach((v) {
      //  itensNeeded.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID__'] = this.iD;
    data['Title'] = this.title;
    data['PostType'] = this.postType;
    data['data'] = this.data;
    if (this.user != null) {
      data['User'] = this.user.toJson();
    }
    data['Status'] = this.status;
    data['NeedHelpType'] = this.needHelpType;
    data['description'] = this.description;
    if (this.itensNeeded != null) {
     // data['ItensNeeded'] = this.itensNeeded.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  String userID;
  String userName;
  String userAge;
  String userFamilyDependents;
  String userContactPhone;
  List<String> addressCordinates;

  User(
      {this.userID,
      this.userName,
      this.userAge,
      this.userFamilyDependents,
      this.userContactPhone,
      this.addressCordinates});

  User.fromJson(Map<String, dynamic> json) {
    userID = json['UserID'];
    userName = json['UserName'];
    userAge = json['UserAge'];
    userFamilyDependents = json['UserFamilyDependents'];
    userContactPhone = json['UserContactPhone'];
    addressCordinates = json['address_Cordinates'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserID'] = this.userID;
    data['UserName'] = this.userName;
    data['UserAge'] = this.userAge;
    data['UserFamilyDependents'] = this.userFamilyDependents;
    data['UserContactPhone'] = this.userContactPhone;
    data['address_Cordinates'] = this.addressCordinates;
    return data;
  }
}