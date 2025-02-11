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
    
}
