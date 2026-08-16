ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/ark-dep-or-test/raw/refs/heads/master/ark-dep-or-test1.tar.xz"
ARK_SOURCE_SHA256="cb252861423a7b30211c3a798522add5ee4552d0793d7aa7b086f0b404be8894"
ARK_TYPE="binary"
ARK_DEPENDS=""
ARK_BINARIES="ark-dep-or-test1"

build() {
    mkdir -p "$HOME/.ark/bin"
    cp "$ARK_BUILD_DIR/ark-dep-or-test1" "$HOME/.ark/bin/ark-dep-or-test1"
}

remove() {
    rm -f "$HOME/.ark/bin/ark-dep-or-test1"
}
