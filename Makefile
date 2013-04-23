MPIDE=/opt/mpide
TOOLCHAIN_PREFIX=$(MPIDE)/hardware/pic32/compiler/pic32-tools
AVRTOOLS_PREFIX=/usr
SERIAL_PORT=/dev/ttyUSB0
CPUTYPE=32MX795F512L
PIC32_CORE=$(MPIDE)/hardware/pic32/cores/pic32
PIC32_VARIANT=$(MPIDE)/hardware/pic32/variants/Max32
LDSCRIPT=$(PIC32_CORE)/chipKIT-MAX32-application-32MX795F512L.ld

C_FILE=AnalogReadSerial.cpp

CFLAGS=-O0 -c -mno-smart-io -w -fno-exceptions -ffunction-sections -fdata-sections \
			 -g -mdebugger -Wcast-align -fno-short-double -mprocessor=$(CPUTYPE) \
			 -DF_CPU=80000000L -DARDUINO=23 -D_BOARD_MEGA_ -DMPIDEVER=0x01000202 \
			 -DMPIDE=23 -I$(PIC32_CORE) -I$(PIC32_VARIANT) -I.

LDFLAGS=-Os -Wl,--gc-sections -mdebugger -mprocessor=$(CPUTYPE)

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
	$(CXX) $(CFLAGS) $(C_FILE) -o build/$(C_FILE).o

build/core.a:
	$(CC) $(CFLAGS) $(PIC32_CORE)/crtn.S -o build/crtn.S.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/cpp-startup.S -o build/cpp-startup.S.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/crti.S -o build/crti.S.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/HardwareSerial_usb.c -o build/HardwareSerial_usb.c.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/wiring_analog.c -o build/wiring_analog.c.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/task_manager.c -o build/task_manager.c.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/wiring_digital.c -o build/wiring_digital.c.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/WInterrupts.c -o build/WInterrupts.c.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/wiring_pulse.c -o build/wiring_pulse.c.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/HardwareSerial_cdcacm.c -o \
		build/HardwareSerial_cdcacm.c.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/wiring.c -o build/wiring.c.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/exceptions.c -o build/exceptions.c.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/pins_arduino.c -o build/pins_arduino.c.o
	$(CC) $(CFLAGS) $(PIC32_CORE)/wiring_shift.c -o build/wiring_shift.c.o
	$(CXX) $(CFLAGS) $(PIC32_CORE)/HardwareSerial.cpp -o build/HardwareSerial.cpp.o
	$(CXX) $(CFLAGS) $(PIC32_CORE)/Print.cpp -o build/Print.cpp.o
	$(CXX) $(CFLAGS) $(PIC32_CORE)/Tone.cpp -o build/Tone.cpp.o
	$(CXX) $(CFLAGS) $(PIC32_CORE)/main.cpp -o build/main.cpp.o
	$(CXX) $(CFLAGS) $(PIC32_CORE)/WString.cpp -o build/WString.cpp.o
	$(CXX) $(CFLAGS) $(PIC32_CORE)/WMath.cpp -o build/WMath.cpp.o
	$(AR) rcs build/core.a build/crtn.S.o
	$(AR) rcs build/core.a build/cpp-startup.S.o
	$(AR) rcs build/core.a build/crti.S.o
	$(AR) rcs build/core.a build/HardwareSerial_usb.c.o
	$(AR) rcs build/core.a build/wiring_analog.c.o
	$(AR) rcs build/core.a build/task_manager.c.o
	$(AR) rcs build/core.a build/wiring_digital.c.o
	$(AR) rcs build/core.a build/WInterrupts.c.o
	$(AR) rcs build/core.a build/wiring_pulse.c.o
	$(AR) rcs build/core.a build/HardwareSerial_cdcacm.c.o
	$(AR) rcs build/core.a build/wiring.c.o
	$(AR) rcs build/core.a build/exceptions.c.o
	$(AR) rcs build/core.a build/pins_arduino.c.o
	$(AR) rcs build/core.a build/wiring_shift.c.o
	$(AR) rcs build/core.a build/HardwareSerial.cpp.o
	$(AR) rcs build/core.a build/Print.cpp.o
	$(AR) rcs build/core.a build/Tone.cpp.o
	$(AR) rcs build/core.a build/main.cpp.o
	$(AR) rcs build/core.a build/WString.cpp.o
	$(AR) rcs build/core.a build/WMath.cpp.o

link: build/$(C_FILE).o build/core.a 
	$(LD) $(LDFLAGS) -o build/$(C_FILE).elf build/$(C_FILE).o build/core.a \
		-L./build -lm -T $(LDSCRIPT)

hex: link
	$(OBJCPY) -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load \
		--no-change-warnings --change-section-lma .eeprom=0 build/$(C_FILE).elf \
		build/$(C_FILE).eep
	$(BIN2HEX) -a build/$(C_FILE).elf


clean:
	rm -rf build
