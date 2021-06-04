// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Payne",
    products: [
        .library(
            name: "Payne",
            targets: ["Payne"]),
    ],
    dependencies: [
        .package(url: "https://github.com/glimpseio/BricBrac.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "Payne",
            dependencies: ["BricBrac"],
            resources: [.process("Resources")]),
        .testTarget(
            name: "PayneTests",
            dependencies: ["Payne"],
            resources: [.copy("TestResources")]),
    ]
)
