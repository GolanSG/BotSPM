
    // swift-tools-version:5.3
    import PackageDescription

    let package = Package(
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
        dependencies: [.package(url: "https://github.com/GolanSG/CoreSPM.git", from: "1.5.2")],
        targets: [
            .binaryTarget(
                name: "Core",
                url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudBot/GenesysCloudBot_version_t1.5.0_commit_ddc5b1e32523dc63e132ebf4778063124162385a.zip",
                checksum: "593f8f488313a545b88dbf899ea6dcd155a39b566658395730c3e3afaeb154bf"
            ),
        ]
    )
    