//
//  HPSpacing.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//


import SwiftUI

/// HealthPlate Spacing System
/// Consistent spacing values throughout the app
struct HPSpacing {
    
    // MARK: - Base Spacing Values
    
    /// Extra small spacing: 4pt
    static let xs: CGFloat = 4
    
    /// Small spacing: 8pt
    static let sm: CGFloat = 8
    
    /// Medium spacing: 12pt
    static let md: CGFloat = 12
    
    /// Standard spacing: 16pt
    static let standard: CGFloat = 16
    
    /// Large spacing: 20pt
    static let lg: CGFloat = 20
    
    /// Extra large spacing: 24pt
    static let xl: CGFloat = 24
    
    /// 2x Large spacing: 32pt
    static let xxl: CGFloat = 32
    
    /// 3x Large spacing: 40pt
    static let xxxl: CGFloat = 40
    
    // MARK: - Component-Specific Spacing
    
    /// Padding for screen edges
    static let screenPadding: CGFloat = 16
    
    /// Padding for cards/containers
    static let cardPadding: CGFloat = 16
    
    /// Padding inside buttons
    static let buttonPadding: CGFloat = 12
    
    /// Spacing between sections
    static let sectionSpacing: CGFloat = 24
    
    /// Spacing between items in a list
    static let itemSpacing: CGFloat = 12
    
    /// Spacing between form fields
    static let formFieldSpacing: CGFloat = 16
    
    /// Corner radius for cards
    static let cornerRadius: CGFloat = 12
    
    /// Corner radius for large elements
    static let cornerRadiusLarge: CGFloat = 16
    
    /// Corner radius for buttons
    static let cornerRadiusButton: CGFloat = 8
    
    // MARK: - Icon Sizes
    
    /// Small icon size: 16x16
    static let iconSmall: CGFloat = 16
    
    /// Medium icon size: 24x24
    static let iconMedium: CGFloat = 24
    
    /// Large icon size: 32x32
    static let iconLarge: CGFloat = 32
    
    /// Extra large icon size: 48x48
    static let iconXL: CGFloat = 48
    
    // MARK: - Component Heights
    
    /// Height of regular buttons
    static let buttonHeight: CGFloat = 48
    
    /// Height of small buttons
    static let buttonHeightSmall: CGFloat = 40
    
    /// Height of input fields
    static let inputHeight: CGFloat = 48
    
    /// Height of list items
    static let listItemHeight: CGFloat = 56
    
    // MARK: - Shadows
    
    /// Small shadow elevation
    static let shadowSmall: CGFloat = 2
    
    /// Medium shadow elevation
    static let shadowMedium: CGFloat = 4
    
    /// Large shadow elevation
    static let shadowLarge: CGFloat = 8
    
    // MARK: - Animations
    
    /// Quick animation duration
    static let animationQuick: Double = 0.2
    
    /// Standard animation duration
    static let animationStandard: Double = 0.3
    
    /// Slow animation duration
    static let animationSlow: Double = 0.5
}

// MARK: - Convenience Extensions

extension CGFloat {
    /// HealthPlate extra small spacing (4pt)
    static var hpXS: CGFloat { HPSpacing.xs }
    
    /// HealthPlate small spacing (8pt)
    static var hpSM: CGFloat { HPSpacing.sm }
    
    /// HealthPlate medium spacing (12pt)
    static var hpMD: CGFloat { HPSpacing.md }
    
    /// HealthPlate standard spacing (16pt)
    static var hpStandard: CGFloat { HPSpacing.standard }
    
    /// HealthPlate large spacing (20pt)
    static var hpLG: CGFloat { HPSpacing.lg }
    
    /// HealthPlate extra large spacing (24pt)
    static var hpXL: CGFloat { HPSpacing.xl }
}

// MARK: - View Modifiers for Common Spacing Patterns

struct HPScreenPadding: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(HPSpacing.screenPadding)
    }
}

struct HPCardPadding: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(HPSpacing.cardPadding)
    }
}

struct HPCardStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.hpBackgroundPrimary)
            .cornerRadius(HPSpacing.cornerRadius)
            .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
    }
}

extension View {
    /// Apply standard screen padding
    func hpScreenPadding() -> some View {
        modifier(HPScreenPadding())
    }
    
    /// Apply card padding
    func hpCardPadding() -> some View {
        modifier(HPCardPadding())
    }
    
    /// Apply card styling (background, corner radius, shadow)
    func hpCard() -> some View {
        modifier(HPCardStyle())
    }
}

// MARK: - Preview

