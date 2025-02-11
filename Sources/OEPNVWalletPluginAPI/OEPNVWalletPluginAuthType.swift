//
//  OEPNVWalletPluginAuthType.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 10.02.25.
//

import Foundation

/// Repräsentiert die Art, wie sich das Plugin beim Verkehrsverbund authentifiziert.
public enum OEPNVWalletPluginAuthType {
    
    /// Authentifizierung über E-Mail-Adresse und Passwort.
    case emailAndPassword
    
    /// Authentifizierung über Benutzername und Passwort.
    case usernameAndPassword
    
    /// Authentifizierung über E-Mail-Adresse und Passwort, zusätzlich 2. Faktor via TOTP.
    case emailAndPasswordAndTOTP
    
    /// Authentifizierung über Benutzername und Passwort, zusätzlich 2. Faktor via TOTP.
    case usernameAndPasswordAndTOTP
    
}
