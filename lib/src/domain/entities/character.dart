import 'package:equatable/equatable.dart';

class Character extends Equatable {
  final int id;
  final String name;
  final List<String> cinemas;
  final String imageLink;
  const Character({
    required this.id,
    required this.name,
    required this.cinemas,
    required this.imageLink,
  });

  @override
  List<Object?> get props => [id];
}
