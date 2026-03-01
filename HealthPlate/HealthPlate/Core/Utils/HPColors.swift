import SwiftUI

/// HealthPlate Color System
/// A comprehensive color palette for the nutrition tracking app
struct HPColors {
    // MARK: - Primary Colors

    /// Main brand color - Fresh green
    static let primary = Color(red: 0.2, green: 0.8, blue: 0.4)

    /// Primary color variants
    static let primaryLight = Color(red: 0.4, green: 0.9, blue: 0.6)
    static let primaryDark = Color(red: 0.1, green: 0.6, blue: 0.3)

    // MARK: - Accent Colors

    /// Success color - Green
    static let success = Color(red: 0.2, green: 0.8, blue: 0.4)

    /// Warning color - Orange
    static let warning = Color(red: 1.0, green: 0.6, blue: 0.0)

    /// Error/Danger color - Red
    static let error = Color(red: 1.0, green: 0.2, blue: 0.2)

    /// Info color - Blue
    static let info = Color(red: 0.0, green: 0.5, blue: 1.0)

    // MARK: - Macro Colors

    /// Protein color - Red/Orange
    static let protein = Color(red: 1.0, green: 0.4, blue: 0.3)

    /// Carbs color - Blue
    static let carbs = Color(red: 0.0, green: 0.6, blue: 1.0)

    /// Fat color - Yellow/Gold
    static let fat = Color(red: 1.0, green: 0.8, blue: 0.0)

    // MARK: - Neutral Colors

    /// Text primary - Near black
    static let textPrimary = Color(red: 0.1, green: 0.1, blue: 0.1)

    /// Text secondary - Dark gray
    static let textSecondary = Color(red: 0.5, green: 0.5, blue: 0.5)

    /// Text tertiary - Light gray
    static let textTertiary = Color(red: 0.7, green: 0.7, blue: 0.7)

    /// Text disabled - Very light gray
    static let textDisabled = Color(red: 0.85, green: 0.85, blue: 0.85)

    // MARK: - Background Colors

    /// Background primary - White
    static let backgroundPrimary = Color(red: 1.0, green: 1.0, blue: 1.0)

    /// Background secondary - Light gray
    static let backgroundSecondary = Color(red: 0.95, green: 0.95, blue: 0.95)

    /// Background tertiary - Medium light gray
    static let backgroundTertiary = Color(red: 0.9, green: 0.9, blue: 0.9)

    // MARK: - Border Colors

    /// Border default - Light gray
    static let borderDefault = Color(red: 0.85, green: 0.85, blue: 0.85)

    /// Border light - Very light gray
    static let borderLight = Color(red: 0.92, green: 0.92, blue: 0.92)

    // MARK: - Dark Mode Support

    /// Adaptive colors that work in both light and dark modes
    static let adaptiveText: Color = Color(UIColor { traitCollection in
        traitCollection.userInterfaceStyle == .dark ?
            UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) :
            UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
    })

    static let adaptiveBackground: Color = Color(UIColor { traitCollection in
        traitCollection.userInterfaceStyle == .dark ?
            UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0) :
            UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    })

    // MARK: - Semantic Colors

    /// Color for disabled UI elements
    static let disabled = Color(red: 0.9, green: 0.9, blue: 0.9)

    /// Overlay color for modals/sheets
    static let overlay = Color.black.opacity(0.3)

    /// Shadow color
    static let shadow = Color.black.opacity(0.1)
}

// MARK: - Color Extensions

extension Color {
    /// HealthPlate primary color
    static var hpPrimary: Color { HPColors.primary }

    /// HealthPlate primary light variant
    static var hpPrimaryLight: Color { HPColors.primaryLight }

    /// HealthPlate primary dark variant
    static var hpPrimaryDark: Color { HPColors.primaryDark }

    /// Success color
    static var hpSuccess: Color { HPColors.success }

    /// Warning color
    static var hpWarning: Color { HPColors.warning }

    /// Error color
    static var hpError: Color { HPColors.error }

    /// Info color
    static var hpInfo: Color { HPColors.info }

    /// Protein macro color
    static var hpProtein: Color { HPColors.protein }

    /// Carbs macro color
    static var hpCarbs: Color { HPColors.carbs }

    /// Fat macro color
    static var hpFat: Color { HPColors.fat }

    /// Primary text color
    static var hpTextPrimary: Color { HPColors.textPrimary }

    /// Secondary text color
    static var hpTextSecondary: Color { HPColors.textSecondary }

