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
    case connectionFailed(description: String, file: String = #fileID, function: String = #function, line: Int = #line)
    
    /// Der API-Endpunkt gibt einen Fehler zurück, z.B. wegen einer fehlerhaften Anfrage.
    case endpointFailed(description: String, file: String = #fileID, function: String = #function, line: Int = #line)
    
    /// Die Authentifizierung ist fehlgeschlagen, z.B. wegen fehlerhaften Anmeldedaten.
    case authenticationFailed(description: String, file: String = #fileID, function: String = #function, line: Int = #line)
    
    /// Das Parsen der Daten des Verkehrsverbunds ist fehlgeschlagen, z.B. weil sich die JSON-Struktur verändert hat.
    case parsingFailed(description: String, file: String = #fileID, function: String = #function, line: Int = #line)
    
    /// Es ist ein interner Fehler aufgetreten, z.B. durch einen fehlerhaften internen Zustand im Plugin.
    case internalFailed(description: String, file: String = #fileID, function: String = #function, line: Int = #line)
    
    /// Weitergabe eines fremden Fehlers, z.B. von einer Drittbibliothek.
    case underlyingFailed(description: String, file: String = #fileID, function: String = #function, line: Int = #line)
    
}

/// Implementiert LocalizedError, damit Plugin-Fehler einheitlich und mit ausreichenden Informationen ausgegeben werden.
extension OEPNVWalletPluginError: LocalizedError {
    
    /// Einheitliche Fehler-Beschreibung von Plugins.
    public var errorDescription: String? {
        let fullType = String(describing: self)
        let parsedType = fullType.components(separatedBy: "(").first ?? fullType
        
        switch self {
        case let .connectionFailed(description, file, function, line),
             let .endpointFailed(description, file, function, line),
             let .authenticationFailed(description, file, function, line),
             let .parsingFailed(description, file, function, line),
             let .internalFailed(description, file, function, line),
             let .underlyingFailed(description, file, function, line):
            return "Plugin-Fehler \"\(parsedType)\" (\(function) @ \(file):\(line)): \(description)"
        }
    }
    
}

/// Implementiert CustomStringConvertible, damit Plugin-Fehler einheitlich und mit ausreichenden Informationen ausgegeben werden.
extension OEPNVWalletPluginError: CustomStringConvertible {
    
    /// Einheitliche Fehler-Beschreibung von Plugins.
    public var description: String {
        return errorDescription ?? "Unbekannter Fehler"
    }
    
}
