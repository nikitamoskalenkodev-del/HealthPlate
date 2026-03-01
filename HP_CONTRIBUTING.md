# Contributing to HealthPlate 🤝

Thank you for your interest in contributing to HealthPlate! This document provides guidelines and instructions for contributing.

## Code of Conduct

Be respectful and inclusive. We are committed to providing a welcoming and inspiring community.

## How Can I Contribute?

### 🐛 Reporting Bugs

Before creating bug reports, check the issue list to see if the problem already exists.

**When creating a bug report, include:**
- Clear descriptive title
- Exact steps to reproduce
- Expected behavior
- Actual behavior
- Screenshots or screen recordings
- Your environment (iOS version, device, Xcode version)
- Any relevant log output

### 💡 Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues.

**When suggesting an enhancement:**
- Use a clear, descriptive title
- Provide detailed description of the enhancement
- Explain the use case
- List similar features in other apps if applicable

### 🔧 Pull Requests

**Process:**
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes with meaningful messages
4. Push to your branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request with a clear title and description

**PR Guidelines:**
- Include a reference to related issues (Closes #123)
- Provide clear description of changes
- Include screenshots for UI changes
- Ensure code follows project style guide
- Add tests for new functionality
- Update documentation if needed

## Development Setup

### Prerequisites
- iOS 18.0+
- Xcode 16.0+
- Swift 6.0+
- Git

### Getting Started

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/HealthPlate.git
cd HealthPlate

# Create development branch
git checkout -b develop origin/develop

# Create feature branch
git checkout -b feature/your-feature-name

# Install dependencies
pod install
```

## Coding Standards

### Swift Style Guide

- Follow [Swift.org style guide](https://swift.org/documentation/api-design-guidelines/)
- Use 4 spaces for indentation
- Max line length: 120 characters
- Use meaningful variable and function names

### SwiftUI Best Practices

```swift
// ✅ Good
struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            HeaderSection()
            ContentSection(viewModel: viewModel)
        }
    }
}

// ❌ Avoid
struct HomeView: View {
    var body: some View {
        VStack {
            Text("Title")
            List {
                // ... lots of code
            }
        }
    }
}
```

### Architecture

- Follow MVVM pattern
- Use dependency injection
- Keep ViewModels testable
- Separate concerns clearly

### Comments

- Add comments for complex logic
- Use `// MARK:` for section organization
- Document public APIs with doc comments

```swift
/// Calculates daily calorie goal based on user profile
/// - Parameters:
///   - profile: User's health profile
/// - Returns: Daily calorie goal in calories
func calculateDailyCalorieGoal(for profile: UserProfile) -> Int {
    // Implementation
}
```

## Git Workflow

### Branch Naming

```
feature/[feature-name]       # New features
fix/[bug-name]              # Bug fixes
docs/[doc-name]             # Documentation
refactor/[component-name]   # Code refactoring
test/[test-name]            # Test additions
chore/[task-name]           # Build, deps, etc
```

### Commit Messages

```
feat: add calorie progress widget
fix: resolve Firebase authentication timeout
docs: update README installation steps
style: format code with SwiftFormat
refactor: simplify MealEntry calculations
test: add HomeViewModel unit tests
chore: update Firebase SDK
```

### Pull Request Checklist

- [ ] Branch is up to date with `develop`
- [ ] Code follows style guide
- [ ] All tests pass
- [ ] Documentation updated
- [ ] No unnecessary console logs
- [ ] No hardcoded values (use constants)
- [ ] Screenshots included (for UI changes)

## Testing

### Unit Tests

Write tests for:
- ViewModels
- Services
- Utilities
- Data operations

```bash
# Run tests
cmd + U (in Xcode)
# Or from command line
xcodebuild test -scheme HealthPlate
```

### UI Tests

- Test critical user flows
- Verify UI updates correctly
- Check navigation flow

## Documentation

- Keep README updated
- Document new features
- Add comments to complex code
- Create guides for setup/configuration

## Performance Considerations

- Avoid memory leaks
- Optimize image loading
- Minimize network calls
- Use lazy loading where appropriate
- Profile with Instruments

## Security

- Never commit API keys or secrets
- Use environment variables for sensitive data
- Validate user input
- Sanitize data before storage
- Follow Firebase security rules

## Questions?

- Open a discussion in GitHub Discussions
- Email: support@healthplate.app
- Check existing documentation

## Recognition

Contributors will be:
- Listed in README contributors section
- Credited in app about screen
- Mentioned in release notes

---

**Thank you for contributing to HealthPlate! Together we're making nutrition tracking better for everyone. 💚**
