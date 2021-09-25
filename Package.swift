// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMBundler",
    platforms: [SupportedPlatform.macOS(SupportedPlatform.MacOSVersion.v11)],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
        .package(name: "DeltaLogger", url: "https://github.com/stackotter/delta-logger", .branch("main")),
    ],
    targets: [
        .target(
            name: "SPMBundler",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                "DeltaLogger"]),
        .testTarget(
            name: "SPMBundlerTests",
            dependencies: ["SPMBundler"]),
    ]
)