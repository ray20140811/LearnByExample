objects = main.o
main : $(objects)
	gcc -o main $(objects)
main.o : main.c
	gcc -c main.c
clean:
	rm main $(objects)
