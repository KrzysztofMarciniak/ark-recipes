# recipe.sh
ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/ark-hello-world/archive/refs/tags/1.0.tar.gz"
ARK_SOURCE_SHA256="9f2646a84189432d7fde7807611b4865404635a3c529e0f071094274bfedb17e"
ARK_TYPE="source"
ARK_DEPENDS=""

build() {
    tar xvf "$ARK_SOURCE_ARCHIVE" -C "$ARK_BUILD_DIR"
    cd "$ARK_BUILD_DIR"/*/
    ./build.sh
    cp build/ark-hello-world "$HOME/.ark/bin/"
}
