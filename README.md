# imot

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

<!-- >flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons* -->

## Run Icon

fvm flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-prod.yaml
fvm flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-dev.yaml
fvm flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-uat.yaml

# Splash Page | --path=path/to/my/file.yaml

fvm flutter pub run flutter_native_splash:create --flavor prod
fvm flutter pub run flutter_native_splash:create --flavor uat
fvm flutter pub run flutter_native_splash:create --flavor dev

## Generate Collection Database

fvm dart run build_runner build --delete-conflicting-outputs

## Build Flover

flutter build appbundle --flavor dev -t lib/main.dart --build-name=1.0.0+7-20220509 --build-number=1 --target-platform android-arm,android-arm64

# Builder Dev

flutter build appbundle --flavor dev -t lib/main.dart --build-name=1.0.0 --build-number=1
flutter build appbundle --flavor dev -t lib/main.dart --build-name=1.0.0 --build-number=1 --target-platform android-arm,android-arm64

flutter build apk --flavor dev -t lib/main.dart --target-platform android-arm,android-arm64,android-x64 --split-per-abi
flutter build apk --flavor dev -t lib/main.dart --build-name=1.0.8 --build-number=1 --target-platform android-arm,android-arm64 --release
fvm flutter build apk --flavor dev -t lib/main.dart --release --build-name=1.0.19 --build-number=19 --target-platform android-arm,android-arm64

fvm flutter build apk --flavor dev -t lib/main.dart --build-name=1.0.0+8 --build-number=1 --target-platform android-arm --release

fvm flutter build apk --flavor dev -t lib/main.dart --release

# Build UAT

flutter build appbundle --flavor uat -t lib/main_uat.dart --build-name=1.0.0 --build-number=1

fvm flutter build apk --flavor uat -t lib/main_uat.dart --build-name=1.0.0 --build-number=1

flutter build apk --target-platform android-arm,android-arm64 --release

flutter build apk --flavor uat -t lib/main_uat.dart --build-name=1.1.8 --build-number=18 --target-platform android-arm,android-arm64 --release

fvm flutter build apk --flavor uat -t lib/main_uat.dart --release --build-name=1.1.5 --build-number=15 --target-platform android-arm,android-arm64

fvm flutter build ipa --flavor uat -t lib/main_uat.dart --build-name=1.1.0 --build-number=11 --release

fvm flutter build apk --flavor uat -dart-define=app.flavor=uat -t lib/main_uat.dart --build-name=1.1.24 --build-number=31 --target-platform android-arm,android-arm64 --release

# Build Pro

fvm flutter build appbundle --flavor prod -t lib/main_prod.dart --build-name=1.0.0 --build-number=1

fvm flutter build apk --flavor prod -t lib/main_prod.dart --release --build-name=1.1.14 --build-number=14 --target-platform android-arm,android-arm64

fvm flutter build apk --flavor prod -t lib/main_prod.dart --build-name=1.1.14 --build-number=14 --release

fvm flutter build apk --flavor prod -t lib/main_prod.dart --build-name=1.1.23 --build-number=28 --release --target-platform android-arm,android-arm64 --release

fvm flutter build ipa --flavor prod -t lib/main_prod.dart --build-name=1.1.0 --build-number=11 --release

## QR CODE

https://pub.dev/packages/ai_barcode

docker build . -t flutter_docker

#Call Log
https://pub.dev/packages/call_log/install
<uses-permission android:name="android.permission.READ_CALL_LOG" />
call_log: ^3.2.3

#IOS CLEAN
fvm flutter clean && rm -Rf ios/Pods && rm -Rf ios/.symlinks && rm -Rf ios/Flutter/Flutter.framework && rm -Rf ios/Flutter/Flutter.podspec

#IMOT V1 STEP

HOME
-/v1/jobs/assign
-/v1/jobs/bd48567a7e03dbb4
