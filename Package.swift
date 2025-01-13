// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.11.2"
let checksum = "e441c14caedd15302cd04d4fd60bf7c0922c231524e64aceec8f55e42f434f00"
let baseVersion = "0.11.2"

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
