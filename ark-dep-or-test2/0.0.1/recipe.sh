ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/ark-dep-or-test/raw/refs/heads/master/ark-dep-or-test2.tar.xz"
ARK_SOURCE_SHA256="e79dce53f384d60916b211fe5030776d8fbf1ec0ecb69512a58c00de452903ae"
ARK_TYPE="binary"
ARK_DEPENDS=""
ARK_BINARIES="ark-dep-or-test2"

build() {
    mkdir -p "$HOME/.ark/bin"
    cp "$ARK_BUILD_DIR/ark-dep-or-test2" "$HOME/.ark/bin/ark-dep-or-test2"
}

remove() {
    rm -f "$HOME/.ark/bin/ark-dep-or-test2"
}
