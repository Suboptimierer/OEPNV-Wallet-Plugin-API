//
//  OEPNVWalletClient.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 04.04.25.
//

import Foundation

/// Abstrahiert die Client-API des Vapor-Frameworks, damit Plugins unabhängig von Vapor entwickelt werden können.
public protocol OEPNVWalletClient {

    /// Sendet einen HTTP-Request über die darunterliegende Client-API des Vapor-Frameworks.
    /// - Parameter request: Das HTTP-Request-Objekt (siehe `OEPNVWalletClientRequest`), um den HTTP-Request auszuführen.
    /// - Returns: Das HTTP-Response-Objekt (siehe `OEPNVWalletClientResponse`), das den HTTP-Response repräsentiert.
    func send<Req: Encodable, Res: Decodable>(
        request: OEPNVWalletClientRequest<Req>
    ) async throws -> OEPNVWalletClientResponse<Res>
    
}
