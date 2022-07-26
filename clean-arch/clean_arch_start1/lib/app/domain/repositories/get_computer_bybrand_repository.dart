import '../entities/computer_entity.dart';

abstract class IGetComputerBybrandRepository {
  ComputerEntity getComputerByBrand(String brand);
}
