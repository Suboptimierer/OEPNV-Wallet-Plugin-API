//
//  OEPNVWalletPlugin.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 10.02.25.
//

import Foundation

/// Jedes Plugin, das in ÖPNV-Wallet integriert werden soll, muss dieses Protocol implementieren.
public protocol OEPNVWalletPlugin {
    
    /// Die URL zum öffentlichen Git-Repository des Plugins, damit Benutzer den Quellcode überprüfen können.
    var gitRepositoryURL: URL { get }
    
    /// Der reale Name des Autors des Plugins.
    var authorName: String { get }
    
    /// Die URL zum Webauftritt des Autors, z.B. eine Webseite oder ein GitHub-Profil.
    var authorURL: URL { get }
    
    /// Der ausgeschriebene Name des Verkehrsverbunds, z.B. Rhein-Neckar-Verkehr GmbH.
    var associationName: String { get }
    
    /// Die Abkürzung des Verkehrsverbunds, z.B. rnv.
    var associationAbbreviation: String { get }
    
    /// Eine Beschreibung über individuelle Besonderheiten des Verkehrsverbunds für den Benutzer.
    ///
    /// Nutze diese Beschreibung beispielsweise um zu erklären, welche Accounts bei welchen Abo-Portalen/Apps existieren müssen.
    var associationUserDescription: String { get }
    
    /// Eine Liste mit allen URLs zu den Abo-Portalen/Apps des Verkehrsverbunds, bei denen die Login-Daten funktionieren müssen.
    ///
    /// Häufig haben Verkehrsverbünde neben Abo-Portalen zusätzlich auch Apps im App Store, die sich alle die gleichen Login-Daten teilen.
    var associationAuthURLs: [URL] { get }
    
    /// Eine Liste mit allen unterstützten Ticket-Arten, z.B. "Deutschlandticket".
    var supportedTicketTypes: [String] { get }
    
    /// Die Art der Authentifizierung, die vom Verkehrsverbund genutzt wird.
    var authenticationType: OEPNVWalletPluginAuthType { get }
    
}
