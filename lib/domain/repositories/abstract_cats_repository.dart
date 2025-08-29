import 'package:cats/domain/entities/cats/breeds_entity.dart';
import 'package:cats/domain/entities/cats/breed_image_entity.dart';

abstract class AbstractCatsRepository {
  Future<List<BreedsEntity>> getBreeds(int limit);
  Future<BreedsEntity> getBreedById(String id);
  Future<BreedImageEntity> getBreedImage(String id);
}
