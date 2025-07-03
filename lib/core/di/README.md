# Dependency Injection System

Sistem dependency injection ini menggunakan **GetIt** untuk mengelola semua dependencies dalam aplikasi Flutter.

## Struktur

```
lib/core/di/
├── injection_container.dart    # Container utama yang mengatur semua dependencies
├── home_injection.dart        # Dependencies khusus untuk home feature
├── search_injection.dart      # Template untuk search feature (TODO)
└── README.md                 # Dokumentasi ini
```

## Cara Penggunaan

### 1. Inisialisasi Dependencies

Dependencies sudah diinisialisasi secara otomatis di `main.dart`:

```dart
Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependencies
  await configureDependencies();

  // ... kode lainnya
}
```

### 2. Menggunakan Dependencies di Widget

Dependencies dapat diakses menggunakan `getIt` instance:

```dart
// Di route config
return BlocProvider<BooksBloc>(
  create: (context) => getIt<BooksBloc>(),
  child: const HomePage(),
);

// Atau langsung di widget
final usecase = getIt<GetBooksUsecase>();
```

### 3. Menambahkan Feature Baru

Untuk menambahkan dependency injection untuk feature baru:

1. **Buat file injection baru** (contoh: `likes_injection.dart`):

```dart
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> configureLikesDependencies() async {
  // Data sources
  getIt.registerLazySingleton<LikesRemoteSource>(
    () => LikesRemoteSourceImpl(remoteSource: getIt()),
  );

  // Repositories
  getIt.registerLazySingleton<LikesRepository>(
    () => LikesRepositoryImpl(
      networkInfo: getIt(),
      likesRemoteSource: getIt(),
    ),
  );

  // Use cases
  getIt.registerLazySingleton<GetLikedBooksUsecase>(
    () => GetLikedBooksUsecase(likesRepository: getIt()),
  );

  // Blocs
  getIt.registerFactory<LikesBloc>(
    () => LikesBloc(getLikedBooksUsecase: getIt()),
  );
}
```

2. **Import dan panggil di `injection_container.dart`**:

```dart
import 'likes_injection.dart';

Future<void> _initFeatures() async {
  await configureHomeDependencies();
  await configureLikesDependencies(); // Tambahkan ini
}
```

3. **Update route config** untuk menggunakan BlocProvider:

```dart
case RouteConfig.likes:
  return BlocProvider<LikesBloc>(
    create: (context) => getIt<LikesBloc>(),
    child: const LikesPage(),
  );
```

## Jenis Registration

### Singleton

Untuk dependencies yang hanya perlu satu instance:

```dart
getIt.registerLazySingleton<BookRepository>(() => BookRepositoryImpl());
```

### Factory

Untuk dependencies yang perlu instance baru setiap kali dipanggil (seperti Bloc):

```dart
getIt.registerFactory<BooksBloc>(() => BooksBloc());
```

## Core Dependencies

Core dependencies sudah terregistrasi secara otomatis:

- `Connectivity` - Untuk cek koneksi internet
- `Dio` - HTTP client dengan interceptor
- `NetworkInfo` - Wrapper untuk connectivity check
- `RemoteSource` - Abstraksi untuk HTTP calls

## Testing

Untuk testing, gunakan `resetDependencies()` untuk reset semua dependencies:

```dart
await resetDependencies();
// Kemudian setup mock dependencies untuk test
```

## Best Practices

1. **Pisahkan dependencies per feature** - Setiap feature memiliki file injection sendiri
2. **Gunakan lazy singleton** untuk dependencies yang mahal untuk dibuat
3. **Gunakan factory** untuk Bloc dan dependencies yang perlu fresh instance
4. **Cek registrasi** menggunakan `isRegistered()` untuk menghindari duplikasi
5. **Dokumentasikan dependencies** yang kompleks dengan komentar
