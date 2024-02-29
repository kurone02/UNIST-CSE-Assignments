# Student name: Nguyen Minh Duc
# Student ID: 20202026

# This is Makefile where it has rules to build server.


# SANFLAGS = -fsanitize=address
CXXFLAGS += -Wall -g -std=c++17 -pedantic $(SANFLAGS)
LDFLAGS += $(SANFLAGS)
server: server.o
	$(CXX) -o $@ $^ $(LDFLAGS)
.phony: clean

clean:
	$(RM) server *.o

server.o: server.cpp