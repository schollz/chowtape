rebuild: clean build	

build: supercollider
	mkdir -p build
	mkdir -p install
	cd build && cmake .. -DCMAKE_BUILD_TYPE='Release' -DSC_PATH=../supercollider -DCMAKE_INSTALL_PREFIX=/home/zns/.local/share/SuperCollider/Extensions
	cd build && cmake --build . --config Release
	cd build && cmake --build . --config Release --target install

supercollider:
	git clone https://github.com/supercollider/supercollider.git

clean:
	rm -rf install
	rm -rf build

