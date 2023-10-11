// swift-tools-version: 5.4

import PackageDescription

let package = Package(
    name: "Bot",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Bot",
            targets: ["BotTarget"]
        )
    ],
    dependencies: [.package(url: "https://github.com/GolanSG/CoreSPM",
                            from: "1.0.0")],
    targets: [
        .target(name: "BotTarget", dependencies: [
            .target(name: "Bot", condition: .when(platforms: [.iOS])),
            .product(name: "Core", package: "CoreSPM")
        ]),
        .binaryTarget(
            name: "Bot",
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudBot/GenesysCloudBot_version_t1.5.0_commit_ddc5b1e32523dc63e132ebf4778063124162385a.zip",
            checksum: "593f8f488313a545b88dbf899ea6dcd155a39b566658395730c3e3afaeb154bf"
        ),
    ]
)

let package2 = Package(
    name: "Core",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Core",
            targets: ["Core"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Core",
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudCore/GenesysCloudCore_version_t1.5.0_commit_04c4ead1e64e480a6cbce313aeb2b415fb534914.zip",
            checksum: "9cf504a8e8b55aba03dd1109b1d12526f5624578c3a2a4438973840010af4338"
        ),
    ]
)
