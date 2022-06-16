import 'dart:convert';

import 'lesson.dart';

////////////////////Section
class Section {
  Section({
    this.id,
    this.title,
    this.courseId,
    this.order,
    this.lessons,
    this.totalDuration,
    this.lessonCounterStarts,
    this.lessonCounterEnds,
    this.completedLessonNumber,
    this.userValidity,
  });

  String? id;
  String? title;
  String? courseId;
  String? order;
  List<Lesson>? lessons;
  String? totalDuration;
  int? lessonCounterStarts;
  int? lessonCounterEnds;
  int? completedLessonNumber;
  bool? userValidity;

  Section copyWith({
    String? id,
    String? title,
    String? courseId,
    String? order,
    List<Lesson>? lessons,
    String? totalDuration,
    int? lessonCounterStarts,
    int? lessonCounterEnds,
    int? completedLessonNumber,
    bool? userValidity,
  }) =>
      Section(
        id: id ?? this.id,
        title: title ?? this.title,
        courseId: courseId ?? this.courseId,
        order: order ?? this.order,
        lessons: lessons ?? this.lessons,
        totalDuration: totalDuration ?? this.totalDuration,
        lessonCounterStarts: lessonCounterStarts ?? this.lessonCounterStarts,
        lessonCounterEnds: lessonCounterEnds ?? this.lessonCounterEnds,
        completedLessonNumber:
            completedLessonNumber ?? this.completedLessonNumber,
        userValidity: userValidity ?? this.userValidity,
      );

  factory Section.fromJson(String str) => Section.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Section.fromMap(Map<String, dynamic> json) => Section(
        id: json["id"],
        title: json["title"],
        courseId: json["course_id"],
        order: json["order"],
        lessons:
            List<Lesson>.from(json["lessons"].map((x) => Lesson.fromMap(x))),
        totalDuration: json["total_duration"],
        lessonCounterStarts: json["lesson_counter_starts"],
        lessonCounterEnds: json["lesson_counter_ends"],
        completedLessonNumber: json["completed_lesson_number"],
        userValidity: json["user_validity"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "course_id": courseId,
        "order": order,
        "lessons": List<dynamic>.from(lessons?.map((x) => x.toMap()) ?? []),
        "total_duration": totalDuration,
        "lesson_counter_starts": lessonCounterStarts,
        "lesson_counter_ends": lessonCounterEnds,
        "completed_lesson_number": completedLessonNumber,
        "user_validity": userValidity,
      };
}
