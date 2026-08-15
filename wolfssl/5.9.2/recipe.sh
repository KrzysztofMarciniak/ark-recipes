ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/wolfssl-5.9.2-x86_64/raw/refs/heads/master/wolfssl-5.9.2-x86_64.tar.xz"
ARK_SOURCE_SHA256="25b952e14519a6e5ce3966ca04383888efcb72f577698704e98b157153b695ab"
ARK_TYPE="binary"
ARK_DEPENDS=""
ARK_BINARIES="usr/lib/libwolfssl.so"

build() {
    mkdir -p "$HOME/.ark/lib"
    mkdir -p "$HOME/.ark/include"

    cp -a "$ARK_BUILD_DIR/usr/lib/." "$HOME/.ark/lib/"
    cp -a "$ARK_BUILD_DIR/usr/include/." "$HOME/.ark/include/"
}

remove() {
    rm -f "$HOME/.ark/lib/libwolfssl.so"
    rm -f "$HOME/.ark/lib/libwolfssl.so.42"
    rm -rf "$HOME/.ark/include/wolfssl"
}
