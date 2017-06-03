CPP = g++
AR = ar -rc

CFLAGS = -g -fno-strict-aliasing -O0 -Wall -export-dynamic -pipe -D_GNU_SOURCE -D_REENTRANT -Wno-deprecated -m64

LINKS = -L./ -lhook -ldl

PROG = hooklib hook_example

all: $(PROG)

hooklib: libhook.a

%.o : %.cpp
	$(CPP) $(CFLAGS) $^ -c -o $@

libhook.a: hook.o
	$(AR) $@ $^

hook_example: main.o
	$(CPP) $^ -o $@ $(LINKS) 

clean:
	rm -rf *.a *.o hook_example
