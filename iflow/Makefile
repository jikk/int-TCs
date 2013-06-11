CC=/Users/jikk/llvm-build/Debug+Asserts/bin/clang
CC1=/usr/bin/clang

over0_ll:
	$(CC1) -m32 -S -emit-llvm over0.c  -o over0.ll
	$(CC) -m32 -S -emit-llvm over0.c  -fsanitize=integer -o over0_san.ll

over0_bc:
	$(CC1) -m32 -c -emit-llvm over0.c  -o over0.bc
	$(CC) -m32 -c  -emit-llvm over0.c  -fsanitize=integer -o over0_san.bc

over0: over0_ll
	$(CC1) over0.ll  -o over0
	$(CC) over0_san.ll  -o over0_san

clean:
	rm -f *.ll *.bc over0 over0_san
