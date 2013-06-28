CC_IOC=${HOME}/ioc-build/Debug+Asserts/bin/clang
#CC=/usr/bin/clang

IOC_FLAG=-fioc-explicit-conversion -fioc-implicit-conversion -fioc-unsigned -fioc-signed -fioc-shifts -fioc-strict-shifts

all: signed_to_size_t int_to_unsigned_char size_overflow wgint_shift size_underflow 

%: %.c
#	$(CC) -m32 -S -emit-llvm $(@).c -o $(@).ll
	$(CC_IOC) -S -emit-llvm $(IOC_FLAG)  $(@).c  -o $(@)_ioc.ll

clean:
	rm -f *.ll
