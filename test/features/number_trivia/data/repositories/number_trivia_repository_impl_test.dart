import 'package:experimental/core/platform/network_info.dart';
import 'package:experimental/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:experimental/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:experimental/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:experimental/features/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'package:experimental/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockRemoteDataSource extends Mock
    implements NumberTriviaRemoteDataSource {}

class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late NumberTriviaRepositoryImpl repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() async {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = NumberTriviaRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group('getConcreteNumberTrivia', () {
  final tNumber = 1;
  final tNumberTriviaModel =
      NumberTriviaModel(number: tNumber, text: 'test trivia');
  final NumberTrivia tNumberTrivia = tNumberTriviaModel;

  // test('should check if the device is online', () async {
  //   //arrange
  //   when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
  //   // act
  //   repository.getConcreteNumberTrivia(tNumber);
  //   // assert
  //   verify(mockNetworkInfo.isConnected);
  // });
});
}
