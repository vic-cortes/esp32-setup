# ESP32 Setup Tool

A Python-based utility for managing and programming ESP32 microcontrollers using esptool.

## Requirements

- Python 3.11 or higher
- uv package manager
- ESP32 development board

## Installation

1. Make sure you have Python 3.11 installed:
   ```bash
   python --version
   ```

2. Install uv package manager if you haven't already:
   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

3. Clone this repository:
   ```bash
   git clone https://github.com/5tech/esp32-setup.git
   cd esp32-setup
   ```

4. Install dependencies using uv:
   ```bash
   uv pip install .
   ```

## Usage

This tool provides a command-line interface for common ESP32 tasks such as:
- Flashing firmware
- Reading/writing flash memory
- Managing ESP32 configurations

For detailed usage instructions, please refer to the documentation.

## Version

Current version: 0.1.0

## License

This project is under development. License details will be added soon.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.