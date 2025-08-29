import 'package:cats/data/http/http2.dart';
import 'package:cats/data/utils/constant_endpoints.dart';
import 'package:cats/domain/entities/cats/breeds_entity.dart';
import 'package:cats/domain/entities/cats/breed_image_entity.dart';
import 'package:cats/domain/repositories/abstract_cats_repository.dart';

class CatsRepositoryImpl extends AbstractCatsRepository {
  @override
  Future<List<BreedsEntity>> getBreeds(int limit) async {
    try {
      return await HttpService(
        baseUrl: ConstantEndpoints.baseUrl,
      ).get<List<BreedsEntity>>(
        ConstantEndpoints.getBreeds,
        (data) => (data as List).map((e) => BreedsEntity.fromJson(e)).toList(),
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<BreedsEntity> getBreedById(String breedId) async {
    try {
      return await HttpService(
        baseUrl: ConstantEndpoints.baseUrl,
      ).get<BreedsEntity>(
        '${ConstantEndpoints.getBreeds}/$breedId',
        (data) => BreedsEntity.fromJson(data),
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<BreedImageEntity> getBreedImage(String imageId) async {
    try {

      return await HttpService(
        baseUrl: ConstantEndpoints.baseUrl,
      ).get<BreedImageEntity>(
        '${ConstantEndpoints.getBreedImage}/$imageId',
        (data) => BreedImageEntity.fromJson(data),
      );
    } catch (_) {
      rethrow;
    }
  }
}
