class UserModel {
  String? id;
  String? password;
  String? lastLogin;
  String? fullName;
  String? email;
  bool? emailVerified;
  String? createdAt;
  String? updatedAt;
  String? dateOfBirth;
  String? phoneNumber;
  String? countryCode;
  String? address;
  String? nationality;
  String? passportPhoto;
  String? ninPhoto;
  bool? isStaff;
  bool? isSuperuser;
  bool? isActive;
  bool? isAdmin;
  List? groups;
  List? userPermissions;

  UserModel({
    this.id,
    this.password,
    this.lastLogin,
    this.fullName,
    this.email,
    this.emailVerified,
    this.createdAt,
    this.updatedAt,
    this.dateOfBirth,
    this.phoneNumber,
    this.countryCode,
    this.address,
    this.nationality,
    this.passportPhoto,
    this.ninPhoto,
    this.isStaff,
    this.isSuperuser,
    this.isActive,
    this.isAdmin,
    this.groups,
    this.userPermissions,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    password = json['password'];
    lastLogin = json['last_login'];
    fullName = json['full_name'];
    email = json['email'];
    emailVerified = json['email_verified'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    dateOfBirth = json['date_of_birth'];
    phoneNumber = json['phone_number'];
    countryCode = json['country_code'];
    address = json['address'];
    nationality = json['nationality'];
    passportPhoto = json['passport_photo'];
    ninPhoto = json['nin_photo'];
    isStaff = json['is_staff'];
    isSuperuser = json['is_superuser'];
    isActive = json['is_active'];
    isAdmin = json['is_admin'];
    if (json['groups'] != null) {
      groups = [];
      json['groups'].forEach((v) {
        groups!.add(v);
      });
    }
    if (json['user_permissions'] != null) {
      userPermissions = [];
      json['user_permissions'].forEach((v) {
        userPermissions!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['password'] = this.password;
    data['last_login'] = this.lastLogin;
    data['full_name'] = this.fullName;
    data['email'] = this.email;
    data['email_verified'] = this.emailVerified;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['date_of_birth'] = this.dateOfBirth;
    data['phone_number'] = this.phoneNumber;
    data['country_code'] = this.countryCode;
    data['address'] = this.address;
    data['nationality'] = this.nationality;
    data['passport_photo'] = this.passportPhoto;
    data['nin_photo'] = this.ninPhoto;
    data['is_staff'] = this.isStaff;
    data['is_superuser'] = this.isSuperuser;
    data['is_active'] = this.isActive;
    data['is_admin'] = this.isAdmin;
    if (this.groups != null) {
      data['groups'] = this.groups!.map((v) => v.toJson()).toList();
    }
    if (this.userPermissions != null) {
      data['user_permissions'] =
          this.userPermissions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
