// To parse this JSON data, do
//
//     final Curso = CursoFromMap(jsonString);

import 'dart:convert';

import 'section.dart';

class CursoModel {
  CursoModel({
    this.id,
    this.title,
    this.shortDescription,
    this.description,
    this.outcomes,
    this.language,
    this.categoryId,
    this.subCategoryId,
    this.section,
    this.requirements,
    this.price,
    this.discountFlag,
    this.discountedPrice,
    this.level,
    this.userId,
    this.thumbnail,
    this.videoUrl,
    this.dateAdded,
    this.lastModified,
    this.courseType,
    this.isTopCourse,
    this.isAdmin,
    this.status,
    this.courseOverviewProvider,
    this.metaKeywords,
    this.metaDescription,
    this.isFreeCourse,
    this.multiInstructor,
    this.creator,
    this.rating,
    this.numberOfRatings,
    this.instructorName,
    this.instructorImage,
    this.totalEnrollment,
    this.shareableLink,
    this.completion,
    this.totalNumberOfLessons,
    this.totalNumberOfCompletedLessons,
    this.sections,
    this.isWishlisted,
    this.isPurchased,
    this.includes,
  });

  String? id;
  String? title;
  String? shortDescription;
  String? description;
  List<dynamic>? outcomes;
  String? language;
  String? categoryId;
  String? subCategoryId;
  String? section;
  List<dynamic>? requirements;
  String? price;
  dynamic discountFlag;
  String? discountedPrice;
  String? level;
  String? userId;
  String? thumbnail;
  String? videoUrl;
  String? dateAdded;
  String? lastModified;
  String? courseType;
  String? isTopCourse;
  String? isAdmin;
  String? status;
  String? courseOverviewProvider;
  String? metaKeywords;
  String? metaDescription;
  String? isFreeCourse;
  String? multiInstructor;
  String? creator;
  int? rating;
  int? numberOfRatings;
  String? instructorName;
  String? instructorImage;
  int? totalEnrollment;
  String? shareableLink;
  int? completion;
  int? totalNumberOfLessons;
  int? totalNumberOfCompletedLessons;
  List<Section>? sections;
  bool? isWishlisted;
  int? isPurchased;
  List<String>? includes;

  CursoModel copyWith({
    String? id,
    String? title,
    String? shortDescription,
    String? description,
    //TODO no se que sea
    List<dynamic>? outcomes,
    String? language,
    String? categoryId,
    String? subCategoryId,
    String? section,
    //TODO no se que sea
    List<dynamic>? requirements,
    String? price,
    //TODO no se que sea
    String? discountFlag,
    String? discountedPrice,
    String? level,
    String? userId,
    String? thumbnail,
    String? videoUrl,
    String? dateAdded,
    String? lastModified,
    String? courseType,
    String? isTopCourse,
    String? isAdmin,
    String? status,
    String? courseOverviewProvider,
    String? metaKeywords,
    String? metaDescription,
    String? isFreeCourse,
    String? multiInstructor,
    String? creator,
    int? rating,
    int? numberOfRatings,
    String? instructorName,
    String? instructorImage,
    int? totalEnrollment,
    String? shareableLink,
    int? completion,
    int? totalNumberOfLessons,
    int? totalNumberOfCompletedLessons,
    List<Section>? sections,
    bool? isWishlisted,
    int? isPurchased,
    List<String>? includes,
  }) =>
      CursoModel(
        id: id ?? this.id,
        title: title ?? this.title,
        shortDescription: shortDescription ?? this.shortDescription,
        description: description ?? this.description,
        outcomes: outcomes ?? this.outcomes,
        language: language ?? this.language,
        categoryId: categoryId ?? this.categoryId,
        subCategoryId: subCategoryId ?? this.subCategoryId,
        section: section ?? this.section,
        requirements: requirements ?? this.requirements,
        price: price ?? this.price,
        discountFlag: discountFlag ?? this.discountFlag,
        discountedPrice: discountedPrice ?? this.discountedPrice,
        level: level ?? this.level,
        userId: userId ?? this.userId,
        thumbnail: thumbnail ?? this.thumbnail,
        videoUrl: videoUrl ?? this.videoUrl,
        dateAdded: dateAdded ?? this.dateAdded,
        lastModified: lastModified ?? this.lastModified,
        courseType: courseType ?? this.courseType,
        isTopCourse: isTopCourse ?? this.isTopCourse,
        isAdmin: isAdmin ?? this.isAdmin,
        status: status ?? this.status,
        courseOverviewProvider:
            courseOverviewProvider ?? this.courseOverviewProvider,
        metaKeywords: metaKeywords ?? this.metaKeywords,
        metaDescription: metaDescription ?? this.metaDescription,
        isFreeCourse: isFreeCourse ?? this.isFreeCourse,
        multiInstructor: multiInstructor ?? this.multiInstructor,
        creator: creator ?? this.creator,
        rating: rating ?? this.rating,
        numberOfRatings: numberOfRatings ?? this.numberOfRatings,
        instructorName: instructorName ?? this.instructorName,
        instructorImage: instructorImage ?? this.instructorImage,
        totalEnrollment: totalEnrollment ?? this.totalEnrollment,
        shareableLink: shareableLink ?? this.shareableLink,
        completion: completion ?? this.completion,
        totalNumberOfLessons: totalNumberOfLessons ?? this.totalNumberOfLessons,
        totalNumberOfCompletedLessons:
            totalNumberOfCompletedLessons ?? this.totalNumberOfCompletedLessons,
        sections: sections ?? this.sections,
        isWishlisted: isWishlisted ?? this.isWishlisted,
        isPurchased: isPurchased ?? this.isPurchased,
        includes: includes ?? this.includes,
      );

