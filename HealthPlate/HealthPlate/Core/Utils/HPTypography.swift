//
//  HPTypography.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//


import SwiftUI

/// HealthPlate Typography System
/// Defines all text styles used throughout the app
struct HPTypography {
    
    // MARK: - Display Styles (Large Headings)
    
    /// Display 1: 32pt, Bold
    /// Used for main page titles
    static let display1 = Font.system(size: 32, weight: .bold)
    
    /// Display 2: 28pt, Bold
    /// Used for section titles
    static let display2 = Font.system(size: 28, weight: .bold)
    
    // MARK: - Heading Styles
    
    /// Heading 1: 24pt, Bold
    /// Used for screen titles
    static let heading1 = Font.system(size: 24, weight: .bold)
    
    /// Heading 2: 20pt, Bold
    /// Used for section headers
    static let heading2 = Font.system(size: 20, weight: .bold)
    
    /// Heading 3: 18pt, SemiBold
    /// Used for subsection headers
    static let heading3 = Font.system(size: 18, weight: .semibold)
    
    /// Heading 4: 16pt, SemiBold
    /// Used for card titles
    static let heading4 = Font.system(size: 16, weight: .semibold)
    
    // MARK: - Body Styles
    
    /// Body Large: 16pt, Regular
    /// Used for primary body text
    static let bodyLarge = Font.system(size: 16, weight: .regular)
    
    /// Body Medium: 14pt, Regular
    /// Used for default body text
    static let bodyMedium = Font.system(size: 14, weight: .regular)
    
    /// Body Small: 12pt, Regular
    /// Used for secondary body text
    static let bodySmall = Font.system(size: 12, weight: .regular)
    
    // MARK: - Label Styles
    
    /// Label Large: 12pt, SemiBold
    /// Used for labels and tags
    static let labelLarge = Font.system(size: 12, weight: .semibold)
    
    /// Label Medium: 11pt, SemiBold
    /// Used for small labels
    static let labelMedium = Font.system(size: 11, weight: .semibold)
    
    /// Label Small: 10pt, SemiBold
    /// Used for extra small labels
    static let labelSmall = Font.system(size: 10, weight: .semibold)
    
    // MARK: - Button Styles
    
    /// Button Large: 16pt, SemiBold
    /// Used for primary buttons
    static let buttonLarge = Font.system(size: 16, weight: .semibold)
    
    /// Button Medium: 14pt, SemiBold
    /// Used for secondary buttons
    static let buttonMedium = Font.system(size: 14, weight: .semibold)
    
    /// Button Small: 12pt, SemiBold
    /// Used for small buttons
    static let buttonSmall = Font.system(size: 12, weight: .semibold)
    
    // MARK: - Special Styles
    
    /// Caption: 11pt, Regular
    /// Used for captions and hints
    static let caption = Font.system(size: 11, weight: .regular)
    
    /// Caption Bold: 11pt, SemiBold
    /// Used for bold captions
    static let captionBold = Font.system(size: 11, weight: .semibold)
    
    /// Overline: 10pt, SemiBold, Uppercase
    /// Used for overlines
    static let overline = Font.system(size: 10, weight: .semibold)
    
    /// Monospace: 12pt, Regular
    /// Used for code or numbers
    static let monospace = Font.system(size: 12, weight: .regular, design: .monospaced)
}

// MARK: - Text View Extensions

extension Text {
    /// Apply Display 1 style
    func hpDisplay1() -> some View {
        self.font(HPTypography.display1).foregroundColor(.hpTextPrimary)
    }
    
    /// Apply Display 2 style
    func hpDisplay2() -> some View {
        self.font(HPTypography.display2).foregroundColor(.hpTextPrimary)
    }
    
    /// Apply Heading 1 style
    func hpHeading1() -> some View {
        self.font(HPTypography.heading1).foregroundColor(.hpTextPrimary)
    }
    
    /// Apply Heading 2 style
    func hpHeading2() -> some View {
        self.font(HPTypography.heading2).foregroundColor(.hpTextPrimary)
    }
    
    /// Apply Heading 3 style
    func hpHeading3() -> some View {
        self.font(HPTypography.heading3).foregroundColor(.hpTextPrimary)
    }
    
    /// Apply Heading 4 style
    func hpHeading4() -> some View {
        self.font(HPTypography.heading4).foregroundColor(.hpTextPrimary)
    }
    
    /// Apply Body Large style
    func hpBodyLarge() -> some View {
        self.font(HPTypography.bodyLarge).foregroundColor(.hpTextPrimary)
    }
    
    /// Apply Body Medium style (default)
    func hpBodyMedium() -> some View {
        self.font(HPTypography.bodyMedium).foregroundColor(.hpTextPrimary)
    }
    
