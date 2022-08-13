SANFLAGS = -fsanitize=address
CXXFLAGS += -Wall -g -std=c++17 -pedantic $(SANFLAGS)
LDFLAGS += $(SANFLAGS)

main: main.o set.o 
	$(CXX) -o $@ $^ $(LDFLAGS)

sum: sum.o
	$(CXX) -o $@ $^ $(LDFLAGS)

.phony: clean

clean:
	$(RM) main *o

main.o: main.cpp set.h
set.o: set.cpp set.h
