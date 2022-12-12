// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest-SPMWithoutCommit/co/touchlab/kmmbridge/test/spmmanualcommit/shared-kmmbridge/1.3.2/shared-kmmbridge-1.3.2.zip"
let remoteKotlinChecksum = "c813b62b68946afd875c2f37f7ec1f0d0c6cfd911245715bceb374adcb36db46"
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