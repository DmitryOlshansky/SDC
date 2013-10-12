module object;

version (D_LP64) {
	alias ulong size_t;
	alias long  ptrdiff_t;
} else {
	alias uint  size_t;
	alias int   ptrdiff_t;
}

alias immutable(char)[] string;

extern (C) {
	void* malloc(size_t);
	void* realloc(void*, size_t);
	void exit(int code);
	// XXX: change to const when proper type qualifier propagation is in place.
	int printf(const char* fmt, ...);
}

class Object {}

class Exception {}

