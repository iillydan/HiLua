CC:=g++
CC:=CC
CFLAGS:= -Wall
LDFLAGS:=-lpthread
TARGET:=hilua
LIB:=hilua.a
SRCS:=$(wildcard *.cpp)
HEADERS:=$(wildcard *.h)
OBJS:=$(SRCS:%.cpp=%.o)

%.o : %.cpp
	$(CC) -c -o $@ $(CFLAGS) $^

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS) 
all: $(OBJS)
	echo $(SRCS) 

clean: 
	rm -rf $(TARGET) $(LIB)
	rm -rf *.o

.PHONY: clean
