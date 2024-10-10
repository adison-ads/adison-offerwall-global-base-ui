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
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-base", exact: "0.9.4")
    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallGlobalBaseUI",
            url: "https://github.com/adison-ads/adison-offerwall-global-base-ui/releases/download/0.9.4/AdisonOfferwallGlobalBaseUI.zip",
            checksum: "d28a3d4b82e7d655465c6aea4919876353411b50510ce6d3bb8dec8f7f4c31ab"
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
