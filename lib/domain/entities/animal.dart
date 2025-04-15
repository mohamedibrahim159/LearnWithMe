import 'package:equatable/equatable.dart';

class Animal extends Equatable {
  final String name;
  final String sound;
  final String image;

  Animal({
    required this.name,
    required this.sound,
    required this.image,
  });

  @override
  List<Object?> get props => [
        name,sound,image
      ];
}