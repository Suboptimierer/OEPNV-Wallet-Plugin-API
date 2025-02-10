//
//  OEPNVWalletPlugin.swift
//  OEPNV-Wallet-Plugin-API
//
//  Created by Jonas Sannewald on 10.02.25.
//

/// Jedes Plugin, das in ÖPNV-Wallet integriert werden soll, muss dieses Protocol implementieren.
public protocol OEPNVWalletPlugin {
    
    /// Der ausgeschriebene Name des Verkehrsverbunds, z.B. Rhein-Neckar-Verkehr GmbH
    var associationName: String { get }
    
    /// Die Abkürzung des Verkehrsverbunds, z.B. rnv
    var associationAbbreviation: String { get }
    
}
