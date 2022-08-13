CXXFLAGS += -Wall -std=c++17 -pedantic -fsanitize=address

b:	b.o c.o
	$(CXX) -o $@ $^ -fsanitize=address