GSC = /Users/weiju/devlocal/gambitc-macosx/bin/gsc
CFLAGS = -D___LIBRARY
INCLUDE = -I/Users/weiju/devlocal/gambitc-macosx/include
LIB = -L/Users/weiju/devlocal/gambitc-macosx/lib
SCHEME_OBJECTS = init.o init_.o mymath.o
SCHEME_C_SOURCE = init.c init_.c mymath.c

scheme_c: $(SCHEME_C_SOURCE)

$(SCHEME_C_SOURCE) : init.scm mymath.scm
	$(GSC) -:d- -link mymath.scm init.scm

clean:
	rm -f *.o
	rm -f init*.c mymath.c

%.o : %.c
	gcc $(CFLAGS) $(INCLUDE) -c $< -o $@

