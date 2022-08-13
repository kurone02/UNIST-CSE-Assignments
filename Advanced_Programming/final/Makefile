CXXFLAGS += -Wall -std=c++17 -pedantic -fsanitize=address

main:	main.o shape.o
	$(CXX) -o $@ $^ -fsanitize=address

main.o: main.cpp shape.h
shape.o: shape.cpp shape.h