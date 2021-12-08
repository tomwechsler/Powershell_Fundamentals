#Range operator
1..500

#Create 500 training (test) accounts
1..500 | ForEach-Object {New-ADUser -Name "User$_" -AccountPassword (ConvertTo-SecureString -AsPlainText "DemoPass1!" -Force) -Enabled:$TRUE}


#New-Aduser (Default cmdlet for creating a user)
#ConvertTo-SecureString (plain text is translated to a SecureString format)