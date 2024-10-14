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
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-base", exact: "0.9.6")
    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallGlobalBaseUI",
            url: "https://github.com/adison-ads/adison-offerwall-global-base-ui/releases/download/0.9.6/AdisonOfferwallGlobalBaseUI.zip",
            checksum: "5a048165d4e3bc6dab675c2dc1431da1159f414760fa2ec340edbbc206453b43"
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
