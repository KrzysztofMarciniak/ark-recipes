ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/busybox-1.21.1-x86_64/raw/refs/heads/master/busybox-x86_64.tar.xz"
ARK_SOURCE_SHA256="f89f0a03bfd4582fcaada1119b1203704b59052765731ffc900056f556e98da5"
ARK_TYPE="binary"
ARK_DEPENDS=""
ARK_BINARIES="busybox-x86_64"

build() {
    mkdir -p "$HOME/.ark/bin"

    cp -a "$ARK_BUILD_DIR/busybox-x86_64" "$HOME/.ark/bin/busybox"
    chmod +x "$HOME/.ark/bin/busybox"
}

remove() {
    rm -f "$HOME/.ark/bin/busybox"
}
