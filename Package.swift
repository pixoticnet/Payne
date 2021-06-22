// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "Payne",
    products: [
        .library(
            name: "Payne",
            targets: ["Payne"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pixoticnet/Able.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "Payne",
            dependencies: ["Able"],
            resources: [.process("Resources")]),
        .testTarget(
            name: "PayneTests",
            dependencies: ["Payne"],
            resources: [.copy("TestResources")]),
    ]
)
