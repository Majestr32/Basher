
abstract class ActionUseCase<Params>{
  Future<void> execute(Params params);
}