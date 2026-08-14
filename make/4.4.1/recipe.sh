ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/make-4.4.1-x86_64.tar.xz/raw/refs/heads/master/make-4.4.1.tar.xz"
ARK_SOURCE_SHA256="de62f4e900e068d67011c9a86ddf6f1f825d412a74ea647e86b6c011384c6a02"
ARK_TYPE="binary"
ARK_DEPENDS=""
ARK_BINARIES="usr/bin/make"

build() {
    mkdir -p "$HOME/.ark/bin"
    cp "$ARK_BUILD_DIR/usr/bin/make" "$HOME/.ark/bin/make"
}

remove() {
    rm -f "$HOME/.ark/bin/make"
}
