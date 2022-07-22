// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MarketingCloudSDK",
    defaultLocalization: "en",
    products: [
        .library(name: "MarketingCloudSDK", targets: [
            "MarketingCloudSDK",
            "MarketingCloudSDKTarget",
            "MarketingCloudSDKResources"
        ])
    ],
    dependencies: [
        .package(name: "SFMCSDK",
                 url: "https://github.com/salesforce-marketingcloud/sfmc-sdk-ios",
                 from: "1.0.4"),
    ],
    targets: [
        .binaryTarget(
            name: "MarketingCloudSDK",
            url: "https://github.com/adimobile/MarketingCloudSDK-iOS/releases/download/v8.0.6-spm/MarketingCloudSDK.xcframework.zip",
            checksum: "a4f20422a563affc565c3d45033077138babfcf2eb0c76771ad0c3e190d3e635"
        ),
        .target(
             name: "MarketingCloudSDKTarget",
             dependencies: [.product(name: "SFMCSDK", package: "SFMCSDK")],
             path: "Sources/",
             exclude: [
                "MarketingCloudSDKResources/Resources/Assets.car",
                "MarketingCloudSDKResources/Resources/MarketingCloudSDK.bundle",
                "MarketingCloudSDKResources/Resources/SFMCModel.momd",
                "MarketingCloudSDKResources/Resources/InAppMessageUI.storyboardc"
             ]
        ),
        .target(
             name: "MarketingCloudSDKResources",
             path: "Sources/MarketingCloudSDKResources/Resources",
             exclude: [
                "Assets.car",
                "SFMCModel.momd",
                "InAppMessageUI.storyboardc"
             ],
             resources: [
                .copy("MarketingCloudSDK.bundle")
             ]
        )
    ]
)
