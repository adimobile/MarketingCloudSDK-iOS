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
                "MarketingCloudSDKTarget"
            ]
        )
    ],
    dependencies: [
        .package(
            name: "SFMCSDK",
            url: "https://github.com/salesforce-marketingcloud/sfmc-sdk-ios",
            from: "1.0.4"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MarketingCloudSDK",
            url: "https://github.com/adimobile/MarketingCloudSDK-iOS/releases/download/v8.0.10-spm/MarketingCloudSDK.xcframework.zip",
            checksum: "e9d51b6f663f0cd90b0cac9f55de6a4d7d9f09baf59cd8274ab7d90b495dbd4a"
        ),
        .target(
             name: "MarketingCloudSDKTarget",
             dependencies: [
                .product(name: "SFMCSDK", package: "SFMCSDK")
             ],
             path: "Sources/",
             exclude: [
                "MarketingCloudSDKResources/Resources/Assets.car",
                "MarketingCloudSDKResources/Resources/SFMCModel.momd",
                "MarketingCloudSDKResources/Resources/InAppMessageUI.storyboardc",
                "MarketingCloudSDKResources/Resources/en.lproj/MarketingCloudSDK.strings"
             ],
             resources: [
                .process("MarketingCloudSDKResources/Resources/MarketingCloudSDK.bundle"),
             ]
        )
    ]
)
