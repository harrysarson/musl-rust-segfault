

.PHONY: cxx
cxx:
	$(CXX) -static "-O0" "-ffunction-sections" "-fdata-sections" "-fPIC" "-g" "-fno-omit-frame-pointer" "-m64" "-I" "src" "-Wall" "-Wextra"  ./src/main.cc ./src/test.cc -o ./target/main
	./target/main

.PHONY: rust
rust:
	cargo run

.PHONY: rust-musl
rust-musl:
	CROSS_COMPILE=/opt/cross/bin/x86_64-linux-musl- cargo run --target x86_64-unknown-linux-musl
