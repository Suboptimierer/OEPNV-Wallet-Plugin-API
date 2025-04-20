//
//  OEPNVWalletPlugin.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 10.02.25.
//

import Foundation

/// Jedes Plugin, das in ÖPNV-Wallet integriert werden soll, muss dieses Protocol implementieren.
public protocol OEPNVWalletPlugin {
    
    /// ÖPNV-Wallet initialisiert Plugins ausschließlich über `init()`.
    init()
    
    /// Enthält die notwendigen Informationen über das Plugin.
    var information: OEPNVWalletPluginInformation { get }
    
    /// Enthält das Design des Plugins, welches in Apple Wallet verwendet wird.
    var design: OEPNVWalletPluginDesign { get }
    
    /// Testet die Authentifizierung beim Verkehrsverbund.
    /// - Parameter credentials: Enthält die zur Authentifizierung notwendigen Daten als assoziierte Werte.
    /// - Parameter client: Enthält die abstrahierte Client-API des Vapor-Frameworks, um HTTP-Requests zu senden.
    /// - Returns: Liefert `true`, wenn die Authentifizierung erfolgreich war, andernfalls `false`.
    func testAuthentication(
        with credentials: OEPNVWalletPluginAuthCredentials,
        using client: OEPNVWalletClient
    ) async throws
    
    /// Fordert alle unterstützten Tickets beim Verkehrsverbund an.
    /// - Parameter credentials: Enthält die zur Authentifizierung notwendigen Daten als assoziierte Werte.
    /// - Parameter client: Enthält die abstrahierte Client-API des Vapor-Frameworks, um HTTP-Requests zu senden.
    /// - Returns: Liste mit allen verfügbaren Tickets.
    func fetchTickets(
        with credentials: OEPNVWalletPluginAuthCredentials,
        using client: OEPNVWalletClient
    ) async throws -> [OEPNVWalletPluginTicket]
    
}
