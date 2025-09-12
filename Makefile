.PHONY: list_ports erase_flash port write_flash

list_ports:
	@echo "Available serial ports:"
	ls /dev/tty.*

erase_flash: port
	@echo "Erasing flash..."
	esptool --port $(port) erase-flash

write_flash: port
	@echo "Flashing device..."
	esptool --chip esp32 --port $(port) --baud 460800 write-flash -z 0x1000 firmware.bin

# Download version from
# https://micropython.org/download/ESP32_GENERIC_C3/
# and place it in the micropython directory

PATH_TO_MICROPYTHON ?= ./micropython
DEFAULT_MICROPYTHON_VERSION ?= ESP32_GENERIC_C3-20250911-v1.26.1.bin
FULL_PATH_TO_MICROPYTHON ?= ${PATH_TO_MICROPYTHON}/${DEFAULT_MICROPYTHON_VERSION}

install_micropython: port
	@echo "Installing MicroPython firmware..."
	esptool.py --port ${port} --baud 460800 write-flash 0 ${FULL_PATH_TO_MICROPYTHON}