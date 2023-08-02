import 'package:disney_characters/core/failure/failure.dart';

class CharacterServerFailure extends Failure {
  const CharacterServerFailure() : super(message: "Server error");
}
