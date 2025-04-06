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
    public let id: Int
    
    /// Der Typ des Tickets, z.B. Deutschlandticket.
    public let type: String
    
    /// Das Datum, ab wann das Ticket gültig ist.
    public let validFrom: Date
    
    /// Das Datum, bis wann das Ticket gültig ist.
    public let validUntil: Date
    
    /// Das Datum, ab wann das Ticket aktualisiert werden kann.
    public let updateAvailable: Date
    
    /// Der Preis des Tickets.
    public let price: Double
    
    /// Der vollständige Name des Inhabers des Tickets.
    let holder: String
    
    /// Das Geschlecht des Inhabers des Tickets.
    let holderGender: String
    
    /// Das Geburtsdatum des Inhabers des Tickets.
    let holderBirthday: Date
    
    /// Der Scan-Code (z.B. Aztec-Code) Base64 kodiert.
    public let scanCode: String
    
    /// Die Bedeutung der Parameter können der Definition in `OEPNVWalletPluginTicket` entnommen werden.
    public init(
        id: Int,
        type: String,
        validFrom: Date,
        validUntil: Date,
        updateAvailable: Date,
        price: Double,
        holder: String,
        holderGender: String,
        holderBirthday: Date,
        scanCode: String
    ) {
        self.id = id
        self.type = type
        self.validFrom = validFrom
        self.validUntil = validUntil
        self.updateAvailable = updateAvailable
        self.price = price
        self.holder = holder
        self.holderGender = holderGender
        self.holderBirthday = holderBirthday
        self.scanCode = scanCode
    }
    
}
