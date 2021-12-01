Clear-Host

Get-Command -CommandType Cmdlet
Get-Command -CommandType Function

#aliases
Get-Command -CommandType Alias

#empty aliases point to commands that haven't been loaded
#into the current PowerShell session

#can you find a command that works with aliases?
#you could try broadly
Get-Command *alias*
#or be a bit more narrower
Get-Command -noun *alias*

#try it
Get-Alias
#these are all the active aliases in this PowerShell session
#try it
ps
Get-Process
ps win*

#here's something fun
gcm gcm

gcm -noun computer
