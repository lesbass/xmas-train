run: build-all
	dotnet serve

build-all: build-as build-dotnet build-kt build-cpp

build-kt:
	cd kotlin && docker compose up

build-as:
	cd assemblyscript && npm i && npm run asbuild:release

build-cpp:
	cd cpp && docker compose up

build-rust:
	cd rust && docker compose up

build-dotnet:
	cd dotnet && docker compose up
	mv dotnet/temp/AppBundle dotnet/build
	rm -r dotnet/temp dotnet/obj

serve:
	dotnet serve --port 8080 --open-browser