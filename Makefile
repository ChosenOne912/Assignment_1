# C PreProcessor
CPPFLAGS =

# C Compiler
CC = g++

# C Compiler Flags
CFLAGS = -Wall

# C++ Compiler
CXX = g++

# C++ Compiler Flags
CXXFLAGS = -Wall

# Extra flags to give to compilers when they are supposed to invoke the linker, 'ld', such as -L. Libraries (-lfoo) should be added to the LDLIBS variable instead.
LDFLAGS = 

# Library flags or names given to compilers when they are supposed to invoke the linker, 'ld'. LOADLIBES is a deprecated (but still supported) alternative to LDLIBS. Non-library linker flags, such as -L, should go in the LDFLAGS variable.
LDLIBS =






CPP_FILES = pi1.cpp pi2.cpp pi3.cpp pi4.cpp pi5.cpp
OBJ_FILES := $(CPP_FILES:.cpp=.o)
HDR_FILES = 

pi2: LDFLAGS += -lpthread
pi3: LDFLAGS += -lpthread
pi4: LDFLAGS += -lpthread
pi5: LDFLAGS += -lpthread

PROG = pi1 pi2 pi3 pi4 pi5

.PHONY : all
all : $(PROG)


.PHONY : clean
clean:
	$(RM) $(OBJ_FILES)

.PHONY : veryclean
veryclean:
	$(RM) $(PROG) $(OBJ_FILES)

.PHONY : tar
tar:
	tar -czvf src.tar.gz $(HDR_FILES) $(CPP_FILES) Makefile

