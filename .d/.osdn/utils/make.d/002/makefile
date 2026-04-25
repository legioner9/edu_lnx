.PHONY: all clean install uninstall
	
all: hello
	
clean:
			rm -rf hello *.o
main.o: main.c
			gcc -c -o main.o main.c
hello.o: hello.c
			gcc -c -o hello.o hello.c
hello: main.o hello.o
			gcc -o hello main.o hello.o
install:
			install ./hello /usr/local/bin
uninstall:
			rm -rf /usr/local/bin/hello