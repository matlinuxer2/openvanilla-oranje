Required packages in debian:

    *. libtool
    *. autools-dev

0. synchronize the source tree into this directory.

	`./sync.sh`

1. initialize autotools toolchain

	`autoreconf -sif`

2. follow common tarball operations

	`./configure && make && make install `

3. make tarball for release

	`make distcheck && make dist-gzip `
