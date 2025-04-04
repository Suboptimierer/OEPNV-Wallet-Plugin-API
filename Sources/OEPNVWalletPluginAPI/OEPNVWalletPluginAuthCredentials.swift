//
//  OEPNVWalletPluginAuthCredentials.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 04.04.25.
//

import Foundation

/// Repräsentiert die Daten, mit denen die Authentifizierung beim Verkehrsverbund erfolgt.
public enum OEPNVWalletPluginAuthCredentials {
    
    /// Enthält E-Mail-Adresse und Passwort.
    case emailPassword(email: String, password: String)
    
    /// Enthält Benutzername und Passwort.
    case usernamePassword(username: String, password: String)
    
    /// Enthält E-Mail-Adresse, Passwort und das sechsstellige Einmalpasswort.
    case emailPasswordTOTP(email: String, password: String, totp: String)
    
    /// Enthält Benutzername, Passwort und das sechsstellige Einmalpasswort.
    case usernamePasswordTOTP(username: String, password: String, totp: String)
    
}
