// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MarketingCloudSDK",
    defaultLocalization: "en",
    products: [
        .library(
            name: "MarketingCloudSDK",
            targets: [
                "MarketingCloudSDK",
                "MarketingCloudSDKResources"
            ]
        )
    ],
    dependencies: [
        .package(
            name: "SFMCSDK",
            url: "https://github.com/salesforce-marketingcloud/sfmc-sdk-ios",
            from: "1.1.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MarketingCloudSDK",
            url: "https://github.com/adimobile/MarketingCloudSDK-iOS/releases/download/v8.1.0-spm/MarketingCloudSDK.xcframework.zip",
            checksum: "a672d728833a70032ae9b740f3df86d4d752c86eb44942f8b4ce780ae07f2c39"
        ),
        .target(
             name: "MarketingCloudSDKResources",
             dependencies: [
                .product(name: "SFMCSDK", package: "SFMCSDK")
             ],
             resources: [
                .process("Resources")
             ]
        )
    ]
)
