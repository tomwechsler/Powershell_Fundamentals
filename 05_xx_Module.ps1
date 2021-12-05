#Get installed modules and available modules
Get-Module -ListAvailable

#Get all exported files
Get-Module -ListAvailable -All

#Get properties of a module
Get-Module | Get-Member -MemberType Property | Format-Table Name

#Get all installed modules
Get-InstalledModule

#Find a module by name:
Find-Module -Name PowerShellGet

#Find modules with similar names
Find-Module -Name PowerShell*

#Find a module by minimum version:
Find-Module -Name PowerShellGet -MinimumVersion 2.2.5


#Find a module in a specific repository:
Find-Module -Name PowerShellGet -Repository PSGallery

#Install a module
Install-Module -Name Az -Verbose -Force
