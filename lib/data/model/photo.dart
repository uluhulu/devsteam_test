// To parse this JSON data, do
//
//     final photo = photoFromJson(jsonString);


class Photo {
  Photo({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.blurHash,
    this.description,
    this.altDescription,
    this.urls,
    this.links,
    this.categories,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
    this.sponsorship,
    this.user,
  });

  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime promotedAt;
  final int width;
  final int height;
  final String color;
  final String blurHash;
  final dynamic description;
  final String altDescription;
  final Urls urls;
  final PhotoLinks links;
  final List<dynamic> categories;
  final int likes;
  final bool likedByUser;
  final List<dynamic> currentUserCollections;
  final Sponsorship sponsorship;
  final User user;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
    id: json["id"],
    // createdAt: DateTime.parse(json["created_at"]),
    // updatedAt: DateTime.parse(json["updated_at"]),
    // width: json["width"],
    // height: json["height"],
    // color: json["color"],
    // blurHash: json["blur_hash"],
    description: json["description"],
    altDescription: json["alt_description"],
    urls: Urls.fromJson(json["urls"]),
    // links: PhotoLinks.fromJson(json["links"]),
    // categories: List<dynamic>.from(json["categories"].map((x) => x)),
    // likes: json["likes"],
    // likedByUser: json["liked_by_user"],
    // currentUserCollections: List<dynamic>.from(json["current_user_collections"].map((x) => x)),
    // sponsorship: Sponsorship.fromJson(json["sponsorship"]),
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "width": width,
    "height": height,
    "color": color,
    "blur_hash": blurHash,
    "description": description,
    "alt_description": altDescription,
    "urls": urls.toJson(),
    "links": links.toJson(),
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "likes": likes,
    "liked_by_user": likedByUser,
    "current_user_collections": List<dynamic>.from(currentUserCollections.map((x) => x)),
    "sponsorship": sponsorship.toJson(),
    "user": user.toJson(),
  };
}

class PhotoLinks {
  PhotoLinks({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  final String self;
  final String html;
  final String download;
  final String downloadLocation;

  factory PhotoLinks.fromJson(Map<String, dynamic> json) => PhotoLinks(
    self: json["self"],
    html: json["html"],
    download: json["download"],
    downloadLocation: json["download_location"],
  );

  Map<String, dynamic> toJson() => {
    "self": self,
    "html": html,
    "download": download,
    "download_location": downloadLocation,
  };
}

class Sponsorship {
  Sponsorship({
    this.impressionUrls,
    this.tagline,
    this.taglineUrl,
    this.sponsor,
  });

  final List<String> impressionUrls;
  final String tagline;
  final String taglineUrl;
  final User sponsor;

  factory Sponsorship.fromJson(Map<String, dynamic> json) => Sponsorship(
    impressionUrls: List<String>.from(json["impression_urls"].map((x) => x)),
    tagline: json["tagline"],
    taglineUrl: json["tagline_url"],
    sponsor: User.fromJson(json["sponsor"]),
  );

  Map<String, dynamic> toJson() => {
    "impression_urls": List<dynamic>.from(impressionUrls.map((x) => x)),
    "tagline": tagline,
    "tagline_url": taglineUrl,
    "sponsor": sponsor.toJson(),
  };
}

class User {
  User({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections,
    this.totalLikes,
    this.totalPhotos,
    this.acceptedTos,
    this.forHire,
  });

  final String id;
  final DateTime updatedAt;
  final String username;
  final String name;
  final String firstName;
  final String lastName;
  final String twitterUsername;
  final String portfolioUrl;
  final String bio;
  final dynamic location;
  final UserLinks links;
  final ProfileImage profileImage;
  final String instagramUsername;
  final int totalCollections;
  final int totalLikes;
  final int totalPhotos;
  final bool acceptedTos;
  final bool forHire;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    updatedAt: DateTime.parse(json["updated_at"]),
    username: json["username"],
    name: json["name"],
    firstName: json["first_name"],
    lastName: json["last_name"] == null ? null : json["last_name"],
    twitterUsername: json["twitter_username"],
    portfolioUrl: json["portfolio_url"],
    bio: json["bio"],
    location: json["location"],
    links: UserLinks.fromJson(json["links"]),
    profileImage: ProfileImage.fromJson(json["profile_image"]),
    instagramUsername: json["instagram_username"],
    totalCollections: json["total_collections"],
    totalLikes: json["total_likes"],
    totalPhotos: json["total_photos"],
    acceptedTos: json["accepted_tos"],
    forHire: json["for_hire"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "updated_at": updatedAt.toIso8601String(),
    "username": username,
    "name": name,
    "first_name": firstName,
    "last_name": lastName == null ? null : lastName,
    "twitter_username": twitterUsername,
    "portfolio_url": portfolioUrl,
    "bio": bio,
    "location": location,
    "links": links.toJson(),
    "profile_image": profileImage.toJson(),
    "instagram_username": instagramUsername,
    "total_collections": totalCollections,
    "total_likes": totalLikes,
    "total_photos": totalPhotos,
    "accepted_tos": acceptedTos,
    "for_hire": forHire,
  };
}

class UserLinks {
  UserLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
    this.following,
    this.followers,
  });

  final String self;
  final String html;
  final String photos;
  final String likes;
  final String portfolio;
  final String following;
  final String followers;

  factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
    self: json["self"],
    html: json["html"],
    photos: json["photos"],
    likes: json["likes"],
    portfolio: json["portfolio"],
    following: json["following"],
    followers: json["followers"],
  );

  Map<String, dynamic> toJson() => {
    "self": self,
    "html": html,
    "photos": photos,
    "likes": likes,
    "portfolio": portfolio,
    "following": following,
    "followers": followers,
  };
}

class ProfileImage {
  ProfileImage({
    this.small,
    this.medium,
    this.large,
  });

  final String small;
  final String medium;
  final String large;

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
    small: json["small"],
    medium: json["medium"],
    large: json["large"],
  );

  Map<String, dynamic> toJson() => {
    "small": small,
    "medium": medium,
    "large": large,
  };
}

class Urls {
  Urls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
  });

  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
    raw: json["raw"],
    full: json["full"],
    regular: json["regular"],
    small: json["small"],
    thumb: json["thumb"],
  );

  Map<String, dynamic> toJson() => {
    "raw": raw,
    "full": full,
    "regular": regular,
    "small": small,
    "thumb": thumb,
  };
}
