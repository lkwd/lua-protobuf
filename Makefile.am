#pb.so: pb.c pb.h
#	gcc -O2 -shared -DUSE_LUAJIT=1 -fPIC pb.c -o pb.so -I $(LUAJIT_DIR)

ACLOCAL_AMFLAGS = -I m4

#all-local:: pb.so

#pb.so: pb.c pb.h
#	$(CC) $(CFLAGS) $(CPPFLAGS) pb.c -o $@

EXTRA_DIST = \
	protoc.lua \
	pb.c pb.h

install-exec-hook:
	luarocks make rockspecs/$(PACKAGE)-$(VERSION).rockspec --tree=@ROCKS_DIR@
