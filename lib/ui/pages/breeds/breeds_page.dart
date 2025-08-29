import 'package:cats/ui/routes/routes.dart';
import 'package:cats/ui/utils/navigation_rout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cats/domain/notifiers/cat/cat_state_notifier.dart';

class BreedsPage extends ConsumerWidget {
  const BreedsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final breedsAsync = ref.watch(breedsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Razas de Gatos")),
      body: breedsAsync.when(
        data:
            (breeds) => ListView.builder(
              itemCount: breeds.length,
              itemBuilder: (_, i) {
                final breed = breeds[i];
                final breedImageAsync = ref.watch(
                  getBreedImageProvider(breed.referenceImageId ?? ""),
                );

                return ListTile(
                  title: Text(breed.name ?? ''),
                  subtitle: Text(breed.origin ?? ''),
                  leading: breedImageAsync.when(
                    data:
                        (image) => Image.network(
                          image.url!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                    loading:
                        () => const SizedBox(
                          width: 50,
                          height: 50,
                          child: Center(
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        ),
                    error: (_, __) => const Icon(Icons.error),
                  ),
                  onTap: () {
                    ref
                        .read(breedIdSelectedProvider.notifier)
                        .idSelected(breed.id!);

                    NavigationRout().redirectNameRoute(
                      context,
                      Routes.breedDetail,
                    );
                  },
                );
              },
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text("Error: $st")),
      ),
    );
  }
}
