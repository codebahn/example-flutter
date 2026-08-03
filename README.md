# Flutter counter

A minimal Flutter counter app with a widget test.

## CI workflow

The workflow lives at [`.github/workflows/ci.yml`](.github/workflows/ci.yml) and declares `runs-on: ubuntu-latest`. Both are GitHub defaults, unchanged. Nothing in this repository was renamed or rewritten to run here:

- `.github/workflows/` is read directly. There is no `.forgejo/` directory.
- `ubuntu-latest` routes to a Codebahn runner in Paris.
- `actions/checkout` resolves from GitHub automatically.

On every push and pull request:

1. Installs a pinned Flutter SDK
2. Runs `flutter analyze --fatal-infos`, so a lint hint fails the build
3. Runs the widget test with `flutter test`

The SDK install is a plain `wget` and `tar` against the official Flutter release archive rather than a marketplace action. Codebahn has no marketplace, and pinning the version in the workflow keeps the build reproducible with one less dependency.

Need more than the 3 GB default? Set `runs-on: codebahn-medium` for 7 GB. See [CI runners](https://codebahn.net/docs/features/ci-runners/).

## Run locally

```
flutter pub get
flutter analyze --fatal-infos
flutter test
flutter run
```
