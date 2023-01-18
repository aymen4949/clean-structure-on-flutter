import 'package:dartz/dartz.dart';
import 'package:md/core/error/failures.dart';
import 'package:equatable/equatable.dart';


abstract class UseCase<Type, Params> {
  Future<Either<Failures, Type>?> execute(Params params);
}

class NoParams extends Equitable {}