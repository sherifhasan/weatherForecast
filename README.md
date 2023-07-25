# Weather Forecast  <img src="https://img.shields.io/badge/made%20with-dart-blue.svg" alt="made with dart">

The app allows users to effortlessly access weather details for their current city using location services or explore the weather in any desired location through a search functionality. It follows the Domain-Driven Design (DDD) architecture for a clear separation of concerns, utilizes GetIt for
dependency injection, and employs the BLoC (Business Logic Component) pattern for state management.
Flutter Hooks is used for stateful logic within functional widgets.

## Key Features

Current Weather Information:

Display the current weather details, including temperature, weather condition, humidity, wind speed, and wind direction.
Support displaying temperature in Celsius and Fahrenheit units, with a toggle switch to switch between them.

Search Functionality:

Provide a search TextField where users can enter the name of any city or location to view its weather information.

Responsive Layout:

Support both vertical and horizontal layout orientations for optimal user experience on smartphones and tablets.
Details view represented in a expanded view for a nice UI experiance   

## Folder Structure

```bash
├── application
│   ├── features
│   │   └── forecast
│   │       ├── forecast_cubit.dart
│   │       ├── forecast_cubit.freezed.dart
│   │       ├── forecast_state.dart
│   │       ├── location_response.dart
│   │       └── location_response.freezed.dart
│   └── utils
│       └── app_constants.dart
├── domain
│   ├── forecast_repository.dart
│   └── models
│       ├── forecast.dart
│       └── forecast.freezed.dart
├── infrastructure
│   └── forecast
│       ├── datasource
│       │   ├── data_source.dart
│       │   └── remote_data_source_impl.dart
│       ├── forecast_repository_imp.dart
│       └── models
│           ├── forecast_dto.dart
│           ├── forecast_dto.freezed.dart
│           ├── forecast_dto.g.dart
│           ├── response_dto.dart
│           └── response_dto.freezed.dart
├── injection.dart
├── main.dart
└── presentation
    └── forecast
        ├── forecast_screen.dart
        └── views
            ├── forecast_details_expanded_view.dart
            ├── forecast_error_view.dart
            ├── forecast_loading_view.dart
            ├── horizontal
            │   ├── forecast_data_horizontal_view.dart
            │   └── more_details_horizontal_view.dart
            ├── vertical
            │   ├── forecast_data_vertical_view.dart
            │   └── more_details_vertical_view.dart
            └── views.dart
```
