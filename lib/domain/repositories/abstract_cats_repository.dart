import 'package:cats/domain/entities/cats/breeds_entity.dart';

abstract class AbstractCatsRepository {
  Future<List<BreedsEntity>> getBreeds(int limit);
}
