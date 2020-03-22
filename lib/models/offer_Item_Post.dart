class OfferItemPost {
  String iD;
  String title;
  String postType;
  String data;
  User user;
  String status;
  String canHelpType;
  String description;
  List<Null> itensOffers;
  bool canDelivery;

  OfferItemPost(
      {this.iD,
      this.title,
      this.postType,
      this.data,
      this.user,
      this.status,
      this.canHelpType,
      this.description,
      this.itensOffers,
      this.canDelivery});

  OfferItemPost.fromJson(Map<String, dynamic> json) {
    iD = json['ID__'];
    title = json['Title'];
    postType = json['PostType'];
    data = json['data'];
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
    status = json['Status'];
    canHelpType = json['canHelpType'];
    description = json['description'];
    if (json['ItensOffers'] != null) {
      itensOffers = new List<Null>();
      json['ItensOffers'].forEach((v) {
     //   itensOffers.add(new Null.fromJson(v));
      });
    }
    canDelivery = json['Can_Delivery'];
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
    data['canHelpType'] = this.canHelpType;
    data['description'] = this.description;
    if (this.itensOffers != null) {
      //data['ItensOffers'] = this.itensOffers.map((v) => v.toJson()).toList();
    }
    data['Can_Delivery'] = this.canDelivery;
    return data;
  }
}

class User {
  String userID;
  String userName;
  String userAge;
  String userContactPhone;
  List<String> addressCordinates;

  User(
      {this.userID,
      this.userName,
      this.userAge,
      this.userContactPhone,
      this.addressCordinates});

  User.fromJson(Map<String, dynamic> json) {
    userID = json['UserID'];
    userName = json['UserName'];
    userAge = json['UserAge'];
    userContactPhone = json['UserContactPhone'];
    addressCordinates = json['address_Cordinates'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserID'] = this.userID;
    data['UserName'] = this.userName;
    data['UserAge'] = this.userAge;
    data['UserContactPhone'] = this.userContactPhone;
    data['address_Cordinates'] = this.addressCordinates;
    return data;
  }
}
