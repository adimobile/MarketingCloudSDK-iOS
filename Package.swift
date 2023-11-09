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
            checksum: "a508c3d29b1fc6030062a568ccff9a712c82dac1c4e771c675d950828fad91aa"
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
