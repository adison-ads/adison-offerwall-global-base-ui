// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdisonOfferwallGlobalBaseUI",
    products: [
        .library(
            name: "AdisonOfferwallGlobalBaseUI",
            targets: ["AdisonOfferwallGlobalBaseUI", "AdisonOfferwallGlobalBaseUITarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-base", exact: "0.9.0")
    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallGlobalBaseUI",
            url: "https://github.com/adison-ads/adison-offerwall-global-base-ui/releases/download/0.9.0/AdisonOfferwallGlobalBaseUI.zip",
            checksum: "f730b7f8602d2723dc27cde00caa4617a4f1458c1a0f2f33ff977c00fb0f300f"
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
