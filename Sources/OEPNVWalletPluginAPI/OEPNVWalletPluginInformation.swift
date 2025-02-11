//
//  OEPNVWalletPluginInformation.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 11.02.25.
//

import Foundation

/// Repräsentiert alle notwendigen (Meta-)Informationen über das Plugin.
public struct OEPNVWalletPluginInformation {
    
    /// Die URL zum öffentlichen Git-Repository des Plugins, damit Benutzer den Quellcode überprüfen können.
    public let gitRepositoryURL: URL
    
    /// Der reale Name des Autors des Plugins.
    public let authorName: String
    
    /// Die URL zum Webauftritt des Autors, z.B. eine Webseite oder ein GitHub-Profil.
    public let authorURL: URL
    
    /// Der ausgeschriebene Name des Verkehrsverbunds, z.B. Rhein-Neckar-Verkehr GmbH.
    public let associationName: String
    
    /// Die Abkürzung des Verkehrsverbunds, z.B. rnv.
    public let associationAbbreviation: String
    
    /// Eine Beschreibung über individuelle Besonderheiten des Verkehrsverbunds für den Benutzer.
    ///
    /// Nutze diese Beschreibung um beispielsweise zu erklären, welche Tickets zuvor gekauft worden sein müssen.
    public let associationSpecialNotice: String?
    
    /// Eine Liste mit allen URLs zu den Abo-Portalen/Apps des Verkehrsverbunds, bei denen die Login-Daten funktionieren müssen.
    ///
    /// Häufig haben Verkehrsverbünde neben Abo-Portalen zusätzlich auch Apps im App Store, die sich alle die gleichen Login-Daten teilen.
    public let associationAuthURLs: [URL]
    
    /// Die Art der Authentifizierung, die vom Verkehrsverbund genutzt wird.
    public let associationAuthType: OEPNVWalletPluginAuthType
    
    /// Eine Liste mit allen unterstützten Ticket-Arten, z.B. "Deutschlandticket".
    public let supportedTickets: [String]
    
    // Notwendig, da explizit public:
    // https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol/#Default-Memberwise-Initializers-for-Structure-Types
    /// Die Bedeutung der Parameter können der Definition in `OEPNVWalletPluginInformation` entnommen werden.
    public init(gitRepositoryURL: URL, authorName: String, authorURL: URL, associationName: String, associationAbbreviation: String, associationSpecialNotice: String? = nil, associationAuthURLs: [URL], associationAuthType: OEPNVWalletPluginAuthType, supportedTickets: [String]) {
        self.gitRepositoryURL = gitRepositoryURL
        self.authorName = authorName
        self.authorURL = authorURL
        self.associationName = associationName
        self.associationAbbreviation = associationAbbreviation
        self.associationSpecialNotice = associationSpecialNotice
        self.associationAuthURLs = associationAuthURLs
        self.associationAuthType = associationAuthType
        self.supportedTickets = supportedTickets
    }
    
}
