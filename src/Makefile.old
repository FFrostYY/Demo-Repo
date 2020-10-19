IDIR=../include
CC=gcc
CFLAGS=-I$(IDIR)

ODIR=obj

_DEPS = hellomake.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS)) #Generate paths to dependencies from _DEPS

_OBJ = hellomake.o hellofunc.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ)) #Same as above for .o files

$(ODIR)/%.o: %.c $(DEPS)	#Create rule for each .o with respective .c as parameter
	$(CC) -c -o $@ $< $(CFLAGS)	#Execute gcc with rulename as output, passing first element of DEPS and all flags

hellomake: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean	#Forces make to not interact with files named clean, but I don't know where those would come from

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~
