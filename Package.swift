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
            from: "1.0.8"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MarketingCloudSDK",
            url: "https://github.com/adimobile/MarketingCloudSDK-iOS/releases/download/v8.0.13-spm/MarketingCloudSDK.xcframework.zip",
            checksum: "26bb30354d49313bda98c95d551b4496ed3ced14cf8bc489994b64a970405006"
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
