// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LaoshuModels",
    products: [
        .library(
            name: "LaoshuModels",
            type: .dynamic,
            targets: ["laoshu-models"]),
    ],
    targets: [
        .target(
            name: "laoshu-models",
            dependencies: []),
        .testTarget(
            name: "laoshu-modelsTests",
            dependencies: ["laoshu-models"]),
    ]
)
