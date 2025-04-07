import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'moviemodel.freezed.dart';
part 'moviemodel.g.dart';


// Update the generated file name if using fromJson/toJson

@freezed
abstract class MovieModel with _$MovieModel {
  const factory MovieModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String email,
    @JsonKey(name: 'movie_id') required String movieId,
    required String text,
    required DateTime date,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

}



