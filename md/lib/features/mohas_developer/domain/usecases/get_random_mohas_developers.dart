import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:md/core/error/failures.dart';
import 'package:md/core/usecases/usecase.dart';
import 'package:md/features/mohas_developer/domain/entities/mohas_developers.dart';
import 'package:md/features/mohas_developer/domain/repositories/mohas_developers_repo.dart';



class GetRandomMohasDeves implements UseCase<mohasdevelopers, NoParams>{
 final MohasDevesRepo repository;

  GetRandomMohasDeves(this.repository);

@override
  Future<Either<Failures, mohasdevelopers>?> execute(NoParams params) async {
return await repository.getRoundomMohasdevelopers();
  }
  
 

}

class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}