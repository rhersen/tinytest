#CFLAGS = -g -O0

AS = cc
ASFLAGS = -c

.PHONY: clean test

all: myfunctions.o myfunctions_test

myfunctions_test: myfunctions.o

test: myfunctions_test
	./myfunctions_test

clean:
	rm -f *.o myfunctions_test
