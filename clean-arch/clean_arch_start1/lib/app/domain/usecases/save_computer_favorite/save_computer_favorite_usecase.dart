import '../../entities/computer_entity.dart';

abstract class ISaveComputerFavoriteUsecase {
  Future<bool> save(ComputerEntity computer);
}