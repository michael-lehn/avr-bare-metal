# Diese Version verarbeitet nur Assemblerprogramme (*.s)
# Später wird ein erweitertes Makefile auch C unterstützen.

SOURCES := $(wildcard *.s)
OBJECTS := $(SOURCES:.s=.o)
ELFS    := $(OBJECTS:.o=.elf)
HEXS    := $(ELFS:.elf=.hex)

all: $(HEXS)

%.o: %.s
	avr-as -o $@ $<

%.elf: %.o
	avr-ld -mavr5 -o $@ $<

%.hex: %.elf
	avr-objcopy -O ihex -R .eeprom $< $@

clean:
	$(RM) $(OBJECTS) $(ELFS) $(HEXS)

ifeq ($(MAKECMDGOALS),upload)
ifeq ($(shell uname), Linux)
PORT := $(shell ls /dev/ttyUSB* 2>/dev/null | head -n 1)
else
PORT := $(shell ls /dev/cu.usb* 2>/dev/null | head -n 1)
endif # uname
endif # MAKECMDGOALS == upload

upload: $(HEX)
	@if [ -z "$(HEX)" ]; then \
	    echo "Usage: make upload HEX=<filename.hex>"; \
	    false; \
	fi
	@if [ -z "$(PORT)" ]; then \
	    echo "no USB device found"; \
	    false; \
	fi
	avrdude -c arduino -P $(PORT) -p atmega328p -U flash:w:$(HEX):i

