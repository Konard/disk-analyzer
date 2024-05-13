# disk-analyzer
A simple Bash script utility that helps users list all attached disks on their system and identify the largest files on each disk.


# DiskAnalyzer

DiskAnalyzer is a simple Bash script utility that helps users list all attached disks on their system and identify the largest files on each disk. This tool can be especially useful for system administrators and users who need to monitor disk usage and manage storage efficiently.

## Features

- **List All Disks:** Quickly identifies and lists all mounted disks on the system.
- **Find Largest Files:** For each disk, it locates and lists the top largest files to help in auditing and cleaning up disk space.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

To run DiskAnalyzer, you will need a Unix-like operating system with Bash installed. The tool uses common utilities (`df`, `grep`, `awk`, `find`, `du`, `sort`, and `head`) that are typically available by default.

### Installation

1. Clone the repository to your local machine:

```bash
git clone https://github.com/YourUsername/DiskAnalyzer.git
```

2. Navigate to the cloned directory:

```bash
cd DiskAnalyzer
```

3. Make the script executable:

```bash
chmod +x disk-analyzer.sh
```

### Usage

To run DiskAnalyzer, simply execute the script:

```bash
./disk-analyzer.sh
```

For systems with restricted permissions, you may need to run the script with `sudo`:

```bash
sudo ./disk-analyzer.sh
```

The script will list all detected disks and then proceed to show the largest files on each disk.

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the Unlicense. See `LICENSE` for more information.

## Disclaimer

This tool performs read-only operations to list disks and files but beware when running scripts with `sudo` and ensure you understand the script's functionality. Performance may vary based on the size and the number of files on your disks.

## Support

For support, please open an issue in the GitHub repository.

## Acknowledgments

- This tool uses various Unix/Linux utilities and relies on the versatility of Bash scripting.

Thank you for considering DiskAnalyzer for your disk management and space recovery efforts!
