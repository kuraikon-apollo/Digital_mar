// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DigitalMar",
    platforms: [
        .iOS(.v13), // Specify minimum iOS version
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DigitalMar",
            dependencies: []
        ),
        .testTarget(
            name: "DigitalMarTests",
            dependencies: ["DigitalMar"]
        ),
    ]
)

