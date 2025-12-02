# BrainForge Movies Demo App

This project is created in Flutter using BLoC(Cubit) along with Clean Architecture.
![Dashboard](https://imgur.com/a/dItvDDg) ![Search](https://imgur.com/Ppc9Ktr) ![Details](https://imgur.com/jykFK3f)

## Getting Started

Requirements:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- [Android Studio](https://developer.android.com/studio)
- [XCode](https://developer.apple.com/xcode/)

Run the following command to see if there are any dependencies you need to install to complete the setup:
```shell
 flutter doctor
```

## How to Use

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/joao10martins/inslandsbanski-flutter-weather-app.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get 
```

**Step 3:**

This project uses `freezed`, `get_it` and `injectable` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

*More about [build_runner](https://dart.dev/tools/build_runner)*


## Architecture

This project is based on a combination of Clean Architecture and [BLoC pattern](https://bloclibrary.dev/#/).

![](https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?w=556&ssl=1)

Every "feature" of the app, will be divided into 3 layers - `presentation`, `domain` and `data`

**Presentation:**

This layer is responsible for UI, and everything which is connected with user interactions.
In most of the cases, it will be divided into 3 packages:
* `bloc` - with all bloc's (or cubit) and states used in this feature,
* `pages` - which defines all high level scaffolds, in most cases with some AppBar which includes title and navigation button,
* `widgets` - all smaller widgets used in this feature.

**Domain:**

This layer will contain only the core business logic (use cases) and business objects (entities). It should be totally independent of every other layer.
Domain layer will be divided into 3 packages:
* `entities` - all business objects and holders used in this feature,
* `repositories/repository` - which should contain only abstract definition of repository,
* `usecases` - with classes which encapsulate all the business logic of a particular use case of the app.

**Data:**

The data layer consists of a Repository implementation (the contract comes from the domain layer) and data sources.
This layer contains 2 packages:
* `models` (Usually it would be in this data layer inside the feature, but I moved it into a general/common place)
* `repositories/repository_impl` - with implementation for all repositories defined inside `domain` layer.

## Folder Structure

Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- assets
|- build
|- doc
|- graphql
|- ios
|- lib
|- test
|- tools
```

Here is the folder structure, with flutter implementation:

```
lib/
|- app/
    |- environment_config.dart
    |- router.dart
|- core/
    |- di/
    |- error/
    |- network/
    |- usecases/
|- features/
    |- dashboard/
        |- ...
    |- movie_details/
        |- ...
|- main.dart
```

### Libraries & Tools Used

The most important packages used in this project:

* [Flutter Bloc](https://pub.dev/packages/flutter_bloc)
* [Dio](https://pub.dev/packages/dio)
* [Freezed](https://pub.dev/packages/freezed)
* [Injectable](https://pub.dev/packages/injectable)
* [GoRouter](https://pub.dev/packages/go_router)
* [Dartz](https://pub.dev/packages/dartz)
* [Mockito](https://pub.dev/packages/mockito)
* [Build Runner](https://pub.dev/packages/build_runner)
