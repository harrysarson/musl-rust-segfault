
class Scanner {
    int dummy = 6;
};


extern "C"
{
    void *test()
    {
        return new Scanner();
    }
}

