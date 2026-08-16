ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/ark-dep-or-test/raw/refs/heads/master/ark-dep-or-test.tar.xz"
ARK_SOURCE_SHA256="edc02be21144977e3ac104d37de5910df37703b4f21e44fda6ab76f54fac826d"
ARK_TYPE="binary"
ARK_DEPENDS="(ark-dep-or-test1 || ark-dep-or-test2)"
ARK_BINARIES="ark-dep-or-test"

build() {
    mkdir -p "$HOME/.ark/bin"
    cp "$ARK_BUILD_DIR/ark-dep-or-test" "$HOME/.ark/bin/ark-dep-or-test"
}

remove() {
    rm -f "$HOME/.ark/bin/ark-dep-or-test"
}
