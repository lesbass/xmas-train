build-all: build-as build-dotnet build-kt

build-kt:
	cd kotlin && docker compose up

build-as:
	cd assemblyscript && npm run asbuild:release

build-cpp:
	cd cpp && docker compose up

build-rust:
	cd rust && docker compose up

build-dotnet:
	cd dotnet && docker compose up
	mv dotnet/bin/Release/net7.0/browser-wasm/AppBundle dotnet/build
	rm -r dotnet/bin dotnet/obj