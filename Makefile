# Declaration of variables
CC = g++
CC_FLAGS = -w
 
# File names
EXEC = program
SOURCES = $(wildcard *.cpp)
OBJECTS = $(SOURCES:%.cpp=out/%.o)
 
# Main target
$(EXEC): $(OBJECTS)
	$(CC) $(OBJECTS) -o out/$(EXEC)
 
# To obtain object files
out/%.o: %.cpp
	mkdir out 2> NUL | exit 0
	$(CC) -c $(CC_FLAGS) $< -o $@
 
# To remove generated files
clean:
	rmdir /s /q out