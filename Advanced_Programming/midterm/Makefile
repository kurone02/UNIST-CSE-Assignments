
# Student name: Nguyen Minh Duc
# Student ID: 20202026

# This is Makefile where it has rules to build main.


SANFLAGS = -fsanitize=address
CXXFLAGS += -Wall -g -std=c++17 -pedantic $(SANFLAGS)
LDFLAGS += $(SANFLAGS)
midterm-part1: midterm-part1.o
	$(CXX) -o $@ $^ $(LDFLAGS)
midterm-part2: midterm-part2.o
	$(CXX) -o $@ $^ $(LDFLAGS)
.phony: clean
clean:
	$(RM) midterm-part1 midterm-part2 *.o