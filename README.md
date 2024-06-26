# QR Code Generator Script

![script-](https://github.com/mdbentaleb/Dynamic_QR_Generator/assets/132714803/770bc745-bb70-4f21-afa4-fc6a0a1eff6a)

This is a Bash script that generates QR codes from a given URL using the qrencode command-line utility.


## Prerequisites

This script automatically installs `qrencode` if it's not already present on your system.
However, you will need administrative privileges to install packages.
If you're prompted for a password during script execution, please provide it to allow the installation to proceed.

## Usage

1. **Clone the repository:**

```bash
   git clone https://github.com/mdbentaleb/Dynamic_QR_Generator.git
```

2. **Make the script executable by running the following command:**

```bash
   chmod +x qrgen.sh
```

3. **Run the script with the following command:**

```bash
   ./qrgen.sh <URL>
```
Replace <URL> with the URL you want to encode into a QR code.

## Example

```bash
   ./qrgen.sh "https://example.com"
```

![example-](https://github.com/mdbentaleb/Dynamic_QR_Generator/assets/132714803/6b604b48-805e-47f3-8654-9314b44dd58b)

- This will generate a QR code image file named `qr_code.png` in the current directory, encoding the URL `https://example.com`

## Output

If the QR code generation is successful, the script will print a message indicating the name of the generated QR code file. If it fails, an error message will be displayed.

![output-](https://github.com/mdbentaleb/Dynamic_QR_Generator/assets/132714803/874a1f6b-e66e-4b6f-96ad-dc38ddb0789e)

## Note for Users

- The script uses `sudo` to execute certain commands.
If prompted for a password, it is expected behavior, and there is no need to be concerned.
This is a standard security measure to ensure proper system maintenance.

## Disclaimer

This script is designed for personal use. Review the code before executing on critical systems.

## Author

[mdbentaleb](https://github.com/mdbentaleb)
