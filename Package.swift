// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "UqudoDA",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "UqudoDA",
            targets: ["UqudoDAWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/shield-ai-technology/shield-ptr-spm.git", exact: "2.1.0"),
    ],
    targets: [
        .target(
            name: "UqudoDAWrapper",
            dependencies: [
                .target(name: "UqudoDA"),
                .product(name: "ShieldPtr", package: "shield-ptr-spm")
            ],
            path: "Sources/UqudoDAWrapper"
        ),
        .binaryTarget(
            name: "UqudoDA",
            url: "https://rm2.dev.uqudo.io/repository/uqudo-public/io/uqudo/sdk/iOS-UqudoDA/1.0.0-prev/iOS-UqudoDA-1.0.0-prev.zip",
            checksum: "05ea2e1547f47884bb719d390c7b9df25ff16bd20c946a9fa431be45d60fb97f"
        )
    ]
)
