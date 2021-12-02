Clear-Host
Get-Service | more
Get-Service | Get-Member
Get-Service | Select-Object Name,MachineName,Status
Get-Service | Select-Object Name,MachineName,Status | Get-Member
Get-Service | Where-Object Status -eq "Stopped" | Mores