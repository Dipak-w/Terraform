# PowerShell script to install AWS CLI v2 on Windows
$installerUrl = "https://awscli.amazonaws.com/AWSCLIV2.msi"
$installerPath = "$env:TEMP\\AWSCLIV2.msi"

# Download the installer
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Install AWS CLI
Start-Process msiexec.exe -Wait -ArgumentList "/i `"$installerPath`" /qn"

# Remove installer
Remove-Item $installerPath

# Verify installation
aws --version