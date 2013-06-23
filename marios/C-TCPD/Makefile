CC_IOC=/home/mariuska/ioc-build/Release+Asserts/bin/clang
#CC=/usr/bin/clang

IOC_FLAG=-fioc-explicit-conversion -fioc-implicit-conversion -fioc-unsigned -fioc-signed -fioc-shifts -fioc-strict-shifts

all: signed_to_unsigned shift unsigned_underflow 

%: %.c
#	$(CC) -m32 -S -emit-llvm $(@).c -o $(@).ll
	$(CC_IOC) -S -emit-llvm $(IOC_FLAG)  $(@).c  -o $(@)_ioc.ll

clean:
	rm -f *.ll
