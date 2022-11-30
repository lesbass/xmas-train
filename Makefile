build-kotlin:
	cd kotlin && kotlinc-native hello.kt -target wasm32 -o hello