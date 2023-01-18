import 'package:dartz/dartz.dart';
import 'package:md/core/error/failures.dart';


abstract class UseCase<Type, Params> {
  Future<Either<Failures, Type>?> execute(Params params);
}
class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}