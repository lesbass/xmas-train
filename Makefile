build-all: build-as build-cpp build-kt build-rust

build-kt:
	cd kotlin && docker compose up

build-as:
	cd assemblyscript && npm run asbuild:release

build-cpp:
	cd cpp && docker compose up

build-rust:
	cd rust && docker compose up