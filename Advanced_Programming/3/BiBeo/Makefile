# ID: 20202027
# Full name: THU PHUONG NGUYEN

SANFLAGS = -fsanitize=address
CXXFLAGS += -Wall -g -std=c++17 -pedantic $(SANFLAGS)
LDFLAGS += $(SANFLAGS)
main: main.o rna.o
	$(CXX) -o $@ $^ $(LDFLAGS)