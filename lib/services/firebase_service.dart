// services/firebase_service.dart
import 'package:get_it/get_it.dart';
import '../repositories/music_service_repository.dart';
import '../view_models/music_service_view_model.dart';

final GetIt getIt = GetIt.instance;

void setupDependencies() {
  // Register Repository
  getIt.registerLazySingleton<MusicServiceRepository>(
    () => MusicServiceRepository(),
  );

  // Register ViewModel
  getIt.registerFactory<MusicServiceViewModel>(
    () => MusicServiceViewModel(getIt<MusicServiceRepository>()),
  );
}