  factory CursoModel.fromJson(String str) =>
      CursoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CursoModel.fromMap(Map<String, dynamic> json) => CursoModel(
        id: json["id"],
        title: json["title"],
        shortDescription: json["short_description"],
        description: json["description"],
        outcomes: List<dynamic>.from(json["outcomes"].map((x) => x)),
        language: json["language"],
        categoryId: json["category_id"],
        subCategoryId: json["sub_category_id"],
        section: json["section"],
        requirements: List<dynamic>.from(json["requirements"].map((x) => x)),
        price: json["price"],
        discountFlag: json["discount_flag"],
        discountedPrice: json["discounted_price"],
        level: json["level"],
        userId: json["user_id"],
        thumbnail: json["thumbnail"],
        videoUrl: json["video_url"],
        dateAdded: json["date_added"],
        lastModified: json["last_modified"],
        courseType: json["course_type"],
        isTopCourse: json["is_top_course"],
        isAdmin: json["is_admin"],
        status: json["status"],
        courseOverviewProvider: json["course_overview_provider"],
        metaKeywords: json["meta_keywords"],
        metaDescription: json["meta_description"],
        isFreeCourse: json["is_free_course"],
        multiInstructor: json["multi_instructor"],
        creator: json["creator"],
        rating: json["rating"],
        numberOfRatings: json["number_of_ratings"],
        instructorName: json["instructor_name"],
        instructorImage: json["instructor_image"],
        totalEnrollment: json["total_enrollment"],
        shareableLink: json["shareable_link"],
        completion: json["completion"],
        totalNumberOfLessons: json["total_number_of_lessons"],
        totalNumberOfCompletedLessons:
            json["total_number_of_completed_lessons"],
        sections:
            List<Section>.from(json["sections"].map((x) => Section.fromMap(x))),
        isWishlisted: json["is_wishlisted"],
        isPurchased: json["is_purchased"],
        includes: List<String>.from(json["includes"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "short_description": shortDescription,
        "description": description,
        "outcomes": List<dynamic>.from(outcomes?.map((x) => x) ?? []),
        "language": language,
        "category_id": categoryId,
        "sub_category_id": subCategoryId,
        "section": section,
        "requirements": List<dynamic>.from(requirements?.map((x) => x) ?? []),
        "price": price,
        "discount_flag": discountFlag,
        "discounted_price": discountedPrice,
        "level": level,
        "user_id": userId,
        "thumbnail": thumbnail,
        "video_url": videoUrl,
        "date_added": dateAdded,
        "last_modified": lastModified,
        "course_type": courseType,
        "is_top_course": isTopCourse,
        "is_admin": isAdmin,
        "status": status,
        "course_overview_provider": courseOverviewProvider,
        "meta_keywords": metaKeywords,
        "meta_description": metaDescription,
        "is_free_course": isFreeCourse,
        "multi_instructor": multiInstructor,
        "creator": creator,
        "rating": rating,
        "number_of_ratings": numberOfRatings,
        "instructor_name": instructorName,
        "instructor_image": instructorImage,
        "total_enrollment": totalEnrollment,
        "shareable_link": shareableLink,
        "completion": completion,
        "total_number_of_lessons": totalNumberOfLessons,
        "total_number_of_completed_lessons": totalNumberOfCompletedLessons,
        "sections": List<dynamic>.from(sections?.map((x) => x.toMap()) ?? []),
        "is_wishlisted": isWishlisted,
        "is_purchased": isPurchased,
        "includes": List<dynamic>.from(includes?.map((x) => x) ?? []),
      };
}
