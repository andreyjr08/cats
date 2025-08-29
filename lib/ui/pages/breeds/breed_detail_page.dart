import 'package:flutter/material.dart';
import 'package:cats/domain/notifiers/cat/cat_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BreedDetailPage extends ConsumerWidget {
  const BreedDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final breedsAsync = ref.watch(breedDetailProvider);

    return Scaffold(
      body: breedsAsync.when(
        data:
            (breeds) => ListTile(
              title: Text(breeds.name ?? ''),
              subtitle: Text(breeds.origin ?? ''),
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text("Error: $st")),
      ),
    );
  }
}
