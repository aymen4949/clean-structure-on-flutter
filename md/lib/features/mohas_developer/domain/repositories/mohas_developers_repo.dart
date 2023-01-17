import 'package:dartz/dartz.dart';
import 'package:md/core/error/failures.dart';
import 'package:md/features/mohas_developer/domain/entities/mohas_developers.dart';

abstract class MohasDevesRepo {
  Future<Either<Failures, mohasdevelopers>>? getConcreteMohasdevelopers(String name);
  Future<Either<Failures, mohasdevelopers>>? getRoundomMohasdevelopers();
}
