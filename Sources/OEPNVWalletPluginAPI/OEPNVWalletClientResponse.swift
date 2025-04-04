//
//  OEPNVWalletClientResponse.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 04.04.25.
//

import Foundation

/// Repräsentiert einen HTTP-Request für die Abstraktionsschicht `OEPNVWalletClient`.
public struct OEPNVWalletClientResponse {
    
    /// Repräsentiert den HTTP-Status-Code, z.B. 200 für OK.
    public let status: Int
    
    /// Repräsentiert die HTTP-Header, z.B. "content-type=application/json".
    public let headers: [String: String]
    
    /// Repräsentiert den HTTP-Body, z.B. "{ name: 'swift' }".
    public let body: Data?
    
}
