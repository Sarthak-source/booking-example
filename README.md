Book App Test
A new Flutter project for booking flights, allowing users to select trip types, destinations, currencies, departure dates, and passenger details.

![simulator_screenshot_77648EF1-4D75-4A2E-B0B8-0DD343CBA900](https://github.com/user-attachments/assets/594c6ea9-2ac1-46fc-9097-b3f6bc6f47b0)

![simulator_screenshot_DE1C27A0-EF7C-4E9C-A050-2508AC25565F](https://github.com/user-attachments/assets/1853d22e-9573-4b05-8897-1b4803404b86)

Getting Started
This project serves as a starting point for building a booking application using Flutter.

Prerequisites
Flutter SDK
Dart 2.17.0 or later
Compatible IDE (e.g., Android Studio or Visual Studio Code)
Installation
Clone the repository:


git clone https://github.com/your-username/book_app_test.git
Navigate to the project directory:



cd book_app_test
Install dependencies:

flutter pub get
Run the app:


flutter run

Features
Trip Selection: Users can choose between One-Way, Round-Trip, and Multi-City options.
Destination Input: Select or input origin and destination cities.
Currency Selection: Choose a preferred currency for flight pricing.
Passenger Selection: Customize the number of adults, children, and infants, and select seat class.
Search Flights: Find flights based on selected parameters.
Folder Structure

```
lib/
├── main.dart                # Entry point of the application
├── screens/                 # Contains all screen widgets (e.g., HomeScreen, PassengerSelectionScreen)
├── widgets/                 # Custom widgets used in the application
├── providers/               # Contains all providers for state management
└── utils/                   # Utility classes and functions
```

Screens
HomeScreen: The main screen where users start their booking journey.
PassengerSelectionScreen: Screen for selecting passengers, seat class, etc.
State Management
This project uses the Provider package for managing app-wide states, such as passenger count and seat selection.

Dependencies
The app uses several packages to enhance functionality, including:

Provider: State management
Flutter Icons: Icons for a better user experience
Intl: For date and currency formatting
To add or update dependencies, modify the pubspec.yaml file and run:

flutter pub get
Getting Help
For help with Flutter, check the official Flutter documentation.

Contributing
If you want to contribute to this project, feel free to submit pull requests or report issues. Contributions are always welcome!
