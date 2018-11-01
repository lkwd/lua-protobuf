LUAJIT_DIR := $(TARANTOOL_DIR)/third_party/luajit/src/

pb.so: pb.c pb.h
	gcc -O2 -shared -DUSE_LUAJIT=1 -fPIC pb.c -o pb.so -I $(LUAJIT_DIR)
