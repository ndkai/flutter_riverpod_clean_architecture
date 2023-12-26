import 'package:either_dart/either.dart';

abstract class UseCase<T, R>{
  Future<Either<String, T>> call(R params);
}