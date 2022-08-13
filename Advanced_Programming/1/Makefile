
# Student name: Nguyen Minh Duc
# Student ID: 20202026

# This is Makefile where it has rules to build both main and check.


SANFLAGS = -fsanitize=address
CXXFLAGS += -Wall -g -std=c++17 -pedantic $(SANFLAGS)
LDFLAGS += $(SANFLAGS)
main: main.o functions.o
	$(CXX) -o $@ $^ $(LDFLAGS)
check: check.o functions.o
	$(CXX) -o $@ $^ $(LDFLAGS)
.phony: clean
clean:
	$(RM) main check *.o