// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Kerberus",
    platforms: [.iOS(.v17),],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Kerberus",
            targets: ["Kerberus", "KerberusXcFramework"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Kerberus",
            dependencies: ["KerberusXcFramework"],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]),
        .binaryTarget(
            name: "KerberusXcFramework",
            path: "./KerberusKotlin.xcframework"),
        .testTarget(
            name: "KerberusTests",
            dependencies: ["Kerberus"]
        ),
    ]
)
