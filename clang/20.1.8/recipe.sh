ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/clang-20.1.8-x86_64/raw/refs/heads/master/clang-20.1.8-x86_64.tar.xz"
ARK_SOURCE_SHA256="63e13786aaec6b1fdf3e5b59751ced2599be3cce9c450892a337a83090bb636b"
ARK_TYPE="binary"
ARK_DEPENDS=""
ARK_BINARIES="usr/bin/clang usr/bin/clang++ usr/bin/clang-cpp"

build() {
    cp -a usr /.
}

remove() {
    rm -f /usr/bin/clang
    rm -f /usr/bin/clang++
    rm -f /usr/bin/clang-cpp
    rm -f /usr/bin/clang-20
    rm -rf /usr/lib/20
}
