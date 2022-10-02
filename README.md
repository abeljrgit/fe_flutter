# Front-end Boilerplate

Front-end boiler plate using Flutter framework.

## Run Locally

Download the repository

Go to the project directory

Install dependencies:

```bash
  flutter pub get
```

Start the development server(HTML Renderer):

```bash
  flutter run -d chrome --web-renderer html
```

Build your work(HTML Renderer)

```bash
  flutter build web --release --pwa-strategy=none --web-renderer html
```

## Folder Structure

Folder name is self explanatory

    src
    ├── fonts
    ├── images
    ├── lib
    │   ├── models
    │   ├── providers
    │   ├── screens
    │   ├── utilities
    │   ├── widgets
    │   └── main.dart
    ├── test
    │   └── widget_test.dart
    ├── web
    │   ├── icons
    │   ├── favicon.png
    │   ├── index.html
    │   └── manifest.json
    ├── .gitignore
    ├── .metadata
    ├── analysis_options.yaml
    ├── pubspec.lock
    ├── pubspec.yaml
    └── README.md

## Documentation

[Flutter](https://reactjs.org/docs/getting-started.html)  
[Flutter Svg](https://pub.dev/documentation/flutter_svg/latest/)  
[Provider](https://pub.dev/documentation/provider/latest/)  
[Url Launcher](https://pub.dev/documentation/url_launcher/latest/)  
[Flutter Staggered Grid View](https://pub.dev/documentation/flutter_staggered_grid_view/latest/)

## Authors

- [@abeljrgit](https://github.com/abeljrgit)
