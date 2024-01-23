#edward ramos - asm makefile
ASM = as # the assembler
LD = ld # the object file linker with optional linker flags
LDFLAGS = 
hello: hello.o
	$(LD) $(LDFLAGS) -o hello $^ 
hello.o: #hello.s
	$(ASM) -o hello.o hello.s
clean:
	rm -f hello *.o

