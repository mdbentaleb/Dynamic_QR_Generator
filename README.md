# QR Code Generator Script

![script](https://github.com/mdbentaleb/Dynamic_QR_Generator/assets/132714803/6910fdbb-d89d-4edc-920c-316aa53705ea)

This is a Bash script that generates QR codes from a given URL using the qrencode command-line utility.


## Prerequisites

This script automatically installs `qrencode` if it's not already present on your system.
However, you will need administrative privileges to install packages.
If you're prompted for a password during script execution, please provide it to allow the installation to proceed.

## Usage

1. **Clone the repository:**

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
- This will generate a QR code image file named `qr_code.png` in the current directory, encoding the URL `https://example.com`

## Output

If the QR code generation is successful, the script will print a message indicating the name of the generated QR code file. If it fails, an error message will be displayed.

## Note for Users

- The script uses `sudo` to execute certain commands.
If prompted for a password, it is expected behavior, and there is no need to be concerned.
This is a standard security measure to ensure proper system maintenance.

## Disclaimer

This script is designed for personal use. Review the code before executing on critical systems.

## Author [mdbentaleb](https://github.com/mdbentaleb)
