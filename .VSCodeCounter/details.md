# Details

Date : 2020-04-20 20:33:18

Directory c:\Flutter Projects\TDD Course\Mobx\flutter-tdd-clean-architecture-course

Total : 62 files,  1612 codes, 756 comments, 321 blanks, all 2689 lines

[summary](results.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [README.md](/README.md) | Markdown | 12 | 0 | 9 | 21 |
| [analysis_options.yaml](/analysis_options.yaml) | YAML | 47 | 33 | 16 | 96 |
| [android/app/build.gradle](/android/app/build.gradle) | Groovy | 53 | 3 | 12 | 68 |
| [android/app/src/debug/AndroidManifest.xml](/android/app/src/debug/AndroidManifest.xml) | XML | 4 | 3 | 1 | 8 |
| [android/app/src/main/AndroidManifest.xml](/android/app/src/main/AndroidManifest.xml) | XML | 23 | 9 | 2 | 34 |
| [android/app/src/main/kotlin/com/resocoder/clean_architecture_tdd_course/MainActivity.kt](/android/app/src/main/kotlin/com/resocoder/clean_architecture_tdd_course/MainActivity.kt) | Kotlin | 10 | 0 | 4 | 14 |
| [android/app/src/main/res/drawable/launch_background.xml](/android/app/src/main/res/drawable/launch_background.xml) | XML | 4 | 7 | 2 | 13 |
| [android/app/src/main/res/values/styles.xml](/android/app/src/main/res/values/styles.xml) | XML | 6 | 2 | 1 | 9 |
| [android/app/src/profile/AndroidManifest.xml](/android/app/src/profile/AndroidManifest.xml) | XML | 4 | 3 | 1 | 8 |
| [android/build.gradle](/android/build.gradle) | Groovy | 27 | 0 | 5 | 32 |
| [android/gradle.properties](/android/gradle.properties) | Properties | 2 | 0 | 2 | 4 |
| [android/gradle/wrapper/gradle-wrapper.properties](/android/gradle/wrapper/gradle-wrapper.properties) | Properties | 5 | 1 | 1 | 7 |
| [android/settings.gradle](/android/settings.gradle) | Groovy | 12 | 0 | 4 | 16 |
| [ios/Flutter/flutter_export_environment.sh](/ios/Flutter/flutter_export_environment.sh) | Shell Script | 9 | 2 | 1 | 12 |
| [ios/Runner/AppDelegate.swift](/ios/Runner/AppDelegate.swift) | Swift | 12 | 0 | 2 | 14 |
| [ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json](/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json) | JSON | 122 | 0 | 1 | 123 |
| [ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json](/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json) | JSON | 23 | 0 | 1 | 24 |
| [ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md](/ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md) | Markdown | 3 | 0 | 2 | 5 |
| [ios/Runner/Base.lproj/LaunchScreen.storyboard](/ios/Runner/Base.lproj/LaunchScreen.storyboard) | XML | 36 | 1 | 1 | 38 |
| [ios/Runner/Base.lproj/Main.storyboard](/ios/Runner/Base.lproj/Main.storyboard) | XML | 25 | 1 | 1 | 27 |
| [ios/Runner/Runner-Bridging-Header.h](/ios/Runner/Runner-Bridging-Header.h) | C++ | 1 | 0 | 0 | 1 |
| [lib/core/error/exceptions.dart](/lib/core/error/exceptions.dart) | Dart | 2 | 0 | 2 | 4 |
| [lib/core/error/failures.dart](/lib/core/error/failures.dart) | Dart | 7 | 1 | 4 | 12 |
| [lib/core/network/network_info.dart](/lib/core/network/network_info.dart) | Dart | 10 | 0 | 5 | 15 |
| [lib/core/usecases/usecase.dart](/lib/core/usecases/usecase.dart) | Dart | 10 | 0 | 4 | 14 |
| [lib/core/util/input_converter.dart](/lib/core/util/input_converter.dart) | Dart | 14 | 0 | 3 | 17 |
| [lib/features/number_trivia/data/datasources/number_trivia_local_data_source.dart](/lib/features/number_trivia/data/datasources/number_trivia_local_data_source.dart) | Dart | 31 | 4 | 10 | 45 |
| [lib/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart](/lib/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart) | Dart | 33 | 6 | 11 | 50 |
| [lib/features/number_trivia/data/models/number_trivia_model.dart](/lib/features/number_trivia/data/models/number_trivia_model.dart) | Dart | 20 | 0 | 4 | 24 |
| [lib/features/number_trivia/data/repositories/number_trivia_repository_impl.dart](/lib/features/number_trivia/data/repositories/number_trivia_repository_impl.dart) | Dart | 56 | 0 | 8 | 64 |
| [lib/features/number_trivia/domain/entities/number_trivia.dart](/lib/features/number_trivia/domain/entities/number_trivia.dart) | Dart | 12 | 0 | 4 | 16 |
| [lib/features/number_trivia/domain/repositories/number_trivia_repository.dart](/lib/features/number_trivia/domain/repositories/number_trivia_repository.dart) | Dart | 7 | 0 | 3 | 10 |
| [lib/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart](/lib/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart) | Dart | 21 | 0 | 8 | 29 |
| [lib/features/number_trivia/domain/usecases/get_random_number_trivia.dart](/lib/features/number_trivia/domain/usecases/get_random_number_trivia.dart) | Dart | 13 | 0 | 5 | 18 |
| [lib/features/number_trivia/presentation/bloc/bloc.dart](/lib/features/number_trivia/presentation/bloc/bloc.dart) | Dart | 3 | 0 | 1 | 4 |
| [lib/features/number_trivia/presentation/bloc/number_trivia_bloc.dart](/lib/features/number_trivia/presentation/bloc/number_trivia_bloc.dart) | Dart | 0 | 84 | 1 | 85 |
| [lib/features/number_trivia/presentation/bloc/number_trivia_event.dart](/lib/features/number_trivia/presentation/bloc/number_trivia_event.dart) | Dart | 0 | 20 | 1 | 21 |
| [lib/features/number_trivia/presentation/bloc/number_trivia_state.dart](/lib/features/number_trivia/presentation/bloc/number_trivia_state.dart) | Dart | 0 | 32 | 1 | 33 |
| [lib/features/number_trivia/presentation/pages/number_trivia_page.dart](/lib/features/number_trivia/presentation/pages/number_trivia_page.dart) | Dart | 18 | 39 | 4 | 61 |
| [lib/features/number_trivia/presentation/store/number_trivia_store.dart](/lib/features/number_trivia/presentation/store/number_trivia_store.dart) | Dart | 78 | 33 | 20 | 131 |
| [lib/features/number_trivia/presentation/widgets/loading_widget.dart](/lib/features/number_trivia/presentation/widgets/loading_widget.dart) | Dart | 15 | 0 | 3 | 18 |
| [lib/features/number_trivia/presentation/widgets/message_display.dart](/lib/features/number_trivia/presentation/widgets/message_display.dart) | Dart | 23 | 0 | 4 | 27 |
| [lib/features/number_trivia/presentation/widgets/trivia_controls.dart](/lib/features/number_trivia/presentation/widgets/trivia_controls.dart) | Dart | 61 | 3 | 7 | 71 |
| [lib/features/number_trivia/presentation/widgets/trivia_display.dart](/lib/features/number_trivia/presentation/widgets/trivia_display.dart) | Dart | 34 | 0 | 4 | 38 |
| [lib/features/number_trivia/presentation/widgets/widgets.dart](/lib/features/number_trivia/presentation/widgets/widgets.dart) | Dart | 4 | 0 | 1 | 5 |
| [lib/injection_container.dart](/lib/injection_container.dart) | Dart | 37 | 14 | 10 | 61 |
| [lib/main.dart](/lib/main.dart) | Dart | 21 | 0 | 3 | 24 |
| [pubspec.yaml](/pubspec.yaml) | YAML | 32 | 6 | 8 | 46 |
| [test/core/network/network_info_test.dart](/test/core/network/network_info_test.dart) | Dart | 26 | 3 | 6 | 35 |
| [test/core/util/input_converter_test.dart](/test/core/util/input_converter_test.dart) | Dart | 35 | 9 | 6 | 50 |
| [test/features/number_trivia/data/datasources/number_trivia_local_data_source_test.dart](/test/features/number_trivia/data/datasources/number_trivia_local_data_source_test.dart) | Dart | 57 | 8 | 11 | 76 |
| [test/features/number_trivia/data/datasources/number_trivia_remote_data_source_test.dart](/test/features/number_trivia/data/datasources/number_trivia_remote_data_source_test.dart) | Dart | 96 | 18 | 16 | 130 |
| [test/features/number_trivia/data/models/number_trivia_model_test.dart](/test/features/number_trivia/data/models/number_trivia_model_test.dart) | Dart | 47 | 9 | 8 | 64 |
| [test/features/number_trivia/data/repositories/number_trivia_repository_impl_test.dart](/test/features/number_trivia/data/repositories/number_trivia_repository_impl_test.dart) | Dart | 188 | 36 | 24 | 248 |
| [test/features/number_trivia/domain/usecases/get_concrete_number_trivia_test.dart](/test/features/number_trivia/domain/usecases/get_concrete_number_trivia_test.dart) | Dart | 29 | 3 | 6 | 38 |
| [test/features/number_trivia/domain/usecases/get_random_number_trivia_test.dart](/test/features/number_trivia/domain/usecases/get_random_number_trivia_test.dart) | Dart | 29 | 3 | 6 | 38 |
| [test/features/number_trivia/presentation/bloc/number_trivia_bloc_test.dart](/test/features/number_trivia/presentation/bloc/number_trivia_bloc_test.dart) | Dart | 0 | 227 | 1 | 228 |
| [test/features/number_trivia/presentation/store/number_trivia_store_test.dart](/test/features/number_trivia/presentation/store/number_trivia_store_test.dart) | Dart | 85 | 133 | 24 | 242 |
| [test/fixtures/fixture_reader.dart](/test/fixtures/fixture_reader.dart) | Dart | 2 | 0 | 2 | 4 |
| [test/fixtures/trivia.json](/test/fixtures/trivia.json) | JSON | 6 | 0 | 1 | 7 |
| [test/fixtures/trivia_cached.json](/test/fixtures/trivia_cached.json) | JSON | 4 | 0 | 1 | 5 |
| [test/fixtures/trivia_double.json](/test/fixtures/trivia_double.json) | JSON | 6 | 0 | 1 | 7 |

[summary](results.md)