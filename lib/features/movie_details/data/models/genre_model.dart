import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/genre.dart';

part 'genre_model.freezed.dart';
part 'genre_model.g.dart';

@freezed
abstract class GenreModel with _$GenreModel {
  const factory GenreModel({
    required int id,
    required String name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}

extension GenreMapper on GenreModel {
  Genre toEntity() => Genre(id: id, name: name);
}
