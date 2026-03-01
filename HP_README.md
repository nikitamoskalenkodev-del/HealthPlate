# HealthPlate 🍽️

[![iOS](https://img.shields.io/badge/iOS-18.0%2B-blue)](https://www.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-6.0%2B-orange)](https://www.swift.org)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-Latest-green)](https://developer.apple.com/swiftui/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**HealthPlate** — AI-powered nutrition tracking app that analyzes food photos and tracks calories, macronutrients, and health metrics in real-time.

## Features 🎯

### Core Functionality
- 📸 **AI Food Analysis** - Take photos of meals and get instant nutritional information using Claude Vision API
- 📊 **Calorie Tracking** - Real-time tracking of daily calorie intake and macronutrients (protein, fat, carbs)
- 📈 **Personalized Goals** - Set and track health goals based on your profile (weight loss, maintenance, gain)
- 📅 **Meal History** - Browse your eating patterns with calendar-based history
- 👤 **User Profiles** - Comprehensive profile management with automatic calorie goal calculation

### Technical Features
- 🔐 **Firebase Authentication** - Secure login and signup
- ☁️ **Cloud Sync** - Sync data across devices with Firebase
- 💾 **Offline Support** - SwiftData for local storage with cloud backup
- 🎨 **Modern UI** - Built with SwiftUI for a smooth, native experience
- 🌍 **Multi-language Support** - Localized for RUS, ENG, UKR, GER, PL

## Tech Stack 🛠️

- **Frontend**: SwiftUI
- **Local Database**: SwiftData
- **Backend**: Firebase (Auth, Firestore)
- **AI**: Claude Vision API (food analysis)
- **Package Manager**: Swift Package Manager (SPM)
- **Architecture**: MVVM + Coordinator Pattern

## Project Structure 📁

```
HealthPlate/
├── App/                          # Entry point & AppDelegate
├── Core/
│   ├── Networking/              # API & Firebase services
│   ├── Storage/                 # SwiftData models & operations
│   ├── Services/                # AI, HealthKit, Image processing
│   ├── Utils/                   # Helpers, extensions, constants
│   └── Theme/                   # Design system (colors, typography)
├── Features/
│   ├── Authentication/          # Login & Signup
│   ├── Home/                    # Main dashboard
│   ├── AddFood/                 # Camera & AI analysis
│   ├── History/                 # Meal history & calendar
│   ├── Profile/                 # User settings
│   └── Paywall/                 # RevenueCat integration
├── Coordinator/                 # Navigation management
└── Resources/                   # Assets, strings, config
```

## Getting Started 🚀

### Prerequisites
- iOS 18.0+
- Xcode 16.0+
- Swift 6.0+
- CocoaPods (for Firebase)

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/YourUsername/HealthPlate.git
cd HealthPlate
```

2. **Install dependencies**
```bash
# Using CocoaPods
pod install

# Or using SPM (Swift Package Manager)
# Add packages via Xcode: File → Add Packages
```

3. **Firebase Setup**
- Create a Firebase project at [firebase.google.com](https://firebase.google.com)
- Download `GoogleService-Info.plist`
- Add it to the Xcode project (add to Info.plist if needed)
- Enable Authentication (Email/Password)
- Enable Firestore Database

4. **Claude API Setup**
- Get API key from [Anthropic Console](https://console.anthropic.com)
- Add to your environment or config file

5. **Run the project**
```bash
open HealthPlate.xcworkspace
# Select target → Build & Run (Cmd + R)
```

## Development Roadmap 🗓️

### Phase 1: MVP (2-3 months) ✅
- [x] Project architecture & structure
- [ ] User authentication (Firebase)
- [ ] Basic UI screens
- [ ] Camera integration
- [ ] AI food analysis
- [ ] Meal history tracking
- [ ] SwiftData persistence

### Phase 2: Polish (2-4 weeks)
- [ ] Beautiful charts & statistics
- [ ] Dark mode support
- [ ] Gesture animations
- [ ] Performance optimization
- [ ] Accessibility features

### Phase 3: Advanced Features (3-4 weeks)
- [ ] HealthKit integration
- [ ] Recipe recommendations
- [ ] Social features (sharing)
- [ ] Premium analytics

### Phase 4: Launch (2-3 weeks)
- [ ] RevenueCat integration
- [ ] App Store optimization
- [ ] Marketing materials
- [ ] Beta testing
- [ ] Public release

## Architecture 🏗️

HealthPlate follows **MVVM + Coordinator Pattern**:

```
View ↔ ViewModel ↔ Repository ↔ DataManager/NetworkService
      ↓
   Coordinator (Navigation)
```

### Key Components

- **AppCoordinator**: Manages app-level navigation and authentication state
- **LocalDataManager**: Handles SwiftData CRUD operations
- **FirebaseService**: Manages cloud operations (auth, Firestore)
- **AIAnalysisService**: Integrates Claude Vision API for food analysis
- **ViewModels**: Business logic and state management

## Contributing 🤝

Contributions are welcome! Please follow these guidelines:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Coding Standards
- Use MVVM pattern for new features
- Add unit tests for business logic
- Follow Swift style guide
- Document public APIs with comments

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author ✍️

**Nikita Moskalenko**
- GitHub: [@YourGithubUsername](https://github.com/YourUsername)
- Email: your.email@example.com

## Support & Feedback 💬

- 📧 Email: support@healthplate.app
- 🐛 Issues: [GitHub Issues](https://github.com/YourUsername/HealthPlate/issues)
- 💡 Feature Requests: [GitHub Discussions](https://github.com/YourUsername/HealthPlate/discussions)

## Acknowledgments 🙏

- [Firebase](https://firebase.google.com) - Backend infrastructure
- [Anthropic Claude](https://www.anthropic.com) - AI food analysis
- [SwiftUI](https://developer.apple.com/swiftui/) - Modern UI framework
- Community for feedback and support

---

**Made with ❤️ for health-conscious people worldwide**
