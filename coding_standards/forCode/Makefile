DEBUG_FLAG    =
CC_OPTIMIZE   = -O2
OPTIMIZE_FLAG = -O2
LDR_OPTS      =

MAKE       = make

MV         = mv

FC         = gfortran
FFLAGS     = -c  $(DEBUG_FLAG) $(OPTIMIZE_FLAG)

FSOURCE    = *.F90

OBJS = mod_converter.o temperature_converter.o

temperature_converter.ex: $(OBJS)
	$(FC) -o temperature_converter.ex $(OBJS)



clean:
	rm -f *.o *mod *.ex

###################################################
#
###################################################

.SUFFIXES:
.SUFFIXES: .o .c .f .F90 .h

.F90.o: $(FSOURCE)
	 $(FC) $(FFLAGS) $?
