# VMWARE SCCM Backup Script

This repository contains a PowerShell script to back up the "Virtual Machines" folder and compress the backup into a ZIP file. It also includes instructions to set up a one-time scheduled task to execute the script.

## Files
- `BackupVM.ps1`: PowerShell script for backup and compression.
- `README.md`: Documentation for the repository.

## Usage

### Prerequisites
1. Ensure PowerShell is available on your system.
2. Adjust the paths in `BackupVM.ps1` to match your folder structure.

### Backup and Compression
1. Save the `BackupVM.ps1` script to your desired location.
2. Open PowerShell as Administrator and run:
   ```powershell
   .\BackupVM.ps1
