# SPIN testing

To read the logs
```bash
nroff -ms logs.ms
```
Note: invocations from post-unix kernels should employ the plan9port 
```bash
git clone https://github.com/9fans/plan9port.git
cd plan9port
./INSTALL
```
Note: there are build requirements not listed here that will have to be obtained from a package manager of choice(if not built from source)

To run hello-world
```bash
spin hello-world.pml
```
Note: debian package managers may have spin but if this cannot be found amd64 linux spin binary can be obtained as such
```bash
git clone https://github.com/nimble-code/Spin.git
cd Spin/Bin
gzip -d spin651_linux64.gz
```
Note: alias, symbolic link, or binary renaming may be desirable such that spin can be invoked as spin
