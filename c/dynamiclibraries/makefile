all: libmath.so main

libmath.so: math.c
	gcc math.c -fPIC -shared -o libmath.so
main: main.c 	
	gcc main.c -L. -lmath -o main
clean:
	rm main libmath.so

