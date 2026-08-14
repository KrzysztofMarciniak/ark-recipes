# recipe.sh
ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/ark-hello-world/archive/refs/tags/1.0.tar.gz"
ARK_SOURCE_SHA256="afb6bf287f63778a6e57274974425858f11233185c3f0e9844b79e4545d3ae39"
ARK_TYPE="source"
ARK_DEPENDS=""

build() {
    tar xvf "$ARK_SOURCE_ARCHIVE" -C "$ARK_BUILD_DIR"
    cd "$ARK_BUILD_DIR"/*/
    ./build.sh
    cp build/ark-hello-world "$HOME/.ark/bin/"
}