    /// Apply Body Small style
    func hpBodySmall() -> some View {
        self.font(HPTypography.bodySmall).foregroundColor(.hpTextSecondary)
    }
    
    /// Apply Button Large style
    func hpButtonLarge() -> some View {
        self.font(HPTypography.buttonLarge).foregroundColor(.white)
    }
    
    /// Apply Button Medium style
    func hpButtonMedium() -> some View {
        self.font(HPTypography.buttonMedium).foregroundColor(.white)
    }
    
    /// Apply Caption style
    func hpCaption() -> some View {
        self.font(HPTypography.caption).foregroundColor(.hpTextSecondary)
    }
    
    /// Apply Label style
    func hpLabel() -> some View {
        self.font(HPTypography.labelLarge).foregroundColor(.hpTextSecondary)
    }
}

// MARK: - Preview

#Preview("Typography System") {
    ScrollView {
        VStack(alignment: .leading, spacing: 24) {
            // Display Styles
            VStack(alignment: .leading, spacing: 12) {
                Text("Display Styles")
                    .font(.headline)
                
                Text("Display 1 - 32pt Bold")
                    .font(HPTypography.display1)
                    .foregroundColor(.hpTextPrimary)
                
                Text("Display 2 - 28pt Bold")
                    .font(HPTypography.display2)
                    .foregroundColor(.hpTextPrimary)
            }
            .padding(.horizontal)
            
            Divider()
            
            // Heading Styles
            VStack(alignment: .leading, spacing: 12) {
                Text("Heading Styles")
                    .font(.headline)
                
                Text("Heading 1 - 24pt Bold")
                    .font(HPTypography.heading1)
                    .foregroundColor(.hpTextPrimary)
                
                Text("Heading 2 - 20pt Bold")
                    .font(HPTypography.heading2)
                    .foregroundColor(.hpTextPrimary)
                
                Text("Heading 3 - 18pt SemiBold")
                    .font(HPTypography.heading3)
                    .foregroundColor(.hpTextPrimary)
                
                Text("Heading 4 - 16pt SemiBold")
                    .font(HPTypography.heading4)
                    .foregroundColor(.hpTextPrimary)
            }
            .padding(.horizontal)
            
            Divider()
            
            // Body Styles
            VStack(alignment: .leading, spacing: 12) {
                Text("Body Styles")
                    .font(.headline)
                
                Text("Body Large - 16pt Regular. Used for primary body text throughout the app.")
                    .font(HPTypography.bodyLarge)
                    .foregroundColor(.hpTextPrimary)
                
                Text("Body Medium - 14pt Regular. Default body text for most content.")
                    .font(HPTypography.bodyMedium)
                    .foregroundColor(.hpTextPrimary)
                
                Text("Body Small - 12pt Regular. Secondary body text with less emphasis.")
                    .font(HPTypography.bodySmall)
                    .foregroundColor(.hpTextSecondary)
            }
            .padding(.horizontal)
            
            Divider()
            
            // Button Styles
            VStack(alignment: .leading, spacing: 12) {
                Text("Button Styles")
                    .font(.headline)
                
                HStack(spacing: 12) {
                    Button(action: {}) {
                        Text("Large Button")
                            .font(HPTypography.buttonLarge)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 12)
                            .background(Color.hpPrimary)
                            .cornerRadius(8)
                    }
                    
                    Button(action: {}) {
                        Text("Medium")
                            .font(HPTypography.buttonMedium)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(Color.hpPrimary)
                            .cornerRadius(8)
                    }
                }
                
                Button(action: {}) {
                    Text("Small Button")
                        .font(HPTypography.buttonSmall)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 8)
                        .background(Color.hpPrimary)
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal)
            
            Divider()
            
            // Label & Caption Styles
            VStack(alignment: .leading, spacing: 12) {
                Text("Label & Caption Styles")
                    .font(.headline)
                
                HStack(spacing: 12) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Label Large")
                            .font(HPTypography.labelLarge)
                            .foregroundColor(.hpTextSecondary)
                        
                        Text("Label Medium")
                            .font(HPTypography.labelMedium)
                            .foregroundColor(.hpTextSecondary)
                        
                        Text("Label Small")
                            .font(HPTypography.labelSmall)
                            .foregroundColor(.hpTextSecondary)
                    }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Caption")
                            .font(HPTypography.caption)
                            .foregroundColor(.hpTextSecondary)
                        
                        Text("Caption Bold")
                            .font(HPTypography.captionBold)
                            .foregroundColor(.hpTextSecondary)
                        
                        Text("Overline Text")
                            .font(HPTypography.overline)
                            .foregroundColor(.hpTextSecondary)
                    }
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.vertical, 20)
    }
    .background(Color.hpBackgroundSecondary)
}