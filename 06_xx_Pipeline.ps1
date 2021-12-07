Get-Command -Module Az.Storage | more

Get-Command -Module Az.Storage, Az.Aks

Get-Process | Where-Object {$_.ProcessName -eq "winlogon"}

Get-Process winlogon

Get-Process winlogon | Get-Member

Get-Process winlogon | Format-List -Property *

Get-Process winlogon | Get-Member -Name C*

Get-Process winlogon | Select-Object -Property Id, Name, BasePriority 


########
#Sorting
########

Get-Process | Sort-Object -Property ProcessName -Descending

#If we want to sort by LastWriteTime and then by Name, we can do it by typing:
Get-ChildItem | 
Sort-Object -Property LastWriteTime, Name

#You can also sort the objects in reverse order by specifying the Descending switch parameter.
Get-ChildItem | 
Sort-Object -Property LastWriteTime, Name -Descending

#The following example sorts objects in descending order by the time span between CreationTime and LastWriteTime.
Get-ChildItem |
  Sort-Object -Property @{ Expression = { $_.LastWriteTime - $_.CreationTime }; Descending = $false }

###############
#Filtering left
###############

#In a pipeline statement, filtering left means filtering for the results you want as early as possible. 
#You can think of the term left as early, because PowerShell statements run from left to right. 
#The idea is to make the statement fast and efficient by ensuring that the dataset you operate on is as small as possible.


#This statement doesn't follow the filtering left principle, because it operates 
#on all the processes, attempts to format the response, and then filters at the end.
Get-Process | Select-Object Name | Where-Object Name -eq winlogon

#It's better to filter first and then format, as in the following statement.
Get-Process | Where-Object Name -eq winlogon | Select-Object Name

#In this version, the parameter -Name does the filtering for you.
Get-Process -Name winlogon | Select-Object Name

#################
#Formatting right
#################

#Whereas filtering left means to filter something as early as possible in a statement, 
#formatting right means to format something as late as possible in the statement. 
#Ok, but why do I need to format late? The answer is because format commands alters the 
#object to a format object.

#The formatting destroys the object you are dealing with.
Get-Process winlogon | Select-Object Name,Id | Get-Member

#Now, we add a formatter like Format-Table
Get-Process winlogon | Format-Table Name,Id | Get-Member

#Let's use formatting first and then Select-Object, to illustrate what might happen if you don't format last:
Get-Process winlogon | Format-Table Name,Id | Select-Object Name,Id

#Much better
Get-Process winlogon | Select-Object Name,Id | Format-Table Name,Id

#Out-Griedview does not work with formatted data
Get-Process | Format-List | Out-GridView

#Send all properties to out-griedview
Get-Process | Select-Object * | Out-GridView