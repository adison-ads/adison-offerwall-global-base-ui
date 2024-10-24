// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.9.10"
let checksum = "a6a36364baf9ee223b37be420837340fb3debeaac93a8d43a7fa30e04b675184"
let baseVersion = "0.9.8"

let package = Package(
    name: "AdisonOfferwallGlobalBaseUI",
    products: [
        .library(
            name: "AdisonOfferwallGlobalBaseUI",
            targets: ["AdisonOfferwallGlobalBaseUI", "AdisonOfferwallGlobalBaseUITarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-base", exact: Version(stringLiteral: baseVersion))
    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallGlobalBaseUI",
            url: "https://github.com/adison-ads/adison-offerwall-global-base-ui/releases/download/\(version)/AdisonOfferwallGlobalBaseUI.zip",
            checksum: checksum
        ),
        .target(
            name: "AdisonOfferwallGlobalBaseUITarget",
            dependencies: [
                .product(name: "AdisonOfferwallGlobalBase", package: "adison-offerwall-global-base")
            ],
            path: "Sources"
        )
    ]
)
