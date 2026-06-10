# Flutter counter

A minimal Flutter counter app with unit and widget tests. Demonstrates Flutter SDK setup, static analysis, and testing on [Forgejo Actions](https://forgejo.org/docs/latest/user/actions/).

## CI workflow

Runs on every push and pull request ([`.forgejo/workflows/ci.yml`](.forgejo/workflows/ci.yml)):

1. Installs the Flutter SDK
2. Runs `flutter analyze` with strict settings
3. Runs unit and widget tests with `flutter test`

## Run locally

```
flutter pub get
flutter analyze --fatal-infos
flutter test
flutter run
```
