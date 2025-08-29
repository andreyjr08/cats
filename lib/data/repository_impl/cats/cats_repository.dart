import 'package:cats/data/http/http2.dart';
import 'package:cats/data/utils/constant_endpoints.dart';
import 'package:cats/domain/entities/cats/breeds_entity.dart';
import 'package:cats/domain/repositories/abstract_cats_repository.dart';

class CatsRepository extends AbstractCatsRepository {
  final HttpService httpClient;

  CatsRepository(this.httpClient);

  @override
  Future<List<BreedsEntity>> getBreeds(int limit) async {
    try {
      final data = await httpClient.get(ConstantEndpoints.getBreeds);
      return data.map((json) => BreedsEntity.fromJson(json)).toList();
    } catch (_) {
      rethrow;
    }
  }
}
