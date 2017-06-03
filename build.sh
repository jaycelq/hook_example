g++ -g -I. -fPIC -DLINUX -pipe -c -fno-inline -g -fno-strict-aliasing -Og -Wall -export-dynamic -Wall -pipe  -D_GNU_SOURCE -D_REENTRANT -fPIC -Wno-deprecated -m64 -Wno-deprecated hook.cpp  -I.  -o hook.o
ar -rc libhook.a hook.o
g++ -g -I.  -DLINUX -pipe -c -fno-inline -g -fno-strict-aliasing -O0 -Wall -export-dynamic -Wall -pipe  -D_GNU_SOURCE -D_REENTRANT -fPIC -Wno-deprecated -m64 -Wno-deprecated main.cpp  -I.  -o main.o
g++ -g -o hook_exmaple main.o -L./ -lhook -ldl


