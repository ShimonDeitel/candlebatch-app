import SwiftUI

/// Unique palette for Candle Batch - Wax Log — warm candlelit amber with deep ember accent.
enum Theme {
    static let background = Color(hex: "#231414")
    static let surface = Color(hex: "#231414").opacity(0.001) == Color.clear ? Color(hex: "#231414") : Color(hex: "#231414")
    static let card = Color.white.opacity(0.06)
    static let accent = Color(hex: "#E39B4E")
    static let accentSecondary = Color(hex: "#8B4B4B")
    static let text = Color(hex: "#F7ECE3")
    static let textMuted = Color(hex: "#F7ECE3").opacity(0.6)

    static let titleFont: Font = .system(.title2, design: .rounded).weight(.bold)
    static let headlineFont: Font = .system(.headline, design: .rounded)
    static let bodyFont: Font = .system(.body, design: .rounded)
    static let captionFont: Font = .system(.caption, design: .rounded)

    static let cornerRadius: CGFloat = 16
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        (r, g, b) = (int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255, opacity: 1)
    }
}
