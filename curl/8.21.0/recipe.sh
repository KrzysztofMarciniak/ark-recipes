ARK_SOURCE_URL="https://github.com/curl/curl/releases/download/curl-8_21_0/curl-8.21.0.tar.xz"
ARK_SOURCE_SHA256="aa1b66a70eace83dc624508745646c08ae561de512ab403adffb93ac87fc72e6"
ARK_TYPE="source"
ARK_DEPENDS="wolfssl clang make"
ARK_BINARIES="src/curl"
build() {
    export PATH="$HOME/.ark/bin:$PATH"
    export PKG_CONFIG_PATH="$HOME/.ark/lib/pkgconfig:$PKG_CONFIG_PATH"

    CC=clang ./configure \
        --with-wolfssl="$HOME/.ark" \
        LDFLAGS="-Wl,-rpath,$HOME/.ark/lib"

    make -j"$(nproc)"
    mkdir -p "$HOME/.ark/bin"
    cp src/curl "$HOME/.ark/bin/"
}
remove() {
    rm -f "$HOME/.ark/bin/curl"
}
