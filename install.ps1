$installerPath = 'C:\Users\eyou\Downloads\CloudSignagePlayerSetup.exe'

if (Test-Path $installerPath) {
    Write-Output "Installing Cloud Signage Player silently..."

    # Start the installer process with silent parameters
    $process = Start-Process -FilePath $installerPath -ArgumentList "/S" -Wait -PassThru
    
    # Check the exit code of the installer process
    if ($process.ExitCode -eq 0) {
        Write-Output "Installation complete."
    } else {
        Write-Output "Installation failed with exit code $($process.ExitCode)."
    }
} else {
    Write-Output "Installer not found at $installerPath"
}
