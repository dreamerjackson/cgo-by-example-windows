# .ONESHELL:
# It seems .ONESHELL doesn't work on mingw32-make, so we can't set environment vars
.PHONY: all clean

all:
	gofmt -e -s -w .
	go vet .
	go env
	$(CC) -g $(GOGCCFLAGS) -c -o lib/lib.o lib/lib.c
# On windows platforms it's a `.dll` and there's no leading `lib`
	$(CC) -g $(GOGCCFLAGS) -shared -o lib.dll lib/lib.o
	go build main.go
	cp lib.dll wrapper/
	go build main2.go

clean:
	rm lib.dll lib\lib.o wrapper\lib.dll main.exe main2.exe
