import 'package:dartz/dartz.dart';
import 'package:experimental/core/error/failures.dart';
import 'package:experimental/features/number_trivia/domain/entities/number_trivia.dart';

import '../../data/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> execute({
    required int? number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}