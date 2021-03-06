// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "KPTDomain",
    products: [
        .library(
            name: "KPTDomain",
            targets: ["KPTDomain"])
    ],
    targets: [
        .target(
            name: "KPTDomain",
            dependencies: []),
        .testTarget(
            name: "KPTDomainTests",
            dependencies: ["KPTDomain"])
    ]
)
