#pb.so: pb.c pb.h
#	gcc -O2 -shared -DUSE_LUAJIT=1 -fPIC pb.c -o pb.so -I $(LUAJIT_DIR)

ACLOCAL_AMFLAGS = -I m4

#all-local:: pb.so

#pb.so: pb.c pb.h
#	$(CC) $(CFLAGS) $(CPPFLAGS) pb.c -o $@

lib_LTLIBRARIES = pb.la
pb_la_SOURCES = pb.c pb.h
pb_la_LDFLAGS = -module -avoid-version -shared

EXTRA_DIST = \
	protoc.lua
