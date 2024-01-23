#edward ramos - asm makefile
ASM = as
LD = ld
LDFLAGS = 
hello: hello.o
	$(LD) $(LDFLAGS) -o hello $^ 
hello.o: #hello.s
	$(ASM) -o hello.o hello.s
clean:
	rm -f hello *.o

