# Base Code Flutter Clean Architecture Template

A Flutter application designed as a robust starting point for new projects, showcasing clean architecture and a feature-rich UI. This rewards-based application provides a clear, scalable, and maintainable codebase for building modern mobile apps with Flutter.

## ✨ Features

- **Authentication:** Secure user login and registration with Firebase integration.
- **Home Dashboard:** A central hub displaying user stats, rewards, and navigation to key features.
- **Live Offers:** Real-time display and management of promotional offers.
- **User Profile:** Comprehensive profile management with avatar selection and settings.
- **Rewards System:** Earn and track rewards through tasks and achievements.
- **Tasks & Achievements:** Complete daily tasks to accumulate points and unlock rewards.
- **Leaderboards:** View top-ranking users and compete for the highest scores.
- **Multi-language Support:** Localization for English and Vietnamese.
- **Responsive Design:** Optimized for various screen sizes and devices.

## 🚀 Getting Started

Follow these instructions to get the project up and running on your local machine for development and testing purposes.

### Prerequisites

- **Flutter SDK:** Version 3.8.0 or higher. [Install Flutter](https://flutter.dev/docs/get-started/install).
- **Dart SDK:** Included with Flutter.
- **IDE:** [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/) with the Flutter and Dart plugins installed.
- **Git:** For version control.
- **Firebase Account:** For authentication and database services (optional for local development).

### Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/NinhLuong/basecode_cubit_rewards_app.git
   cd basecode_cubit_rewards_app
   ```

2. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

3. **Generate Code (for Freezed, JSON Serializable, etc.):**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Set Up Environment:**
   - Copy the appropriate environment file (e.g., `dev_env.dart`) and configure API keys and settings.
   - For Firebase integration, add your `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) to the respective directories.

5. **Run the App:**
   - For development: `flutter run`
   - For production: `flutter run --release `
   - To run tests: `flutter test`

### Build and Deployment

- **Android APK:** `flutter build apk --flavor production`
- **iOS IPA:** `flutter build ios --flavor production`

## 📂 Project Structure

The project follows the **Clean Architecture** pattern, separating concerns into three main layers. Code is organized by feature in the `lib/` directory for better maintainability.

```
lib/
├── app.dart                          # Main app widget and configuration
├── main.dart                         # Entry point
├── config/                           # Configuration files (DI, environments, themes)
├── core/                             # Shared core functionality
│   ├── data/                         # Data layer (datasources, models, repositories)
│   ├── domain/                       # Domain layer (entities, usecases)
│   └── presentation/                 # Presentation layer (blocs, routes)
├── features/                         # Feature-specific modules
│   ├── auth/                         # Authentication feature
│   ├── home/                         # Home dashboard
│   ├── live_offers/                  # Live offers
│   ├── profile/                      # User profile
│   ├── rewards/                      # Rewards system
│   ├── tasks/                        # Tasks and achievements
│   └── top_users/                    # Leaderboards
├── generated/                        # Auto-generated files (localizations, etc.)
├── l10n/                             # Localization files
└── shared/                           # Shared utilities, widgets, and constants
```

- **Data Layer:** Handles API calls, database interactions, and data models.
- **Domain Layer:** Contains business logic, entities, and repository interfaces.
- **Presentation Layer:** Manages UI components, state management with BLoC, and routing.

## 📦 Key Dependencies

This project leverages several packages for a robust, maintainable codebase:

- **State Management:** [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) - Predictable state management.
- **Routing:** [`go_router`](https://pub.dev/packages/go_router) - Declarative routing.
- **Dependency Injection:** [`get_it`](https://pub.dev/packages/get_it) & [`injectable`](https://pub.dev/packages/injectable) - Service locator and code generation.
- **Networking:** [`dio`](https://pub.dev/packages/dio) - HTTP client for API requests.
- **Data Models:** [`freezed`](https://pub.dev/packages/freezed) & [`json_serializable`](https://pub.dev/packages/json_serializable) - Immutable classes and JSON serialization.
- **Functional Programming:** [`dartz`](https://pub.dev/packages/dartz) - Either for error handling.
- **Localization:** [`flutter_localizations`](https://flutter.dev/docs/development/accessibility-and-localization/internationalization) - Multi-language support.
- **Firebase:** [`firebase_core`](https://pub.dev/packages/firebase_core), [`firebase_auth`](https://pub.dev/packages/firebase_auth) - Authentication and backend services.

For a full list, see `pubspec.yaml`.

## 📝 Key Guidelines

### Architecture

This project adheres to **Clean Architecture** principles, ensuring separation of concerns and testability. It uses the **BLoC (Business Logic Component)** pattern for state management, promoting a clear distinction between business logic and UI. Features are organized into independent modules, each following the layered architecture (Data, Domain, Presentation).

### Code Style

We follow the official [Effective Dart: Style](https://dart.dev/guides/language/effective-dart/style) guide. Key conventions:
- Use `PascalCase` for types (classes, enums).
- Use `camelCase` for variables, methods, and parameters.
- Use `snake_case` for file and directory names.
- Keep lines under 80 characters; use trailing commas for multi-parameter functions.
- Prefer const constructors for immutable widgets.

### Testing

The project employs a comprehensive testing strategy:
- **Unit Tests:** Cover individual functions, methods, and classes in the data and domain layers (located in `test/unit_test/`).
- **Integration Tests:** Verify interactions between components (in `test/integration_test/`).
- **Widget Tests:** Test UI components for correct rendering and behavior.

Run tests with `flutter test`. Aim for high coverage, especially in domain and data layers.

### Error Handling

- Use `Either<Failure, Success>` from Dartz for functional error handling.
- Implement custom `Failure` classes for domain-specific errors.
- Display errors in UI using `SelectableText.rich` with red color for visibility.
- Handle loading and error states within BLoC states.

### Performance Optimization

- Use const widgets where possible.
- Implement efficient list rendering with `ListView.builder`.
- Optimize Firebase queries with indexes and limits.
- Cache network resources appropriately.

## 🙌 Contributing

We welcome contributions! To contribute:

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/your-feature`.
3. Make changes, ensuring adherence to code style and architecture.
4. Write or update tests for your changes.
5. Commit: `git commit -m 'Add some feature'`.
6. Push: `git push origin feature/your-feature`.
7. Open a pull request with a clear description.

### Pull Request Guidelines

- Ensure all tests pass.
- Update documentation if needed.
- Follow the commit message format: `type(scope): description` (e.g., `feat(auth): add login validation`).

## 🔑 Credentials for Testing

- **Username:** `mhdamhd`
- **Password:** `a123123`

## 📧 Contact Information

For questions or support, contact [ninhluongvh.dev@gmail.com](mailto:ninhluongvh.dev@gmail.com).

---

