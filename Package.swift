// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "laoshu-models",
    products: [
        .library(
            name: "LaoshuModels",
            type: .dynamic,
            targets: ["LaoshuModels"]),
    ],
    targets: [
        .target(
            name: "LaoshuModels",
            dependencies: []),
        .testTarget(
            name: "LaoshuModelsTests",
            dependencies: ["LaoshuModels"]),
    ]
)
