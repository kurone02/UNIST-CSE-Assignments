SANFLAGS = -fsanitize=address
CXXFLAGS += -Wall -g -std=c++17 -pedantic $(SANFLAGS)
LDFLAGS += $(SANFLAGS)

gail: 1.o
	$(CXX) -o $@ $^ $(LDFLAGS)

check: checker.o rna.o
	$(CXX) -o $@ $^ $(LDFLAGS)