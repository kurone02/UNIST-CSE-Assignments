
# Student name: Nguyen Minh Duc
# Student ID: 20202026

# This is Makefile where it has rules to build main.


SANFLAGS = -fsanitize=address
CXXFLAGS += -Wall -g -std=c++17 -pedantic $(SANFLAGS)
LDFLAGS += $(SANFLAGS)
main: main.o random-gen.o
	$(CXX) -o $@ $^ $(LDFLAGS)
.phony: clean

clean:
	$(RM) main random-gen *.o

main.o: main.cpp random-gen.h
random-gen.o: random-gen.cpp random-gen.h