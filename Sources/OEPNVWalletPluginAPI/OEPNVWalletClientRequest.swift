//
//  OEPNVWalletClientRequest.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 04.04.25.
//

import Foundation

/// Repräsentiert einen HTTP-Request für die Abstraktionsschicht `OEPNVWalletClient`.
public struct OEPNVWalletClientRequest {
    
    /// Repräsentiert die HTTP-Methode, z.B. "POST".
    public let method: Method
    
    /// Repräsentiert die HTTP-Header, z.B. "content-type=application/json".
    public let headers: [String: String]?
    
    /// Repräsentiert die URL, z.B. "https://developer.apple.com/swift/".
    public let url: String
    
    /// Repräsentiert die Query-Parameter, z.B. "?language=de".
    public let query: [String: String]?

    /// Repräsentiert den HTTP-Body, z.B. JSON-Daten.
    ///
    /// Der Content-Type wird NICHT automatisch gesetzt, damit maximale Flexibilität besteht.
    /// Die Content-Length wird spätestens durch SwiftNIO berechnet, diese muss also nicht explizit gesetzt werden.
    public let body: Data?
    
    /// Repräsentiert die HTTP-Methode innerhalb eines `OEPNVWalletClientRequest`.
    public enum Method: String {
        
        /// Repräsentiert die HTTP-Methode "GET".
        case get = "GET"
        
        /// Repräsentiert die HTTP-Methode "POST".
        case post = "POST"
        
        /// Repräsentiert die HTTP-Methode "PATCH".
        case patch = "PATCH"
        
        /// Repräsentiert die HTTP-Methode "PUT".
        case put = "PUT"
        
        /// Repräsentiert die HTTP-Methode "DELETE".
        case delete = "DELETE"
        
    }
    
    /// Die Bedeutung der Parameter können der Definition in `OEPNVWalletClientRequest` entnommen werden.
    public init(
        method: Method,
        headers: [String : String]? = nil,
        url: String,
        query: [String : String]? = nil,
        body: Data? = nil
    ) {
        self.method = method
        self.headers = headers
        self.url = url
        self.query = query
        self.body = body
    }
    
}
