import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cats/data/repository_impl/cats/cats_repository.dart';
import 'package:cats/domain/repositories/abstract_cats_repository.dart';

final catsRepositoryProvider = Provider<AbstractCatsRepository>((ref) {
  return CatsRepositoryImpl();
});
