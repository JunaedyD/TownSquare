# TownSquare

This app is designed to help people discover and explore various activities and services in their local town. Whether it's finding sports facilities, gyms, pilates classes, kids' activities, or new restaurants, the app aims to be a go-to resource for discovering what's available in the community. Inspired by the founder's move from Barcelona to a smaller coastal town, the app is built with the goal of creating a product that the founder himself would use as a power-user, making it practical, intuitive, and valuable for users looking to connect with and enjoy their local area.

## Installation

### Firebase Configuration

This project uses Firebase for backend services. Follow these steps to set it up:

1. **Firebase Access**  
   Contact **junaedydarwan456@gmail.com** to request access to the Firebase project associated with **TownSquare**.

2. **Firebase CLI Installation**  
   Ensure Firebase CLI is installed globally using `npm`:
   ```bash
   npm install -g firebase-tools

3. **FlutterFire Configuration**  
   Run the following command in your project directory to set up Firebase:
   ```bash
   flutterfire configure
   
## Running the Project

To try the **TownSquare** Flutter project without running it locally, visit the live version hosted on Firebase:  
[**TownSquare Live Demo**](https://twnsqr-townsquare.web.app)

## Running Locally

If you prefer to run the project locally, follow these steps:

1. Ensure all dependencies are installed:
   ```bash
   flutter pub get

2. Run the project using the following command in the terminal:
   ```bash
   flutter run -d chrome --web-renderer html

## Assumptions

1. The project uses **Firebase** for backend services, including authentication, hosting, and future integrations such as **Firebase Cloud Messaging (FCM)**. Firebase is assumed to be sufficient for handling all core functionalities of the app.
2. **Cubit** or **Bloc** is used for state management to optimize performance by preventing unnecessary screen rebuilds.
3. The project includes **animations** for loading and displaying lists to ensure a smooth user experience.
4. The app is currently designed for **web browsers** only, with future plans to support **Android** and **iOS** platforms.
5. **Styling** for text, colors, and box decorations has been organized and optimized for consistency and a clean UI design throughout the app.
6. Since this is a sample project, the App ID and API key are not hidden to simplify running the application. In production, all sensitive keys must be stored in an .env file and excluded from GitHub for security purposes.


## Improvements

1. **Splash Screen**: Implement a splash screen at the start of the app to prepare necessary data and give users a smoother onboarding experience.
2. **Authentication & Firestore Security**: Currently, Firestore rules are open to the public, which is not ideal. With more time, I would implement a **login/signup** system and adjust Firestore security rules to restrict read and write access for users without accounts.
3. **Personalized User Data**: After users log in and have a unique **UID**, we can make the app's data more personal. This would allow data specific to each user, such as personalized settings and preferences, to be stored.
4. **Persistent Login**: Implement a system to save the current logged-in user, so they don’t have to log in each time they use the app. This would create a more seamless user experience.

