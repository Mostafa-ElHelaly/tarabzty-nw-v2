class BookingModel {
  int? reservationId;
  String? userId;
  int? restaurantId;
  int? tableId;
  String? startTime;
  String? endTime;
  String? status;
  User? user;
  Restaurant? restaurant;
  Tables? table;

  BookingModel(
      {this.reservationId,
        this.userId,
        this.restaurantId,
        this.tableId,
        this.startTime,
        this.endTime,
        this.status,
        this.user,
        this.restaurant,
        this.table});

  BookingModel.fromJson(Map<String, dynamic> json) {
    reservationId = json['reservationId'];
    userId = json['userId'];
    restaurantId = json['restaurantId'];
    tableId = json['tableId'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    status = json['status'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    restaurant = json['restaurant'] != null
        ? new Restaurant.fromJson(json['restaurant'])
        : null;
    table = json['table'] != null ? new Tables.fromJson(json['table']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reservationId'] = this.reservationId;
    data['userId'] = this.userId;
    data['restaurantId'] = this.restaurantId;
    data['tableId'] = this.tableId;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    data['status'] = this.status;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.restaurant != null) {
      data['restaurant'] = this.restaurant!.toJson();
    }
    if (this.table != null) {
      data['table'] = this.table!.toJson();
    }
    return data;
  }
}

class User {
  String? id;
  String? userName;
  String? normalizedUserName;
  String? email;
  String? normalizedEmail;
  bool? emailConfirmed;
  String? passwordHash;
  String? securityStamp;
  String? concurrencyStamp;
  String? phoneNumber;
  bool? phoneNumberConfirmed;
  bool? twoFactorEnabled;
  String? lockoutEnd;
  bool? lockoutEnabled;
  int? accessFailedCount;
  String? firstName;
  String? lastName;
  List<RefreshTokens>? refreshTokens;

  User(
      {this.id,
        this.userName,
        this.normalizedUserName,
        this.email,
        this.normalizedEmail,
        this.emailConfirmed,
        this.passwordHash,
        this.securityStamp,
        this.concurrencyStamp,
        this.phoneNumber,
        this.phoneNumberConfirmed,
        this.twoFactorEnabled,
        this.lockoutEnd,
        this.lockoutEnabled,
        this.accessFailedCount,
        this.firstName,
        this.lastName,
        this.refreshTokens});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    normalizedUserName = json['normalizedUserName'];
    email = json['email'];
    normalizedEmail = json['normalizedEmail'];
    emailConfirmed = json['emailConfirmed'];
    passwordHash = json['passwordHash'];
    securityStamp = json['securityStamp'];
    concurrencyStamp = json['concurrencyStamp'];
    phoneNumber = json['phoneNumber'];
    phoneNumberConfirmed = json['phoneNumberConfirmed'];
    twoFactorEnabled = json['twoFactorEnabled'];
    lockoutEnd = json['lockoutEnd'];
    lockoutEnabled = json['lockoutEnabled'];
    accessFailedCount = json['accessFailedCount'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    if (json['refreshTokens'] != null) {
      refreshTokens = <RefreshTokens>[];
      json['refreshTokens'].forEach((v) {
        refreshTokens!.add(new RefreshTokens.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['normalizedUserName'] = this.normalizedUserName;
    data['email'] = this.email;
    data['normalizedEmail'] = this.normalizedEmail;
    data['emailConfirmed'] = this.emailConfirmed;
    data['passwordHash'] = this.passwordHash;
    data['securityStamp'] = this.securityStamp;
    data['concurrencyStamp'] = this.concurrencyStamp;
    data['phoneNumber'] = this.phoneNumber;
    data['phoneNumberConfirmed'] = this.phoneNumberConfirmed;
    data['twoFactorEnabled'] = this.twoFactorEnabled;
    data['lockoutEnd'] = this.lockoutEnd;
    data['lockoutEnabled'] = this.lockoutEnabled;
    data['accessFailedCount'] = this.accessFailedCount;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    if (this.refreshTokens != null) {
      data['refreshTokens'] =
          this.refreshTokens!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RefreshTokens {
  String? token;
  String? expiresOn;
  bool? isExpired;
  String? createdOn;
  String? revokedOn;
  bool? isActive;

  RefreshTokens(
      {this.token,
        this.expiresOn,
        this.isExpired,
        this.createdOn,
        this.revokedOn,
        this.isActive});

  RefreshTokens.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    expiresOn = json['expiresOn'];
    isExpired = json['isExpired'];
    createdOn = json['createdOn'];
    revokedOn = json['revokedOn'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['expiresOn'] = this.expiresOn;
    data['isExpired'] = this.isExpired;
    data['createdOn'] = this.createdOn;
    data['revokedOn'] = this.revokedOn;
    data['isActive'] = this.isActive;
    return data;
  }
}

class Restaurant {
  int? restaurantId;
  String? name;
  String? address;
  String? phone;
  OpeningTime? openingTime;
  OpeningTime? closingTime;
  String? availableServices;
  String? cuisineType;
  List<Tables>? tables;

  Restaurant(
      {this.restaurantId,
        this.name,
        this.address,
        this.phone,
        this.openingTime,
        this.closingTime,
        this.availableServices,
        this.cuisineType,
        this.tables});

  Restaurant.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurantId'];
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
    openingTime = json['openingTime'] != null
        ? new OpeningTime.fromJson(json['openingTime'])
        : null;
    closingTime = json['closingTime'] != null
        ? new OpeningTime.fromJson(json['closingTime'])
        : null;
    availableServices = json['availableServices'];
    cuisineType = json['cuisineType'];
    if (json['tables'] != null) {
      tables = <Tables>[];
      json['tables'].forEach((v) {
        tables!.add(new Tables.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurantId'] = this.restaurantId;
    data['name'] = this.name;
    data['address'] = this.address;
    data['phone'] = this.phone;
    if (this.openingTime != null) {
      data['openingTime'] = this.openingTime!.toJson();
    }
    if (this.closingTime != null) {
      data['closingTime'] = this.closingTime!.toJson();
    }
    data['availableServices'] = this.availableServices;
    data['cuisineType'] = this.cuisineType;
    if (this.tables != null) {
      data['tables'] = this.tables!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OpeningTime {
  int? ticks;
  int? days;
  int? hours;
  int? milliseconds;
  int? microseconds;
  int? nanoseconds;
  int? minutes;
  int? seconds;
  int? totalDays;
  int? totalHours;
  int? totalMilliseconds;
  int? totalMicroseconds;
  int? totalNanoseconds;
  int? totalMinutes;
  int? totalSeconds;

  OpeningTime(
      {this.ticks,
        this.days,
        this.hours,
        this.milliseconds,
        this.microseconds,
        this.nanoseconds,
        this.minutes,
        this.seconds,
        this.totalDays,
        this.totalHours,
        this.totalMilliseconds,
        this.totalMicroseconds,
        this.totalNanoseconds,
        this.totalMinutes,
        this.totalSeconds});

  OpeningTime.fromJson(Map<String, dynamic> json) {
    ticks = json['ticks'];
    days = json['days'];
    hours = json['hours'];
    milliseconds = json['milliseconds'];
    microseconds = json['microseconds'];
    nanoseconds = json['nanoseconds'];
    minutes = json['minutes'];
    seconds = json['seconds'];
    totalDays = json['totalDays'];
    totalHours = json['totalHours'];
    totalMilliseconds = json['totalMilliseconds'];
    totalMicroseconds = json['totalMicroseconds'];
    totalNanoseconds = json['totalNanoseconds'];
    totalMinutes = json['totalMinutes'];
    totalSeconds = json['totalSeconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ticks'] = this.ticks;
    data['days'] = this.days;
    data['hours'] = this.hours;
    data['milliseconds'] = this.milliseconds;
    data['microseconds'] = this.microseconds;
    data['nanoseconds'] = this.nanoseconds;
    data['minutes'] = this.minutes;
    data['seconds'] = this.seconds;
    data['totalDays'] = this.totalDays;
    data['totalHours'] = this.totalHours;
    data['totalMilliseconds'] = this.totalMilliseconds;
    data['totalMicroseconds'] = this.totalMicroseconds;
    data['totalNanoseconds'] = this.totalNanoseconds;
    data['totalMinutes'] = this.totalMinutes;
    data['totalSeconds'] = this.totalSeconds;
    return data;
  }
}

class Tables {
  int? tableId;
  int? restaurantId;
  int? tableNumber;
  int? capacity;
  String? restaurant;
  List<String>? reservations;

  Tables(
      {this.tableId,
        this.restaurantId,
        this.tableNumber,
        this.capacity,
        this.restaurant,
        this.reservations});

  Tables.fromJson(Map<String, dynamic> json) {
    tableId = json['tableId'];
    restaurantId = json['restaurantId'];
    tableNumber = json['tableNumber'];
    capacity = json['capacity'];
    restaurant = json['restaurant'];
    reservations = json['reservations'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tableId'] = this.tableId;
    data['restaurantId'] = this.restaurantId;
    data['tableNumber'] = this.tableNumber;
    data['capacity'] = this.capacity;
    data['restaurant'] = this.restaurant;
    data['reservations'] = this.reservations;
    return data;
  }
}