#Preview("Spacing System") {
    ScrollView {
        VStack(alignment: .leading, spacing: 24) {
            // Base Spacing Values
            VStack(alignment: .leading, spacing: 12) {
                Text("Base Spacing Values")
                    .font(.headline)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("XS: 4pt")
                            .frame(width: 120, alignment: .leading)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpPrimary)
                            .frame(width: HPSpacing.xs, height: 20)
                    }
                    
                    HStack {
                        Text("SM: 8pt")
                            .frame(width: 120, alignment: .leading)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpPrimary)
                            .frame(width: HPSpacing.sm, height: 20)
                    }
                    
                    HStack {
                        Text("MD: 12pt")
                            .frame(width: 120, alignment: .leading)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpPrimary)
                            .frame(width: HPSpacing.md, height: 20)
                    }
                    
                    HStack {
                        Text("STD: 16pt")
                            .frame(width: 120, alignment: .leading)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpPrimary)
                            .frame(width: HPSpacing.standard, height: 20)
                    }
                    
                    HStack {
                        Text("LG: 20pt")
                            .frame(width: 120, alignment: .leading)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpPrimary)
                            .frame(width: HPSpacing.lg, height: 20)
                    }
                    
                    HStack {
                        Text("XL: 24pt")
                            .frame(width: 120, alignment: .leading)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpPrimary)
                            .frame(width: HPSpacing.xl, height: 20)
                    }
                    
                    HStack {
                        Text("XXL: 32pt")
                            .frame(width: 120, alignment: .leading)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpPrimary)
                            .frame(width: HPSpacing.xxl, height: 20)
                    }
                }
            }
            .padding(.horizontal)
            
            Divider()
            
            // Component Heights
            VStack(alignment: .leading, spacing: 12) {
                Text("Component Heights")
                    .font(.headline)
                
                VStack(alignment: .leading, spacing: 8) {
                    VStack(alignment: .leading) {
                        Text("Button Height: 48pt")
                            .font(.caption)
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.hpPrimary)
                            .frame(height: HPSpacing.buttonHeight)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Input Height: 48pt")
                            .font(.caption)
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.hpBackgroundTertiary)
                            .frame(height: HPSpacing.inputHeight)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("List Item Height: 56pt")
                            .font(.caption)
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.hpBackgroundTertiary)
                            .frame(height: HPSpacing.listItemHeight)
                    }
                }
            }
            .padding(.horizontal)
            
            Divider()
            
            // Icon Sizes
            VStack(alignment: .leading, spacing: 12) {
                Text("Icon Sizes")
                    .font(.headline)
                
                HStack(spacing: 12) {
                    VStack(alignment: .center, spacing: 4) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpWarning)
                            .frame(width: HPSpacing.iconSmall, height: HPSpacing.iconSmall)
                        Text("16x16")
                            .font(.caption2)
                    }
                    
                    VStack(alignment: .center, spacing: 4) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpInfo)
                            .frame(width: HPSpacing.iconMedium, height: HPSpacing.iconMedium)
                        Text("24x24")
                            .font(.caption2)
                    }
                    
                    VStack(alignment: .center, spacing: 4) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpSuccess)
                            .frame(width: HPSpacing.iconLarge, height: HPSpacing.iconLarge)
                        Text("32x32")
                            .font(.caption2)
                    }
                    
                    VStack(alignment: .center, spacing: 4) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.hpError)
                            .frame(width: HPSpacing.iconXL, height: HPSpacing.iconXL)
                        Text("48x48")
                            .font(.caption2)
                    }
                }
                .padding(.horizontal)
            }
            
            Divider()
            
            // Corner Radius
            VStack(alignment: .leading, spacing: 12) {
                Text("Corner Radius")
                    .font(.headline)
                
                HStack(spacing: 12) {
                    VStack(alignment: .center, spacing: 4) {
                        RoundedRectangle(cornerRadius: HPSpacing.cornerRadiusButton)
                            .fill(Color.hpPrimary)
                            .frame(height: 40)
                        Text("Button: 8pt")
                            .font(.caption2)
                    }
                    
                    VStack(alignment: .center, spacing: 4) {
                        RoundedRectangle(cornerRadius: HPSpacing.cornerRadius)
                            .fill(Color.hpPrimary)
                            .frame(height: 40)
                        Text("Card: 12pt")
                            .font(.caption2)
                    }
                    
                    VStack(alignment: .center, spacing: 4) {
                        RoundedRectangle(cornerRadius: HPSpacing.cornerRadiusLarge)
                            .fill(Color.hpPrimary)
                            .frame(height: 40)
                        Text("Large: 16pt")
                            .font(.caption2)
                    }
                }
                .padding(.horizontal)
            }
            
            Divider()
            
            // Card Example
            VStack(alignment: .leading, spacing: 12) {
                Text("Card Example")
                    .font(.headline)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: HPSpacing.standard) {
                    Text("Sample Card")
                        .font(.headline)
                    
                    Text("This is how a card with HealthPlate spacing looks like.")
                        .font(.caption)
                        .foregroundColor(.hpTextSecondary)
                    
                    Button(action: {}) {
                        Text("Action Button")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 12)
                            .background(Color.hpPrimary)
                            .cornerRadius(HPSpacing.cornerRadiusButton)
                    }
                }
                .hpCard()
                .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding(.vertical, 20)
    }
    .background(Color.hpBackgroundSecondary)
}