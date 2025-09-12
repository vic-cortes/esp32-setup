import time

from machine import Pin

# El LED en el ESP32-C3 Super Mini suele estar conectado al GPIO 8
led = Pin(8, Pin.OUT)

print("Iniciando parpadeo del LED...")

while True:
    led.value(1)  # Encender el LED
    time.sleep(0.5)  # Esperar medio segundo
    led.value(0)  # Apagar el LED
    time.sleep(0.5)  # Esperar medio segundo
