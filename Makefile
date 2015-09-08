LIBS	=
LIBDIR  = 
INCDIR  =
CFLAGS  = -Wall -O2
LDFLAGS = -O1
TARGET  = HelloWorld
SRCS    = $(wildcard *.c)
OBJS    = $(SRCS:.c=.o)

all: $(TARGET) $(OBJS)

$(TARGET): $(OBJS) 
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(INCDIR) $(LIBDIR) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) -c $< $(INCDIR)

.PHONY: clean
clean:
	rm -rf $(TARGET) $(OBJS)
