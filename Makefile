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