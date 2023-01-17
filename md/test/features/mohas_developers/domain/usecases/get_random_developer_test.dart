import 'package:dartz/dartz.dart';
import 'package:md/features/mohas_developer/domain/entities/mohas_developers.dart';
import 'package:md/features/mohas_developer/domain/repositories/mohas_developers_repo.dart';
import 'package:md/features/mohas_developer/domain/usecases/get_random_mohas_developers.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockMohasDevesRepo extends Mock implements MohasDevesRepo {
 
}


void main() {
  late GetRandomMohasDeves usecase;
  late MockMohasDevesRepo mockMohasDevesRepo;
  late mohasdevelopers tmohasdeve;
  setUp(() {
    mockMohasDevesRepo = MockMohasDevesRepo();
    usecase = GetRandomMohasDeves(mockMohasDevesRepo);
    tmohasdeve =
        const mohasdevelopers(name: "aymen", devdata: "Aymen is web developer");
    // tname = "aymen";
  });

  // final tname = "aymen";
  // final tmohasdeve =
  //     mohasdevelopers(name: tname, devdata: "aymen is flutter developer");

  test(
    'should get trivia from the repository',
    () async {
      when(mockMohasDevesRepo.getRoundomMohasdevelopers())
          .thenAnswer((_) async => Right(tmohasdeve));

      final result = usecase;

      [expect];
      verifyNever(mockMohasDevesRepo.getRoundomMohasdevelopers());
      verifyNoMoreInteractions(mockMohasDevesRepo);
    },
  );
}
