include src/img/Makefile

ifndef GBDK_HOME
	GBDK_HOME = /path/to/gbdk
endif

LCC = $(GBDK_HOME)/bin/lcc
CC = $(LCC) -Wa-l -Wl-m -Wl-j

ROM = travelbird
SRC = src/rom/$(ROM).c

all: all-img $(ROM).gb

$(ROM).o: $(SRC)
	$(CC) -c -o $@ $<

$(ROM).gb: $(ROM).o
	$(CC) -o $@ $<

clean:
	rm -f *.o *.lst *.map *.gb *.rel *.cdb *.ihx *.lnk *.sym *.asm *.noi
