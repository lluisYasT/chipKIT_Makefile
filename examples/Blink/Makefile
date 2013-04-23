MPIDE=/opt/mpide
TOOLCHAIN_PREFIX=$(MPIDE)/hardware/pic32/compiler/pic32-tools
AVRTOOLS_PREFIX=/usr
SERIAL_PORT=/dev/ttyUSB0
CPUTYPE=32MX795F512L
PIC32_CORE=$(MPIDE)/hardware/pic32/cores/pic32
PIC32_VARIANT=$(MPIDE)/hardware/pic32/variants/Max32
LDSCRIPT=$(PIC32_CORE)/chipKIT-MAX32-application-32MX795F512L.ld

C_FILE=Blink.cpp

CFLAGS=-O0 -mno-smart-io -w -fno-exceptions -ffunction-sections -fdata-sections \
			 -g -mdebugger -Wcast-align -fno-short-double -mprocessor=$(CPUTYPE) \
			 -DF_CPU=80000000L -DARDUINO=23 -D_BOARD_MEGA_ -DMPIDEVER=0x01000202 \
			 -DMPIDE=23 -I$(PIC32_CORE) -I$(PIC32_VARIANT) -I.

LDFLAGS=-Os -Wl,--gc-sections,-Map,output.map -mdebugger -mprocessor=$(CPUTYPE)

CC=$(TOOLCHAIN_PREFIX)/bin/pic32-gcc
CXX=$(TOOLCHAIN_PREFIX)/bin/pic32-g++
LD=$(CXX)
OBJCPY=$(TOOLCHAIN_PREFIX)/bin/pic32-objcopy
BIN2HEX=$(TOOLCHAIN_PREFIX)/bin/pic32-bin2hex
AR=$(TOOLCHAIN_PREFIX)/bin/pic32-ar

AVRDUDE=$(AVRTOOLS_PREFIX)/bin/avrdude
AVRDUDECONF=$(MPIDE)/hardware/tools/avrdude.conf
AVRDUDEFLAGS=-C$(AVRDUDECONF) -c stk500v2 -p pic32 -P $(SERIAL_PORT) -b 115200 -v -U

burn: hex
	$(AVRDUDE) $(AVRDUDEFLAGS) flash:w:build/$(C_FILE).hex:i

build/$(C_FILE).o: $(C_FILE)
	mkdir -p build
	$(CXX) $(CFLAGS) -c $(C_FILE) -o build/$(C_FILE).o

build/core.a:
	mkdir -p build/core
	cp $(PIC32_CORE)/{*.c,*.cpp,*.h} build/core
	cd build/core && $(CC) $(CFLAGS) -c *.c
	cd build/core && $(CXX) $(CFLAGS) -c *.cpp
	cd build/core && $(AR) rcs ../core.a *.o

link: build/$(C_FILE).o build/core.a 
	$(LD) $(LDFLAGS) -o build/$(C_FILE).elf build/$(C_FILE).o build/core.a \
		-L./build -lm -T $(LDSCRIPT)

hex: link
	$(OBJCPY) -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load \
		--no-change-warnings --change-section-lma .eeprom=0 build/$(C_FILE).elf \
		build/$(C_FILE).eep
	$(BIN2HEX) -a build/$(C_FILE).elf

precompile: $(C_FILE)
	$(CXX) $(CFLAGS) -E $(C_FILE) -o $(C_FILE).i

compile: $(C_FILE)
	$(CXX) $(CFLAGS) -S $(C_FILE) -o $(C_FILE).asm

clean:
	rm -rf build
