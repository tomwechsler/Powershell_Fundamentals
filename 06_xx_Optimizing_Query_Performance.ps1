Set-Location C:\
Clear-Host

#How many AD object are there?
Get-ADUser -Filter * | Measure-Object

#A first search
Get-ADUser -Filter * -Properties * | Where-Object {$PSItem.city -eq "Luzern"} | 
Select-Object name,department,title

#How long does this search take? We focus on the TotalSeconds
Measure-Command {Get-ADUser -Filter * -Properties * | 
Where-Object {$PSItem.city -eq "Luzern"} | Select-Object name,department,title}

#So we get the seconds right away
(Measure-Command {Get-ADUser -Filter * -Properties * | Where-Object {$PSItem.city -eq "Luzern"} | 
Select-Object name,department,title}).TotalSeconds

#Now we adjust our search and measure the time again
Get-ADUser -Filter {city -eq "Luzern"} -Properties * | Select-Object name,department,title
(Measure-Command {Get-ADUser -Filter {city -eq "Luzern"} -Properties * | 
Select-Object name,department,title}).TotalSeconds

#And again an adjustment of the search and measure again
Get-ADUser -Filter {city -eq "Luzern"} -Properties name, department, title | Select-Object name, department, title
(Measure-Command {Get-ADUser -Filter {city -eq "Luzern"} -Properties name, department, title | 
Select-Object name, department, title}).TotalSeconds

#The more precise you create your search, the faster you will get the result. - What would be with an AD with 50'000 objects?