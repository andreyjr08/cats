import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cats/domain/entities/cats/breeds_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cats/domain/entities/cats/breed_image_entity.dart';
import 'package:cats/dependency_injection/dependency_injection.dart';

part 'cat_state_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<List<BreedsEntity>> breeds(Ref ref) async {
  try {
    final repo = ref.watch(catsRepositoryProvider);
    final breeds = await repo.getBreeds(1);

    return breeds;
  } catch (e) {
    throw Exception(e);
  }
}

@Riverpod(keepAlive: true)
class BreedIdSelected extends _$BreedIdSelected {
  @override
  String build() => '';

  void idSelected(String id) {
    state = id;
  }
}

@Riverpod(keepAlive: true)
Future<BreedsEntity> breedDetail(Ref ref) async {
  try {
    final repo = ref.watch(catsRepositoryProvider);
    final breedId = ref.watch(breedIdSelectedProvider);

    return await repo.getBreedById(breedId);
  } catch (e) {
    throw Exception(e);
  }
}

@Riverpod(keepAlive: true)
Future<BreedImageEntity> getBreedImage(Ref ref, String imageId) async {
  try {
    final repo = ref.watch(catsRepositoryProvider);

    return await repo.getBreedImage(imageId);
  } catch (e) {
    throw Exception(e);
  }
}
