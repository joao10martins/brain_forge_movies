import 'package:equatable/equatable.dart';

class ProductionCompany extends Equatable {
  final int id;
  final String name;
  final String originCountry;
  final String? logoPath;

  const ProductionCompany({
    required this.id,
    required this.name,
    required this.originCountry,
    this.logoPath,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    originCountry,
    logoPath,
  ];
}
