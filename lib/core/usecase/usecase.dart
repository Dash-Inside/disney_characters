import 'package:dartz/dartz.dart';
import 'package:disney_characters/core/failure/failure.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P p);
}

class NoParams extends Equatable {
  static const NoParams instance = NoParams._();

  const NoParams._();
  factory NoParams() => NoParams.instance;

  @override
  List<Object?> get props => [];
}
