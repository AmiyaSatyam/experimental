import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List<dynamic> properties;

  Failure({required this.properties,});

  @override
  List<Object?> get props => properties;
}