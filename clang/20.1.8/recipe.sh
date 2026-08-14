ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/clang-20.1.8-x86_64/raw/refs/heads/master/clang-20.1.8-x86_64.tar.xz"
ARK_SOURCE_SHA256="63e13786aaec6b1fdf3e5b59751ced2599be3cce9c450892a337a83090bb636b"
ARK_TYPE="binary"
ARK_DEPENDS=""
ARK_BINARIES="usr/bin/clang usr/bin/clang++ usr/bin/clang-cpp"

build() {
    mkdir -p "$HOME/.ark/bin"
    mkdir -p "$HOME/.ark/lib"

    cp -a "$ARK_BUILD_DIR/usr/bin/." "$HOME/.ark/bin/"
    cp -a "$ARK_BUILD_DIR/usr/lib/20" "$HOME/.ark/lib/"
}

remove() {
    rm -f "$HOME/.ark/bin/clang"
    rm -f "$HOME/.ark/bin/clang++"
    rm -f "$HOME/.ark/bin/clang-cpp"
    rm -f "$HOME/.ark/bin/clang-20"
    rm -rf "$HOME/.ark/lib/20"
}
