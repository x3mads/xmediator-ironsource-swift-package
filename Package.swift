// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorIronSource",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorIronSource", targets: ["XMediatorIronSourceTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", exact: "9.6.0"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.159.0")),
    ],
    targets: [
        .target(
            name: "XMediatorIronSourceTarget",
            dependencies: [
                .target(name: "XMediatorIronSource"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
            ],
            path: "XMediatorIronSourceTarget",
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorIronSource",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorIronSource/XMediatorIronSource-9.6.0.0.1.zip",
            checksum: "95a2a1c91680130fc6ae14822f534c8b2afe1b9dd03f19b8d8d5cb461948a4a2"
        ),
    ]
)
