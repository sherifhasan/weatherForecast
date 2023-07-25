# Weather Forecast

This is a Weather Forecast app that provides users with the current weather information. It follows
the Domain-Driven Design (DDD) architecture for a clear separation of concerns, utilizes GetIt for
dependency injection, and employs the BLoC (Business Logic Component) pattern for state management.
Flutter Hooks is used for stateful logic within functional widgets.


## Floder Structure

```bash
.
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
            ├── forecast_data_view.dart
            ├── forecast_details_expanded_view.dart
            ├── forecast_error_view.dart
            ├── forecast_loading_view.dart
            ├── more_details_view.dart
            └── views.dart

```
