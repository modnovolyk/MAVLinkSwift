import PackageDescription

let package = Package(
    name: "MAVLink",
    dependencies: [
    		.Package(url: "../Cmavlink", majorVersion: 1)
    	],
    exclude: [
    		"Tests/MAVLinkTests/Cmavlink",
    		"Package.test.swift",
    		"Package.backup.swift"
    	]
)
