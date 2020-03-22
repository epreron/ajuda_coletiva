class VoluntaryHelp {
  String iD;
  String title;
  String postType;
  String data;
  User user;
  String status;
  String offerServiceType;
  String description;
  List<String> from;
  List<String> to;

  VoluntaryHelp(
      {this.iD,
      this.title,
      this.postType,
      this.data,
      this.user,
      this.status,
      this.offerServiceType,
      this.description,
      this.from,
      this.to});

  VoluntaryHelp.fromJson(Map<String, dynamic> json) {
    iD = json['ID__'];
    title = json['Title'];
    postType = json['PostType'];
    data = json['data'];
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
    status = json['Status'];
    offerServiceType = json['OfferServiceType'];
    description = json['description'];
    from = json['from'].cast<String>();
    to = json['To'].cast<String>();
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
    data['OfferServiceType'] = this.offerServiceType;
    data['description'] = this.description;
    data['from'] = this.from;
    data['To'] = this.to;
    return data;
  }
}

class User {
  String userID;
  String userName;
  String userContactPhone;
  List<String> addressCordinates;

  User(
      {this.userID,
      this.userName,
      this.userContactPhone,
      this.addressCordinates});

  User.fromJson(Map<String, dynamic> json) {
    userID = json['UserID'];
    userName = json['UserName'];
    userContactPhone = json['UserContactPhone'];
    addressCordinates = json['address_Cordinates'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserID'] = this.userID;
    data['UserName'] = this.userName;
    data['UserContactPhone'] = this.userContactPhone;
    data['address_Cordinates'] = this.addressCordinates;
    return data;
  }
}
