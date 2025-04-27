# Define paths
$source = "C:\Users\cyberguard\Documents\Virtual Machines"
$destination = "E:\VMWARE SCCM PROJECT BACKUP"
$zipPath = "E:\VMWARE SCCM PROJECT BACKUP.zip"

# Ensure the destination folder exists
If (!(Test-Path -Path $destination)) {
    New-Item -ItemType Directory -Path $destination
}

# Copy the files
xcopy.exe /e /f "$source" "$destination"

# Compress the copied folder into a ZIP file
If (Test-Path -Path $destination) {
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [System.IO.Compression.ZipFile]::CreateFromDirectory($destination, $zipPath)
}

Write-Host "Backup and compression completed successfully!"
