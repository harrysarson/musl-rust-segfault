#include <cstdio>


extern "C"
{
    void* test();
}

int main() {
    printf("%p\n", test());
}
