Clear-Host

#verbs
Get-Verb
Get-Command -verb Get
Get-Command -verb Stop

#nouns
Get-Command -noun time*
Get-Command -noun *time*
Get-Command -noun *process*

#combine
Get-Command -noun *share* -verb Re*

Get-Command

#notice all the different types of commands
Get-Command *service*

#I'll refine the command
Get-Command *service
