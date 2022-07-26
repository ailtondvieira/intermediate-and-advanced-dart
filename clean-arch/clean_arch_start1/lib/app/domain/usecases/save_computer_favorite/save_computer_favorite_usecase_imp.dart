import '../../entities/computer_entity.dart';
import '../../repositories/save_computer_favorite_repository.dart';
import 'save_computer_favorite_usecase.dart';

class SaveComputerFavoriteUsecaseImp implements ISaveComputerFavoriteUsecase {
  final ISaveComputerFavoriteRepository _repository;
  SaveComputerFavoriteUsecaseImp(this._repository);

  @override
  Future<bool> save(ComputerEntity computer) async {
    return await _repository.save(computer);
  }
}
