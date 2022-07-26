import '../../entities/computer_entity.dart';
import '../../repositories/get_computer_bybrand_repository.dart';
import 'get_computer_bybrand_usecase.dart';

class GetComputerBybrandUsecaseImp implements IGetComputerByBrandUsecase {
  final IGetComputerBybrandRepository _getComputerBybrandRepository;
  GetComputerBybrandUsecaseImp(this._getComputerBybrandRepository);

  @override
  ComputerEntity call(String brand) {
    return _getComputerBybrandRepository.getComputerByBrand(brand);
  }
}
