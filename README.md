# Uniqcast Project

## Overview

The Uniqcast Project is a Flutter-based application designed to provide a seamless user experience across multiple platforms, including Android, iOS, Windows, macOS, and Linux. This project leverages various technologies and libraries to ensure high performance, scalability, and maintainability.

## Approach

The project follows a modular approach, separating concerns into different layers and components. The main components include:

- **Models**: Define the data structures used throughout the application.
- **Providers**: Manage state and provide data to the UI using Riverpod.
- **Services**: Handle business logic, API calls, and caching.
- **UI**: Flutter widgets that compose the user interface.

## Data Structures

The primary data structures used in this project are defined in the 

models

 directory. Key models include:

- **ChannelIcon**: Represents an icon for a channel.
- **TitleData**: Represents the title data with language and value.
- **DescriptionData**: Represents the description data with language and value.
- **EPGData**: Represents the Electronic Program Guide data, including channels and programs.

Example of `DescriptionData` model:
```dart
@freezed
class DescriptionData with _$DescriptionData {
  const factory DescriptionData({
    required String lang,
    required String value,
  }) = _DescriptionData;

  factory DescriptionData.fromJson(Map<String, dynamic> json) => _$DescriptionDataFromJson(json);
}
```

## Caching Strategy

The caching strategy is implemented using the `CacheService` class in the 

cache_service.dart

 file. The service uses `shared_preferences` to store and retrieve cached data.

- **Cache Duration**: Data is cached for 12 hours.
- **Cache Keys**: Unique keys are used to store EPG data and timestamps.

Example of caching EPG data:
```dart
class CacheService {
  static const String _epgKey = 'epg_data';
  static const String _timestampKey = 'epg_timestamp';
  static const Duration _cacheValidity = Duration(hours: 12);

  Future<void> cacheEPGData(EPGData data) async {
    final prefs = await SharedPreferences.getInstance();
    await Future.wait([
      prefs.setString(_epgKey, jsonEncode(data.toJson())),
      prefs.setInt(_timestampKey, DateTime.now().millisecondsSinceEpoch),
    ]);
  }

  Future<EPGData?> getCachedEPGData() async {
    final prefs = await SharedPreferences.getInstance();
    final timestamp = prefs.getInt(_timestampKey);
    final jsonData = prefs.getString(_epgKey);

    if (timestamp == null || jsonData == null) return null;
    if (DateTime.now().millisecondsSinceEpoch - timestamp > _cacheValidity.inMilliseconds) {
      return null;
    }
    return EPGData.fromJson(jsonDecode(jsonData));
  }
}
```

## Instructions for Running the Application

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter
- Android Studio or Xcode for mobile development
- Visual Studio for Windows development
- CMake and GTK for Linux development

### Setup

1. **Clone the repository**:
   ```sh
   git clone https://github.com/your-repo/uniqcast_proj.git
   cd uniqcast_proj
   ```

2. **Install dependencies**:
   ```sh
   flutter pub get
   ```

3. **Generate code** (if using Freezed or other code generation tools):
   ```sh
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

### Running on Different Platforms

#### Android

1. **Open Android Studio** and select `File > Open` and choose the 

android

 directory.
2. **Run the application** using the play button or `flutter run` command:
   ```sh
   flutter run
   ```

#### iOS

1. **Open Xcode** and select `File > Open` and choose the 

ios

 directory.
2. **Run the application** using the play button or `flutter run` command:
   ```sh
   flutter run
   ```

#### Windows

1. **Open Visual Studio** and select `File > Open > CMake` and choose the 

windows

 directory.
2. **Run the application** using the play button or `flutter run` command:
   ```sh
   flutter run
   ```

#### macOS

1. **Open Xcode** and select `File > Open` and choose the 

macos

 directory.
2. **Run the application** using the play button or `flutter run` command:
   ```sh
   flutter run
   ```

#### Linux

1. **Install dependencies**:
   ```sh
   sudo apt-get install cmake pkg-config gtk+-3.0
   ```
2. **Run the application** using the `flutter run` command:
   ```sh
   flutter run
   ```

## Conclusion

The Uniqcast Project is a comprehensive Flutter application designed to work seamlessly across multiple platforms. By following the instructions above, you can set up and run the application on your desired platform. The modular approach and caching strategy ensure a maintainable and high-performance application.