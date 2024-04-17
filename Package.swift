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
            from: "1.1.2"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MarketingCloudSDK",
            url: "https://github.com/adimobile/MarketingCloudSDK-iOS/releases/download/v8.1.3-spm/MarketingCloudSDK.xcframework.zip",
            checksum: "35a1cda5eda025bc04929f7218bffcb8bc45ce24a49b9d456dd9a5c283eba0ab"
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
