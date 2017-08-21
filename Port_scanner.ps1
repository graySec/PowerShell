﻿﻿﻿﻿# PowerShell port scanner v 0.1.3
# written in PowerShell v. 5
# Rudimentary TCP port scanner
#
# clear screen
cls
# change title window name
$host.ui.RawUI.WindowTitle = "Power Port Scanner"
# port range listed in an array
# define range of ports to scan
# using ".." creates a range to read from
$ports = 19..1024
# store the time in a variable
$dateTime = Get-Date
Write-Host "Welcome to the Power Port Scanner"
$remoteIP = Read-Host "What is the IP of the remote host to scan: "
Write-Host "Starting scan of $remoteIP at $dateTime"
#create Scanner Function
# use foreach loop to scan each port in $ports
Function Scanner {
  foreach ($port in $ports)
  {
    try {
        $scan = New-Object System.net.sockets.TcpClient
        $scan.Connect($remoteIP, $port)
        Write-Host "Port $Port is up"
      }
      # send all errors to oblivion
    catch {
      $_ > null
      }
    }
    # clean up all resources used by the $scan object
    $scan.Dispose()
}
Scanner
Write-Host "Scan completed at $dateTime"
# create an exit to the script
Write-Host "Press any key to exit ..."
# silently exit running script
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
