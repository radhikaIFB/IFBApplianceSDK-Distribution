
// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "IFBApplianceSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IFBApplianceSDK",
            targets: ["IFBApplianceSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "IFBApplianceSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.0/IFBApplianceSDK.xcframework.zip",
            checksum: "29a8cd86b01b115be8d31c0ef26f7301242a916ea5f768c4bed062548588cf88"
        )
    ]
)
