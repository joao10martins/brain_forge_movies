import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/production_company.dart';

part 'production_company_model.freezed.dart';
part 'production_company_model.g.dart';

@freezed
abstract class ProductionCompanyModel with _$ProductionCompanyModel {
  const factory ProductionCompanyModel({
    required int id,
    String? logoPath,
    required String name,
    @JsonKey(name: 'origin_country') required String originCountry,
  }) = _ProductionCompanyModel;

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyModelFromJson(json);
}

extension ProductionCompanyMapper on ProductionCompanyModel {
  ProductionCompany toEntity() => ProductionCompany(
    id: id,
    name: name,
    originCountry: originCountry,
    logoPath: logoPath,
  );
}
