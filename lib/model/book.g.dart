// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book(
      json['author'] as String,
      json['chapterLink'] as String,
      json['id'] as String,
      json['image'] as String,
      json['link'] as String,
      json['site'] as String,
      json['title'] as String);
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'author': instance.author,
      'chapterLink': instance.chapterLink,
      'id': instance.id,
      'image': instance.image,
      'link': instance.link,
      'site': instance.site,
      'title': instance.title
    };
