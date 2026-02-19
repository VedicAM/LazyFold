CXXFLAGS = -O3

all: LazyFold
SOURCES1=$(wildcard LazyFold/*.cpp)

LazyFold: $(SOURCES1)
	$(CXX) $(CXXFLAGS) -o ./bin/LazyFold $(SOURCES1) -std=c++11 