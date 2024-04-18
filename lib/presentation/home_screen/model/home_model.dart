// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
    int? status;
    List<Datum>? data;

    HomeModel({
        this.status,
        this.data,
    });

    factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        status: json["status"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    int? id;
    String? file;
    String? location;
    String? caption;
    List<dynamic>? comments;
    int? likeCount;
    Creator? creator;
    String? naturalTime;
    bool? isLiked;

    Datum({
        this.id,
        this.file,
        this.location,
        this.caption,
        this.comments,
        this.likeCount,
        this.creator,
        this.naturalTime,
        this.isLiked,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        file: json["file"],
        location: json["location"],
        caption: json["caption"],
        comments: json["comments"] == null ? [] : List<dynamic>.from(json["comments"]!.map((x) => x)),
        likeCount: json["like_count"],
        creator: json["creator"] == null ? null : Creator.fromJson(json["creator"]),
        naturalTime: json["natural_time"],
        isLiked: json["is_liked"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "file": file,
        "location": location,
        "caption": caption,
        "comments": comments == null ? [] : List<dynamic>.from(comments!.map((x) => x)),
        "like_count": likeCount,
        "creator": creator?.toJson(),
        "natural_time": naturalTime,
        "is_liked": isLiked,
    };
}

class Creator {
    dynamic profileImage;
    String? username;
    String? firstName;
    dynamic bio;
    dynamic website;
    int? postCount;
    int? followersCount;
    int? followingCount;

    Creator({
        this.profileImage,
        this.username,
        this.firstName,
        this.bio,
        this.website,
        this.postCount,
        this.followersCount,
        this.followingCount,
    });

    factory Creator.fromJson(Map<String, dynamic> json) => Creator(
        profileImage: json["profile_image"],
        username: json["username"],
        firstName: json["first_name"],
        bio: json["bio"],
        website: json["website"],
        postCount: json["post_count"],
        followersCount: json["followers_count"],
        followingCount: json["following_count"],
    );

    Map<String, dynamic> toJson() => {
        "profile_image": profileImage,
        "username": username,
        "first_name": firstName,
        "bio": bio,
        "website": website,
        "post_count": postCount,
        "followers_count": followersCount,
        "following_count": followingCount,
    };
}
