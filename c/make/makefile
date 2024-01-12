CC := gcc

objects = main.o
main : $(objects)
	$(CC) -o main $(objects)
main.o : main.c
	$(CC) -c main.c
clean:
	rm main $(objects)
