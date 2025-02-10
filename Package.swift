// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "OEPNV-Wallet-Plugin-API",
    products: [
        .library(name: "OEPNVWalletPluginAPI", targets: ["OEPNVWalletPluginAPI"]),
    ],
    targets: [
        .target(name: "OEPNVWalletPluginAPI"),
    ]
)
