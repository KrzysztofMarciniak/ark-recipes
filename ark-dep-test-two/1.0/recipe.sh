ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/ark-dependency-test/raw/refs/heads/master/ark-dep-test-two.tar.xz"
ARK_SOURCE_SHA256="4ca037f693ec602396cc00f8c190b0a280241577da026d4ff427ae49474f70bf"
ARK_TYPE="binary"
ARK_DEPENDS="ark-dep-test"
ARK_BINARIES="ark-dep-test-two"

build() {
    mkdir -p "$HOME/.ark/bin"
    cp "$ARK_BUILD_DIR/ark-dep-test-two" "$HOME/.ark/bin/ark-dep-test-two"
}

remove() {
    rm -f "$HOME/.ark/bin/ark-dep-test-two"
}
