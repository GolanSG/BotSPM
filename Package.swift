// swift-tools-version: 5.4

import PackageDescription

let package = Package(
    name: "Bot",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "BotLibrary",
                 targets: ["BotTarget"]),
        .library(name: "CoreLibrary",
                 targets: ["CoreTarget"])
    ],
    targets: [
        .binaryTarget(name: "CoreTarget",
                      url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudCore/GenesysCloudCore_version_t1.5.0_commit_04c4ead1e64e480a6cbce313aeb2b415fb534914.zip",
                      checksum: "9cf504a8e8b55aba03dd1109b1d12526f5624578c3a2a4438973840010af4338"),
        .binaryTarget(name: "BotTarget",
                      url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudBot/GenesysCloudBot_version_t1.5.0_commit_ddc5b1e32523dc63e132ebf4778063124162385a.zip",
                      checksum: "593f8f488313a545b88dbf899ea6dcd155a39b566658395730c3e3afaeb154bf"
        )
    ]
)

