cpp_source_files := $(wildcard src/*.cpp)
cpp_object_files := $(patsubst src/%.cpp, \
	build/%.o, $(cpp_source_files))

.PHONY: all clean run

all: helios

helios: $(cpp_object_files)
	@mkdir -p build
	@gcc -o build/helios ${cpp_object_files} -lncurses -lgcc

build/%.o: src/%.cpp
	@gcc -c --std=gnu++14 -o $@ $<

run: helios
	@./build/helios
