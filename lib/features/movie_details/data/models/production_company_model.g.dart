// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductionCompanyModel _$ProductionCompanyModelFromJson(
  Map<String, dynamic> json,
) => _ProductionCompanyModel(
  id: (json['id'] as num).toInt(),
  logoPath: json['logoPath'] as String?,
  name: json['name'] as String,
  originCountry: json['origin_country'] as String,
);

Map<String, dynamic> _$ProductionCompanyModelToJson(
  _ProductionCompanyModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'logoPath': instance.logoPath,
  'name': instance.name,
  'origin_country': instance.originCountry,
};
