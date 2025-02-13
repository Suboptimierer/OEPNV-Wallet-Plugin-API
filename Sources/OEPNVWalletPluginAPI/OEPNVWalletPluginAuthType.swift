//
//  OEPNVWalletPluginAuthType.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 10.02.25.
//

import Foundation

/// Repräsentiert die Art, wie sich das Plugin beim Verkehrsverbund authentifiziert.
public enum OEPNVWalletPluginAuthType: Codable {
    
    /// Authentifizierung über E-Mail-Adresse und Passwort.
    case emailPassword
    
    /// Authentifizierung über Benutzername und Passwort.
    case usernamePassword
    
    /// Authentifizierung über E-Mail-Adresse und Passwort, zusätzlich 2. Faktor via TOTP.
    case emailPasswordTOTP
    
    /// Authentifizierung über Benutzername und Passwort, zusätzlich 2. Faktor via TOTP.
    case usernamePasswordTOTP
    
}
