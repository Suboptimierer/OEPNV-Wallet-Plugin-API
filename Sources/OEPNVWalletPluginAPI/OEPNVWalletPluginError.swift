//
//  OEPNVWalletPluginError.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 04.04.25.
//

import Foundation

/// Repräsentiert Fehler, die durch Plugins geworfen werden können.
///  
/// Es werden lediglich Überkategorien (z.B. Authentifizierung fehlgeschlagen) und nicht Unterkategorien (z.B. Anmeldedaten fehlerhaft) angeboten.
/// Dadurch soll die Komplexität gering und OEPNVWalletPluginError übersichtlich gehalten werden.
public enum OEPNVWalletPluginError: Error {
    
    /// Die Verbindung zum Verkehrsverbund ist fehlgeschlagen, z.B. weil die Server des Verkehrsverbunds nicht erreichbar sind.
    case connectionFailed(description: String)
    
    /// Die Authentifizierung ist fehlgeschlagen, z.B. wegen fehlerhaften Anmeldedaten.
    case authenticationFailed(description: String)
    
    /// Das Parsen der Daten des Verkehrsverbunds ist fehlgeschlagen, z.B. weil sich die JSON-Struktur verändert hat.
    case parsingFailed(description: String)
    
    /// Es ist ein interner Fehler aufgetreten, z.B. durch unerwartete Daten.
    case internalFailed(description: String)
    
    /// Weitergabe eines fremden Fehlers, z.B. von einer Drittbibliothek.
    case underlyingFailed(error: Error)
    
}
