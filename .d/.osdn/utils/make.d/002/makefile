TARGET = hello
PREFIX = /usr/local/bin

.PHONY: all clean install uninstall
	
all: hello
	
clean:
			rm -rf $(TARGET) *.o
main.o: main.c
			gcc -c -o main.o main.c
hello.o: hello.c
			gcc -c -o hello.o hello.c
hello: main.o hello.o
			gcc -o $(TARGET) main.o hello.o
install:
			install $(TARGET) $(PREFIX)
uninstall:
			rm -rf $(PREFIX)/$(TARGET)