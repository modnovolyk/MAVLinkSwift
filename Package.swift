import PackageDescription

let package = Package(
    name: "MAVLink",
    dependencies: [],
    exclude: [
    		"Tests/MAVLinkTests/Cmavlink",
    		"Package.test.swift",
    		"Package.backup.swift"
    	]
)
