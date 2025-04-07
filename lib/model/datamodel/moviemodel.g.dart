// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moviemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => _MovieModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      movieId: json['movie_id'] as String,
      text: json['text'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$MovieModelToJson(_MovieModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'movie_id': instance.movieId,
      'text': instance.text,
      'date': instance.date.toIso8601String(),
    };
