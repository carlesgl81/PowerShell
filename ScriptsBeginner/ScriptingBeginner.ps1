# 1. Write-Host will write an OutPut in your screen.
# Write-Host 'Hello Guys'

# 2.Concatenation
#$Box = 'Perro'
#'My wonderful ' + $Box + ' is red.'

# 3. Read Host and Get-ChildItem. Reads a folder you specify and show all objects inside.
#[String]$Path = Read-Host -Prompt 'What folder do you want to search?'
#Get-ChildItem -Path $Path -Recurse

# 4. Arythmic Operators +, - , x , / , % (reminder 9%4=1)
#[int]$number1=2
#[int]$number2=6
#$number2 / $number1

#[string]$Animal = 'dog'
#[string]$TypeofAnimal = 'my'
#$TypeofAnimal + ' ' + $Animal 

#exercice1 - Display 3 Times PowerShell in the screen.

#Write-Host PowerShell
#Write-Host PowerShell
#Write-Host PowerShell

#exercice2 - Let PowerShell ask for your name in a prompt and display a welcome <your name>

#[String]$name = Read-Host -Prompt 'What is your name?'
#'Welcome' + ' ' + $name

# 5. 
#If you do this, the variable gets the properties and methods from the object.
#$spooler = Get-Service -Name 'spooler'
#$spooler.Status

#6. IF Statement
#$name = 'Valeria'
#If($name -eq 'Valeria')
#{
#    'Beautiful Name!'
#}
#'And you too'

#7. If/Elself/Else Statement
#$name = 'Lula'
#If($name -eq 'Valeria')
#{
#    'Beautiful Name!'
#}
#elseif ($Name -eq 'Jon')
#{
#'all right nice name too'    
#}
#elseif ($Name -eq 'Lulo')
#{
#'like the fruit!'    
#}
#else {
#    'We don´t really like other names '
#}
#'And you too'

#8. If a user is disabled, enable it and viceversa.
#$UserName = Read-Host 'What user do you want to enable/diable?'
#$User = Get-LocalUser -Name $UserName
#If($User.enabled -eq $true)
#{
#    Disable-LocalUser -InputObject $User
#}
#elseif ($User.Enabled -eq $false) 
#{
#    Enable-LocalUser -Name $User
#}
#$User.Name + ' is ' + $User.Name


#9. Nested If Statements
#$UserName = Read-Host 'What user do you want to enable/diable?'
#$User = Get-LocalUser -Name $UserName
#If($User.enabled -eq $true)
#{
#    $Sure = Read-Host -Prompt 'Are you sure to disable? Use y or n '
#    If($sure -eq 'y')
#    {    
#    Disable-LocalUser --Name $User
#    }
#    Elseif($sure -eq 'n')
#    {
#        'ok i will not disable'
#    }
#}
#elseif ($User.Enabled -eq $false) 
#{
#    $Sure = Read-Host -Prompt 'Are you sure to enable? Use y or n '
#    If($sure -eq 'y')
#    {    
#        Enable-LocalUser -Name $User
#    }
#    Elseif($sure -eq 'n')
#    {
#        'ok I will not enable'
#    }
#    Enable-LocalUser -Name $User
#}
#$User.Name + ' is ' + $User.Name

#10.Exercise 1
#Make a script that checks the status of a service provided by the user.
#If the service is running, stop it, if it is stopped, start it.

#$ServName = Read-Host 'What Service do you want to start/stop?'
#$Serv = Get-Service -Name $ServName
#If($Serv.Status -eq 'running')
#{
#    'The Service ' + $ServName + ' is running'
#    'Stopping the ' + $ServName + ' Service...'    
#    Stop-Service -Name $ServName
#    
#}
#elseif ($Serv.Status -eq 'Stopped') 
# 
#{
#    'The Service ' + $ServName + ' is stopped'
#    'Starting the ' + $ServName + ' Service...'    
#    Start-Service -Name $ServName
#}
#Start-Sleep -s 15
#$NewStatus = Get-Service -Name $ServName
#'The status of the ' + $ServName + ' service is ' + $NewStatus.Status


#11. Same as 10 but with confirmations (nested if statement)
#$ServName = Read-Host 'What Service do you want to start/stop?'
#$Serv = Get-Service -Name $ServName
#If($Serv.Status -eq 'running')
#{
#    'The Service ' + $ServName + ' is running'
#    $Confirm = Read-Host 'Are you really sure to stop the service? Press Y for yes or N for No'
#    If($Confirm -eq 'Y')
#    {
#    'Stopping the ' + $ServName + ' Service...'    
#    Stop-Service -Name $ServName
#    }
#    Elseif($confirm -eq 'N')
#        {
#        'Ok, we will not stop the service.'
#        }
#}
#elseif ($Serv.Status -eq 'Stopped') 
# 
#{
#    'The Service ' + $ServName + ' is stopped'
#    $Confirm = Read-Host 'Are you really sure to start the service? Press Y for yes or N for No'
#        If($Confirm -eq 'Y')
#        {   
#            'Starting the ' + $ServName + ' Service...'
#            Start-Service -Name $ServName
#        }
#    Elseif($confirm -eq 'N')
#        {
#        'Ok, we will not start the service.'
#        }
#}
#Start-Sleep -s 15
#$NewStatus = Get-Service -Name $ServName
#'The status of the ' + $ServName + ' service is ' + $NewStatus.Status

#12. While Loop
#$Name = 'David'
#While(($Name -eq 'David') -or ($Name -eq 'Roger'))
#{
#    'Your Name is ' + $Name
#
#    Sleep 1
#}
#'Your name is not David or Roger!'

#13. Exercise
#$Day = Get-Date
#While($Day.DayOfWeek -ne 'Monday')
#{
#    'Today is not Monday . It is ' + $Day.DayOfWeek
#
#    Sleep 1
#    $NewDate = Get-Date
#}
#'It is Monday!!'

#14 Foreach
#$LocalUser = Get-LocalUser
#Foreach($LocalUser in $LocalUser)
#{
#    $LocalUser.Name + ' You are the best '
#}

#15. Foreach + IF
#Is the user is disabled, do not name it.

#$LocalUsers = Get-LocalUser
#Foreach($LocalUser in $LocalUsers)
#{
#   If($LocalUser.Enabled -eq $false)
#    {
#    $LocalUser.Name + ' is disabled.'
#    Enable-LocalUser -InputObject $LocalUser
#    }
#    
#}

#16. Exercise - Put all the services in an Array. Display all the services with The X Service is a great service!
#$Services = Get-Service
#Foreach($Services in $Services)
#    {
#        'The ' + $Services.name + ' is great!'
#    }

#17. Exercise - Same as 16 but if you find Spooler Service, write Wow! I found the Spooler Service!

#$Services = Get-Service
#$spooler = Get-Service -DisplayName 'Print Spooler'
#Foreach($Services in $Services)
#    {
#      If($Services.DisplayName -eq 'Print Spooler')
#      {
#        'Wow! We found the ' + $Spooler.DisplayName
#        }
#    else {
#        'The ' + $Services.DisplayName + ' is great!'
#   }
#   
#   }

#18.Foreach Statement to import AD Users using Import-CSV

#$ImportUsers: Import-CSV -Path C:\imports\importusers.csv
#
#Foreach($ImportUser in $ImportUsers)
#{
#    $Password = ConvertTo-SecureString -String $ImportUser.Password -AsPlainText -Force
#
#    New-ADUser -Name $ImportUser.Name -AccountPassword $Password -Enabled $true -SAMAccountName $ImportUser.LoginName
#
#}

#19.Remote PShell
