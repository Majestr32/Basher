import '../error/failure.dart';

abstract class VoidUseCase<Params>{
  Future<Failure?> execute(Params params);
}