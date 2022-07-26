import '../entities/computer_entity.dart';

abstract class ISaveComputerFavoriteRepository {
  Future<bool> save(ComputerEntity computer);
}