##############
#Getting Help!
##############

Get-Help -Name Get-Process

Help -Name Get-Process

Get-Command Get-Help -CommandType All

Get-Command Help -CommandType All

Get-Help Get-Help

Get-Help Help

#######################
#Update the help files
#######################

Update-Help * -Force

Update-Help -UICulture en-US -Verbose

###########################
#Help with more Information
###########################

Get-Help -Name Get-Process -Full

Get-Help -Name Get-Process -Detailed

Get-Help -Name Get-Process -Examples

Get-Help -Name Get-Process -Online

Get-Help -Name Get-Process -ShowWindow

Get-Help -Name Get-Process -Parameter Computername

Get-Help -Name Get-Process -Parameter Name

Get-Help Get-Service

#Name parameter is not required
Get-Service

Get-Service -Name bits,winrm,winmgmt

#this also works
Get-Service bits,winrm,winmgmt

#what about this?
"bits","win*" | Get-Service

#############
#about topics
#############

Get-Help about_* | More

Get-Help about_Functions | More