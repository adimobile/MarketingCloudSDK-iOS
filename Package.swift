// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MarketingCloudSDK",
    defaultLocalization: "en",
    products: [
        .library(name: "MarketingCloudSDK", targets: ["MarketingCloudSDK", "MarketingCloudSDKResources"])
    ],
    dependencies: [
        .package(name: "SFMCSDK", url: "https://github.com/salesforce-marketingcloud/sfmc-sdk-ios", from: "1.0.4"),
    ],
    targets: [
        .binaryTarget(
            name: "MarketingCloudSDK",
            path: "MarketingCloudSDK/MarketingCloudSDK.xcframework"
        ),
        .target(
             name: "MarketingCloudSDKResources",
             dependencies: [.product(name: "SFMCSDK", package: "SFMCSDK")],
             resources: [.process("Resources")]
        )
    ]
)
