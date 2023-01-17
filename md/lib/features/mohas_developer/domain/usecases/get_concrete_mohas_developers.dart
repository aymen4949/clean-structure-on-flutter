import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:md/core/error/failures.dart';
import 'package:md/core/usecases/usecase.dart';
import 'package:md/features/mohas_developer/domain/entities/mohas_developers.dart';
import 'package:md/features/mohas_developer/domain/repositories/mohas_developers_repo.dart';

class GetConcreteMohasDeves implements UseCase<mohasdevelopers, String> {
  final MohasDevesRepo repository;

  GetConcreteMohasDeves(this.repository);


  Future<Either<Failures, mohasdevelopers>?> call(Params params) async {
    return await repository.getConcreteMohasdevelopers(params.name);
  }
  

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Params extends Equatable {
  final String name;

  const Params({required this.name}) : super();
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  

  

 
}
