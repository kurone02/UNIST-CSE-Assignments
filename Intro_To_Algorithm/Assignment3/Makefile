CC = gcc
CFLAGS = -Wall -g -fsanitize=address
LIBS = -lm

SANFLAGS = -fsanitize=address
CXXFLAGS += -Wall -g -std=c++17 -pedantic $(SANFLAGS)
LDFLAGS += $(SANFLAGS)

all: main sol check

main: main.c
	$(CC) main.c $(CFLAGS) $(LIBS) -o main

sol: sol.o
	$(CXX) -o $@ $^ $(LDFLAGS)

check: check.o
	$(CXX) -o $@ $^ $(LDFLAGS)

clean:
	$(RM) main sol check *o