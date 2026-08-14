#include <ark.h>

ARK_SOURCE(
    "https://github.com/KrzysztofMarciniak/ark-hello-world/archive/refs/tags/1.0.tar.gz",
    "sha256:9f2646a84189432d7fde7807611b4865404635a3c529e0f071094274bfedb17e"
);

ARK_TYPE(ARK_SOURCE);

ARK_DEPENDS(
/* ARK_DEPENDS(
    C99,
    POSIX_SHELL
); */
);

int
build(void)
{
    ark_extract();
    ark_run("./build.sh", NULL);
    return 0;
}
