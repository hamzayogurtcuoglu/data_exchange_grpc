# gRPC C++
## Installing

### How to install

To install **gRPC**, run the following commands:

```bash
$ export INSTALL_DIR=$HOME/.local
$ mkdir -p $INSTALL_DIR
$ export PATH="$INSTALL_DIR/bin:$PATH"
$ git clone --recurse-submodules -b v1.37.1 https://github.com/grpc/grpc
$ cd grpc
$ mkdir -p cmake/build
$ pushd cmake/build
$ cmake -DgRPC_INSTALL=ON -DgRPC_BUILD_TESTS=OFF -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR ../..
$ make -j
$ make install
$ popd
$ mkdir -p third_party/abseil-cpp/cmake/build
$ pushd third_party/abseil-cpp/cmake/build
$ cmake -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE ../..
$ make -j
$ make install
$ popd
```

To build
```bash
$ cmake .
$ make
```

To run (Server send a number , string and a file to client.)
```bash
$ ./datashare_server
$ ./datashare_client
```


To test (Server send a number , string and a file to client. Status check.)
```bash
$ ./datashare_test
```