    /// Tertiary text color
    static var hpTextTertiary: Color { HPColors.textTertiary }

    /// Disabled text color
    static var hpTextDisabled: Color { HPColors.textDisabled }

    /// Primary background color
    static var hpBackgroundPrimary: Color { HPColors.backgroundPrimary }

    /// Secondary background color
    static var hpBackgroundSecondary: Color { HPColors.backgroundSecondary }

    /// Tertiary background color
    static var hpBackgroundTertiary: Color { HPColors.backgroundTertiary }
}

// MARK: - Preview

#Preview("Color Palette") {
    ScrollView {
        VStack(alignment: .leading, spacing: 20) {
            // Primary Colors
            VStack(alignment: .leading, spacing: 8) {
                Text("Primary Colors")
                    .font(.headline)
                    .padding(.horizontal)

                HStack(spacing: 12) {
                    VStack(spacing: 4) {
                        Color.hpPrimary
                            .frame(height: 60)
                            .cornerRadius(8)
                        Text("Primary")
                            .font(.caption)
                    }

                    VStack(spacing: 4) {
                        Color.hpPrimaryLight
                            .frame(height: 60)
                            .cornerRadius(8)
                        Text("Light")
                            .font(.caption)
                    }

                    VStack(spacing: 4) {
                        Color.hpPrimaryDark
                            .frame(height: 60)
                            .cornerRadius(8)
                        Text("Dark")
                            .font(.caption)
                    }

                    Spacer()
                }
                .padding(.horizontal)
            }

            // Accent Colors
            VStack(alignment: .leading, spacing: 8) {
                Text("Accent Colors")
                    .font(.headline)
                    .padding(.horizontal)

                HStack(spacing: 12) {
                    VStack(spacing: 4) {
                        Color.hpSuccess
                            .frame(height: 60)
                            .cornerRadius(8)
                        Text("Success")
                            .font(.caption)
                    }

                    VStack(spacing: 4) {
                        Color.hpWarning
                            .frame(height: 60)
                            .cornerRadius(8)
                        Text("Warning")
                            .font(.caption)
                    }

                    VStack(spacing: 4) {
                        Color.hpError
                            .frame(height: 60)
                            .cornerRadius(8)
                        Text("Error")
                            .font(.caption)
                    }

                    VStack(spacing: 4) {
                        Color.hpInfo
                            .frame(height: 60)
                            .cornerRadius(8)
                        Text("Info")
                            .font(.caption)
                    }
                }
                .padding(.horizontal)
            }

            // Macro Colors
            VStack(alignment: .leading, spacing: 8) {
                Text("Macro Colors")
                    .font(.headline)
                    .padding(.horizontal)

                HStack(spacing: 12) {
                    VStack(spacing: 4) {
                        Color.hpProtein
                            .frame(height: 60)
                            .cornerRadius(8)
                        Text("Protein")
                            .font(.caption)
                    }

                    VStack(spacing: 4) {
                        Color.hpCarbs
                            .frame(height: 60)
                            .cornerRadius(8)
                        Text("Carbs")
                            .font(.caption)
                    }

                    VStack(spacing: 4) {
                        Color.hpFat
                            .frame(height: 60)
                            .cornerRadius(8)
                        Text("Fat")
                            .font(.caption)
                    }

                    Spacer()
                }
                .padding(.horizontal)
            }

            // Text Colors
            VStack(alignment: .leading, spacing: 8) {
                Text("Text Colors")
                    .font(.headline)
                    .padding(.horizontal)

                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Circle()
                            .fill(Color.hpTextPrimary)
                            .frame(width: 20, height: 20)
                        Text("Primary Text")
                            .foregroundColor(.hpTextPrimary)
                    }

                    HStack {
                        Circle()
                            .fill(Color.hpTextSecondary)
                            .frame(width: 20, height: 20)
                        Text("Secondary Text")
                            .foregroundColor(.hpTextSecondary)
                    }

                    HStack {
                        Circle()
                            .fill(Color.hpTextTertiary)
                            .frame(width: 20, height: 20)
                        Text("Tertiary Text")
                            .foregroundColor(.hpTextTertiary)
                    }

                    HStack {
                        Circle()
                            .fill(Color.hpTextDisabled)
                            .frame(width: 20, height: 20)
                        Text("Disabled Text")
                            .foregroundColor(.hpTextDisabled)
                    }
                }
                .padding(.horizontal)
            }

            Spacer()
        }
        .padding(.vertical)
    }
    .background(Color.hpBackgroundSecondary)
}
