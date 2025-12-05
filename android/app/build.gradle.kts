plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
<<<<<<< HEAD
    // Уникальное имя пакета
    namespace = "com.buu.myapp"
=======
    namespace = "com.example.my_app"
>>>>>>> 00e29f93416e8a4acd2399c88c26c1310aa79a81
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
<<<<<<< HEAD
        // Уникальный Application ID
        applicationId = "com.buu.myapp"
=======
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.my_app"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
>>>>>>> 00e29f93416e8a4acd2399c88c26c1310aa79a81
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
<<<<<<< HEAD
            // Для финальной сборки можно создать свой ключ, сейчас debug
            signingConfig = signingConfigs.getByName("debug")
            // Рекомендуется добавить ProGuard или R8 оптимизацию для релиза
=======
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
>>>>>>> 00e29f93416e8a4acd2399c88c26c1310aa79a81
        }
    }
}

flutter {
    source = "../.."
}
