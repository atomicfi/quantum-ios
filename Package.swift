// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
	name: "QuantumIOS",
	platforms: [.iOS(.v13)],
	products: [
		// Products define the executables and libraries a package produces, and make them visible to other packages.
		.library(
			name: "QuantumIOS",
			targets: ["QuantumIOS", "MuppetIOS"])
	],
	targets: [
		.binaryTarget(
			name: "QuantumIOS",
			path: "artifacts/QuantumIOS.xcframework"),
        .binaryTarget(
            name: "MuppetIOS",
            path: "artifacts/MuppetIOS.xcframework")
	]
)
