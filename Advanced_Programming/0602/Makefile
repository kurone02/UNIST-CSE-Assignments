SANFLAGS = -fsanitize=address
CXXFLAGS += -Wall -g -std=c++17 -pedantic $(SANFLAGS)
LDFLAGS += $(SANFLAGS)

main: main.o 
	$(CXX) -o $@ $^ $(LDFLAGS)

lib: lib.o 
	$(CXX) -o $@ $^ $(LDFLAGS)

.phony: clean

clean:
	$(RM) main lib *o

