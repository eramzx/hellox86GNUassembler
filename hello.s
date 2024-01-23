.section .data # declare data section with null terminated hello world characters
main_hello_string: .asciz "Hello, world!\n" # ascii zero byte terminated string

.section .text
.globl _start # mark program entry via text section
_start: # mark start point of the executable code
	movl $4, %eax # move the "write" sys call of 4 to register eax
	movl $1, %ebx # move linux stdout of 1 to ebx register
	movl $main_hello_string, %ecx #move our string address to the ecx register
	movl $14, %edx # load our string length including new line into edx register
	int $0x80 # trigger system intterupt to write 
	movl $1, %eax # move linux exit 1 to eax register
	xorl %ebx, %ebx # xor ebx register with itself to return 0
	int $0x80 # trigger OS interrupst to exit
