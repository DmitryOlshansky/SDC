//T compiles:yes
//T retval:42
// Tests implicit cast for function parameters.

int add(long a, ulong b)
{
    return cast(int) (a + b);
}

int main()
{
    int a = 25;
    int b = 2;
    
    // XXX: Unary - when supported.
    return add(0-12, add(add(a, b), add(b, a)));
}

