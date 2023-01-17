import 'package:dartz/dartz.dart';
import 'package:md/features/mohas_developer/domain/entities/mohas_developers.dart';
import 'package:md/features/mohas_developer/domain/repositories/mohas_developers_repo.dart';
import 'package:md/features/mohas_developer/domain/usecases/get_concrete_mohas_developers.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockMohasDevesRepo extends Mock implements MohasDevesRepo {}


void main() {
  late GetConcreteMohasDeves usecase;
  late MockMohasDevesRepo mockMohasDevesRepo;
  late String tname;
  late mohasdevelopers tmohasdeve;
  setUp(() {
    mockMohasDevesRepo = MockMohasDevesRepo();
    usecase = GetConcreteMohasDeves(mockMohasDevesRepo);
    tmohasdeve =
        const mohasdevelopers(name: "aymen", devdata: "Aymen is web developer");
    tname = "aymen";
  });

  // final tname = "aymen";
  // final tmohasdeve =
  //     mohasdevelopers(name: tname, devdata: "aymen is flutter developer");

  test(
    'should get trivia for the name from the repository',
    () async {
      when(mockMohasDevesRepo.getConcreteMohasdevelopers(tname))
          .thenAnswer((_) async => Right(tmohasdeve));

      final result = await usecase(Params(name: tname));

      expect(result, Right(tmohasdeve));
      verify(mockMohasDevesRepo.getConcreteMohasdevelopers(tname));
      verifyNoMoreInteractions(mockMohasDevesRepo);
    },
  );
}
