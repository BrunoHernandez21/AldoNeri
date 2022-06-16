import 'dart:convert';

import 'conversacion.dart';

////////////////////////////////Lesson
class Lesson {
  Lesson({
    this.id,
    this.title,
    this.duration,
    this.courseId,
    this.sectionId,
    this.videoType,
    this.videoUrl,
    this.videoUrlWeb,
    this.videoTypeWeb,
    this.lessonType,
    this.attachment,
    this.attachmentUrl,
    this.attachmentType,
    this.summary,
    this.isCompleted,
    this.userValidity,
    this.conversacion,
  });

  String? id;
  String? title;
  String? duration;
  String? courseId;
  String? sectionId;
  String? videoType;
  String? videoUrl;
  String? videoUrlWeb;
  String? videoTypeWeb;
  String? lessonType;
  String? attachment;
  String? attachmentUrl;
  String? attachmentType;
  String? summary;
  int? isCompleted;
  bool? userValidity;
  ConversacionM? conversacion;

  Lesson copyWith({
    String? id,
    String? title,
    String? duration,
    String? courseId,
    String? sectionId,
    String? videoType,
    String? videoUrl,
    String? videoUrlWeb,
    String? videoTypeWeb,
    String? lessonType,
    String? attachment,
    String? attachmentUrl,
    String? attachmentType,
    String? summary,
    int? isCompleted,
    bool? userValidity,
    ConversacionM? conversacion,
  }) =>
      Lesson(
        id: id ?? this.id,
        title: title ?? this.title,
        duration: duration ?? this.duration,
        courseId: courseId ?? this.courseId,
        sectionId: sectionId ?? this.sectionId,
        videoType: videoType ?? this.videoType,
        videoUrl: videoUrl ?? this.videoUrl,
        videoUrlWeb: videoUrlWeb ?? this.videoUrlWeb,
        videoTypeWeb: videoTypeWeb ?? this.videoTypeWeb,
        lessonType: lessonType ?? this.lessonType,
        attachment: attachment ?? this.attachment,
        attachmentUrl: attachmentUrl ?? this.attachmentUrl,
        attachmentType: attachmentType ?? this.attachmentType,
        summary: summary ?? this.summary,
        isCompleted: isCompleted ?? this.isCompleted,
        userValidity: userValidity ?? this.userValidity,
        conversacion: conversacion ?? this.conversacion,
      );

  factory Lesson.fromJson(String str) => Lesson.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Lesson.fromMap(Map<String, dynamic> json) => Lesson(
        id: json["id"],
        title: json["title"],
        duration: json["duration"],
        courseId: json["course_id"],
        sectionId: json["section_id"],
        videoType: json["video_type"],
        videoUrl: json["video_url"],
        videoUrlWeb: json["video_url_web"],
        videoTypeWeb: json["video_type_web"],
        lessonType: json["lesson_type"],
        attachment: json["attachment"],
        attachmentUrl: json["attachment_url"],
        attachmentType: json["attachment_type"],
        summary: json["summary"],
        isCompleted: json["is_completed"],
        userValidity: json["user_validity"],
        conversacion: json["conversacion"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "duration": duration,
        "course_id": courseId,
        "section_id": sectionId,
        "video_type": videoType,
        "video_url": videoUrl,
        "video_url_web": videoUrlWeb,
        "video_type_web": videoTypeWeb,
        "lesson_type": lessonType,
        "attachment": attachment,
        "attachment_url": attachmentUrl,
        "attachment_type": attachmentType,
        "summary": summary,
        "is_completed": isCompleted,
        "user_validity": userValidity,
        "conversacion": conversacion?.toMap(),
      };
}
