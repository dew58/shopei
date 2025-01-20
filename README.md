# Shopei 🛒

Welcome to **Shopei**, a modern e-commerce application designed for seamless shopping experiences. This README will guide you through setting up and running the project.

---

## 🚀 Cover
![Screenshot 2025-01-20 102504](https://github.com/user-attachments/assets/a83e78c8-7370-4dc9-9db1-05578f92eda9)



---

## 📋 Features

- **User Authentication** 🔐
- **Product Listing** 🛍️
- **Search Functionality** 🔍
- **Add to Cart** 🛒
- **Wishlist Management** ❤️
- **Order History** 📜

---

## 🛠️ Setup Instructions

Follow these steps to set up and run the Shopei project on your local machine.

### 1. Prerequisites

Ensure you have the following installed:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) 🐦
- [Dart](https://dart.dev/get-dart) ⚡
- An IDE like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio) 💻

### 2. Clone the Repository

```bash
git clone https://github.com/dew58/shopei.git
cd shopei
```

### 3. Install Dependencies

Run the following command to install all necessary dependencies:

```bash
flutter pub get
```

### 4. Set Up Firebase

Shopei uses Firebase for authentication and data storage. To set it up:

1. Go to [Firebase Console](https://console.firebase.google.com/).
2. Create a new project and add your app (Android/iOS).
3. Download the `google-services.json` (Android) or `GoogleService-Info.plist` (iOS) file and place it in the respective directories:
   - Android: `android/app`
   - iOS: `ios/Runner`
4. Update your Firebase configuration in `pubspec.yaml` if necessary.

### 5. Run the App

Use the following command to run the app on an emulator or connected device:

```bash
flutter run
```

---

## 💾 Folder Structure

```plaintext
Shopei/
├── lib/
│   ├── core/         # The code of the app shared in all the files
│   ├── feature/      # Features of the app
│   ├── my_app.dart   # the material app
│   └── main.dart     # Application entry point
├── assets/           # Images and icons
├── android/          # Android-specific files
├── ios/              # iOS-specific files
├── pubspec.yaml      # Dependency configuration
└── README.md         # Project documentation
```

---

## 🌟 Technologies Used

- **Flutter** for cross-platform development.
- **Firebase** for backend services (authentication, Firestore).
- **Cubit** for state management.

---

## 📸 Screenshots

| Home Page 🏠  | Product Page 🛍️ | Cart Page 🛒 |
|--------------|----------------|-------------|
| ![Home](https://via.placeholder.com/300x600.png?text=Home) | ![Product](https://via.placeholder.com/300x600.png?text=Product) | ![Cart](https://via.placeholder.com/300x600.png?text=Cart) |

---

## 🤝 Contribution Guidelines

We welcome contributions! Please follow these steps:
1. Fork the repository.
2. Create a new branch: `git checkout -b feature-name`
3. Commit your changes: `git commit -m "Add feature-name"`
4. Push to the branch: `git push origin feature-name`
5. Submit a pull request.

---

## 📧 Contact

For questions or support, reach out to:
- **Nada Mossa**
- Email: newg2001@gmail.com
- GitHub: [dew58](https://github.com/dew58)

---


Enjoy building and shopping with Shopei! 🎉

**🛠🦺 this app is still under work I will update you ....**

20 jan 2025
