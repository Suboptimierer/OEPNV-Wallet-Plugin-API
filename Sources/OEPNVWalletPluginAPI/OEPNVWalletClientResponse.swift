//
//  OEPNVWalletClientResponse.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 04.04.25.
//

import Foundation

/// Repräsentiert einen HTTP-Request für die Abstraktionsschicht `OEPNVWalletClient`.
public struct OEPNVWalletClientResponse<Body: Decodable> {
    
    /// Repräsentiert den HTTP-Status-Code, z.B. 200 für OK.
    public let status: Int
    
    /// Repräsentiert die HTTP-Header, z.B. "content-type=application/json".
    public let headers: [String: String]
    
    /// Repräsentiert den HTTP-Body als Swift-Decodable.
    public let body: Body?
    
    /// Die Bedeutung der Parameter können der Definition in `OEPNVWalletClientResponse` entnommen werden.
    public init(
        status: Int,
        headers: [String : String],
        body: Body? = nil
    ) {
        self.status = status
        self.headers = headers
        self.body = body
    }
    
}
