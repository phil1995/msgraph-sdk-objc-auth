// swift-tools-version:5.1
import PackageDescription
let package = Package(
	name: "MSGraphMSALAuthProvider",
	platforms: [
		.iOS(.v11)
	],
	products: [
		.library(name: "MSGraphMSALAuthProvider", targets: ["MSGraphMSALAuthProvider"])
	],
	dependencies: [
		.package(url: "https://github.com/phil1995/msgraph-sdk-objc", . branch("swift-pm")),
		.package(url: "https://github.com/AzureAD/microsoft-authentication-library-for-objc.git", .upToNextMinor(from: "1.1.16"))
	],
	targets: [
		.target(
			name: "MSGraphMSALAuthProvider",
			dependencies: [
				"MSGraphClientSDK",
				"MSAL"
			],
			path: "MSGraphMSALAuthProvider/MSGraphMSALAuthProvider",
			publicHeadersPath: "",
			cSettings: [
				.headerSearchPath("")
			]
		),
	]
)
