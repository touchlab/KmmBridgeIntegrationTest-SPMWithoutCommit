// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest-SPMWithoutCommit/co/touchlab/kmmbridge/test/spmmanualcommit/shared-kmmbridge/1.3.24/shared-kmmbridge-1.3.24.zip"
let remoteKotlinChecksum = "116f21c40a5751078971195b6e6808a7e7d0edd10628a43ff1e4ae1539f0f63b"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)