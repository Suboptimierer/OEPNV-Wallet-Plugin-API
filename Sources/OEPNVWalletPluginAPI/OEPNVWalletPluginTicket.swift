//
//  OEPNVWalletPluginTicket.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 04.04.25.
//

import Foundation

/// Repräsentiert ein einzelnes ÖPNV-Ticket beim Verkehrsverbund.
public struct OEPNVWalletPluginTicket {
    
    /// Die ID des Tickets, die vom Verkehrsverbund vergeben wurde.
    ///
    /// Diese ID muss nicht global eindeutig sein, die Eindeutigkeit beim Verkehrsverbund reicht aus.
    public let id: String
    
    /// Der Typ des Tickets, z.B. Deutschlandticket.
    public let type: String
    
    /// Das Datum, ab wann das Ticket gültig ist.
    public let validFrom: Date
    
    /// Das Datum, bis wann das Ticket gültig ist.
    public let validUntil: Date
    
    /// Der Preis des Tickets.
    public let price: Double?
    
    /// Der vollständige Name des Inhabers des Tickets.
    public let holder: String
    
    /// Das Geburtsdatum des Inhabers des Tickets.
    public let holderBirthday: Date?
    
    /// Der Scan-Code (z.B. Aztec-Code) Base64 kodiert.
    public let scanCode: String
    
    /// Die Bedeutung der Parameter können der Definition in `OEPNVWalletPluginTicket` entnommen werden.
    public init(
        id: String,
        type: String,
        validFrom: Date,
        validUntil: Date,
        price: Double? = nil,
        holder: String,
        holderBirthday: Date? = nil,
        scanCode: String
    ) {
        self.id = id
        self.type = type
        self.validFrom = validFrom
        self.validUntil = validUntil
        self.price = price
        self.holder = holder
        self.holderBirthday = holderBirthday
        self.scanCode = scanCode
    }
    
}
