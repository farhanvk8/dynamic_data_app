# Dynamic Data App

An app to display data dynamically

## Getting started

### Project

1. Open the project
2. Execute ```flutter pub get``` in root project directory and in all custom packages (package directory)
3. Start the build_runner code generation tool with ```flutter pub run build_runner build```
4. Run the project.


##### VSCode 
1. ```launch.json``` - Added configurations for launching programs

## Project Structure

This project follows the feature-driven directory structure and uses MVVM design pattern

```
|-- .vscode
|   |-- launch.json
|-- configs
|-- lib
|   |-- core (common to all features)
|-- |-- |-- models
|-- |-- |-- repositories
|-- |-- |-- services
|-- |-- |-- widgets
|   |-- features
|-- |-- |-- activities
|-- |-- |-- |-- controllers (change notifier, state notifier, freezed)
|-- |-- |-- |-- domain (models, repositories, services)
|-- |-- |-- |-- presentation (views, widgets)
|   |-- app.dart
|   |-- main_development.dart
|   |-- main_production.dart
|   |-- providers.dart
|   |-- view_router.dart


```

 1. ```core``` -> It contains all functionalities that are common to every features
 2. ```features``` -> It contains all features of app

## Tests

- In the terminal, type ```flutter test``` to test all the test cases inside the ```test``` directory.
