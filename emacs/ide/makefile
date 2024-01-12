CC := gcc
CFLAGS += -g

objects = main.o
main : $(objects)
	$(CC) -o main $(objects)
main.o : main.c
	$(CC) -c $(CFLAGS) main.c
clean:
	rm main $(objects)
