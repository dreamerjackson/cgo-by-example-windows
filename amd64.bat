set GOOS=windows
set GOARCH=amd64
set CGO_ENABLED=1
set GOGCCFLAGS=-mthreads -fmessage-length=0 -fdebug-prefix-map=C:\Users\Dubya\AppData\Local\Temp\go-build496310563=/tmp/go-build -gno-record-gcc-switches
mingw32-make all
