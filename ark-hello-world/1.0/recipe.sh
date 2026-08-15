ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/ark-hello-world/archive/refs/tags/1.0.tar.gz"
ARK_SOURCE_SHA256="afb6bf287f63778a6e57274974425858f11233185c3f0e9844b79e4545d3ae39"
ARK_TYPE="source"
ARK_DEPENDS=""
ARK_BINARIES="build/ark-hello-world"

build() {
    sh ./build.sh
    cp $ARK_BINARIES ~/.ark/bin/.
}

remove() {
    rm -f "$HOME/.ark/bin/ark-hello-world"
}
