#include header files for external libraries
INCLUDE_DIRS = ../include /opt/systemC/include
#Dir of external libraries
LIB_DIRS = /opt/systemC/lib ../lib
#Compiler
CXX=g++

CDEFS=-DELIPSON=0.3f
#Compiler Options
CFLAGS= -Wall -Wextra -g -O0 -MMD $(INCLUDE_DIRS) $(CDEFS)
#Linker Options
LDFLAGS = -Wl -lpthread -L$(LIB_DIRS) #-rpath,/opt/systemC/lib
# Link with this libs
LIBS= #-L../lib -lHash -lsystemc

HFILES= utility.h
CFILES= main.cpp utility.cpp

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.cpp=.o}

TARGET = final_binary

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CFLAGS) $(OBJS) -o $(TARGET) $(LDFLAGS)

#depend:

#%.o: %.cpp
#	$(CC) $(CFLAGS) -c $< -o $@

-include $(OBJS:.o=.d)

.PHONY: clean
clean:
	$(RM) $(OBJS) $(TARGET) $(OBJS:.o=.d)
