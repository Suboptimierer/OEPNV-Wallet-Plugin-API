//
//  OEPNVWalletPluginTicket.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 04.04.25.
//

import Foundation

/// Repräsentiert ein einzelnes ÖPNV-Ticket beim Verkehrsverbund.
public struct OEPNVWalletPluginTicket {
    
    /// Der Typ des Tickets, z.B. Deutschlandticket.
    public let type: String
    
    /// Der Scan-Code (z.B. Aztec-Code) Base64 kodiert.
    public let scanCode: String
    
}
