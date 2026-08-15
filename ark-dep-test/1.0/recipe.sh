ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/ark-dependency-test/raw/refs/heads/master/ark-dep-test.tar.xz"
ARK_SOURCE_SHA256="dd304854456e3712542be2e74991e55ed2b6028a90e6004aba3c1b5ba9547094"
ARK_TYPE="binary"
ARK_DEPENDS=""
ARK_BINARIES="ark-dep-test"

build() {
    mkdir -p "$HOME/.ark/bin"
    cp "$ARK_BUILD_DIR/ark-dep-test" "$HOME/.ark/bin/ark-dep-test"
}

remove() {
    rm -f "$HOME/.ark/bin/ark-dep-test"
}
