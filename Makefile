CONFIG_DIR := $(CURDIR)/config

export CONFIG_DIR

include $(CONFIG_DIR)/common.mk 

.PHONY: all clean 

SRCS := definedConstantsMod.F90 calendarMod.F90 derivedTypeStationMod.F90 derivedTypeStationProgram.F90 classStationMod.F90 classStationProgram.F90

OBJS1 := definedConstantsMod.o calendarMod.o derivedTypeStationMod.o derivedTypeStationProgram.o
OBJS2 := definedConstantsMod.o calendarMod.o classStationMod.o classStationProgram.o

all: derivedTypeStationProgram.ex classStationProgram.ex

derivedTypeStationProgram.ex:  $(OBJS1)
	$(FC) $(FFLAGS) $^ -o $@ $(LDFLAGS)

classStationProgram.ex: $(OBJS2)
	$(FC) $(FFLAGS) $^ -o $@ $(LDFLAGS)

clean: 
	rm -f *.o *.mod *.ex

