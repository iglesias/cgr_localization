#include $(shell rospack find mk)/cmake.mk

buildDir=build

#acceptable buildTypes: Release/Debug/Profile
buildType=Release

all: build

cmake: CMakeLists.txt
	cd $(buildDir) && cmake -DCMAKE_BUILD_TYPE=$(buildType) ..

build:	cmake
	$(MAKE) --no-print-directory -C $(buildDir)

clean:
	$(MAKE) --no-print-directory -C $(buildDir) clean
	
cleanup_cache:
	cd $(buildDir) && rm -rf *

