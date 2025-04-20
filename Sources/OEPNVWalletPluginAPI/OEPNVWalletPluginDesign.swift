//
//  OEPNVWalletPluginDesign.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 20.04.25.
//

import Foundation

/// Repräsentiert das Design des Plugins, welches in Apple Wallet verwendet wird.
public struct OEPNVWalletPluginDesign {
    
    /// Die Farbe für den Hintergrund des Tickets in Apple Wallet.
    public let backgroundColor: Color
    
    /// Die Farbe für Überschriften des Tickets in Apple Wallet.
    public let headlineColor: Color
    
    /// Die Farbe für den restlichen Text des Tickets in Apple Wallet.
    public let textColor: Color
    
    //
    //  Wallet Passes Image Size Reference
    //
    //  +----------------------+------------+---------------+
    //  | Name                 | Skalierung | Größe (Pixel) |
    //  +----------------------+------------+---------------+
    //  | icon.png             | 1x         | 29 x 29       |
    //  | icon@2x.png          | 2x         | 58 x 58       |
    //  | icon@3x.png          | 3x         | 87 x 87       |
    //  | logo.png             | 1x         | 160 x 50      |
    //  | logo@2x.png          | 2x         | 320 x 100     |
    //  | logo@3x.png          | 3x         | 480 x 150     |
    //  +----------------------+------------+---------------+
    //
    
    /// Das Logo des Verkehrsverbunds als Icon in der Größe 29x29 Pixel.
    ///
    /// Der übergebene Byte Buffer wird im Apple Wallet Pass als icon.png verwendet.
    public let associationIcon1x: Data
    
    /// Das Logo des Verkehrsverbunds als Icon in der Größe 58x58 Pixel.
    ///
    /// Der übergebene Byte Buffer wird im Apple Wallet Pass als icon@2x.png verwendet.
    public let associationIcon2x: Data
    
    /// Das Logo des Verkehrsverbunds als Icon in der Größe 87x87 Pixel.
    ///
    /// Der übergebene Byte Buffer wird im Apple Wallet Pass als icon@3x.png verwendet.
    public let associationIcon3x: Data
    
    /// Das Logo des Verkehrsverbunds als Banner in der Größe 160x50 Pixel.
    ///
    /// Der übergebene Byte Buffer wird im Apple Wallet Pass als logo.png verwendet.
    public let associationLogo1x: Data
    
    /// Das Logo des Verkehrsverbunds als Banner in der Größe 320x100 Pixel.
    ///
    /// Der übergebene Byte Buffer wird im Apple Wallet Pass als logo@2x.png verwendet.
    public let associationLogo2x: Data
    
    /// Das Logo des Verkehrsverbunds als Banner in der Größe 480x150 Pixel.
    ///
    /// Der übergebene Byte Buffer wird im Apple Wallet Pass als logo@3x.png verwendet.
    public let associationLogo3x: Data
    
    /// Repräsentiert eine frameworkunabhängige Farbe.
    public struct Color {
        
        /// Repräsentiert den Rot-Wert der Farbe, erlaubt sind Werte zwischen 0 und 255.
        public let red: Int
        
        /// Repräsentiert den Grün-Wert der Farbe, erlaubt sind Werte zwischen 0 und 255.
        public let green: Int
        
        /// Repräsentiert den Blau-Wert der Farbe, erlaubt sind Werte zwischen 0 und 255.
        public let blue: Int
        
        /// Repräsentiert die Farbe als RGB-String, z.B. `rgb(23, 187, 82)`.
        public var rgbString: String {
            return "rgb(\(red), \(green), \(blue))"
        }
        
        /// Die Bedeutung der Parameter können der Definition in `Color` entnommen werden.
        public init(red: Int, green: Int, blue: Int) {
            self.red = max(0, min(255, red))
            self.green = max(0, min(255, green))
            self.blue = max(0, min(255, blue))
        }
        
    }
    
    /// Die Bedeutung der Parameter können der Definition in `OEPNVWalletPluginDesign` entnommen werden.
    public init(
        backgroundColor: Color,
        headlineColor: Color,
        textColor: Color,
        associationIcon1x: Data,
        associationIcon2x: Data,
        associationIcon3x: Data,
        associationLogo1x: Data,
        associationLogo2x: Data,
        associationLogo3x: Data
    ) {
        self.backgroundColor = backgroundColor
        self.headlineColor = headlineColor
        self.textColor = textColor
        self.associationIcon1x = associationIcon1x
        self.associationIcon2x = associationIcon2x
        self.associationIcon3x = associationIcon3x
        self.associationLogo1x = associationLogo1x
        self.associationLogo2x = associationLogo2x
        self.associationLogo3x = associationLogo3x
    }
    
}
