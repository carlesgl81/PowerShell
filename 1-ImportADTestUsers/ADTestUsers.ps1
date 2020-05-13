#Foreach Statement to import AD Users using Import-CSV
$ImportUsers: Import-CSV -Path ADUsers.csv

Foreach($ImportUser in $ImportUsers)
{
    $Password = ConvertTo-SecureString -String $ImportUser.Password -AsPlainText -Force 

    New-ADUser -Name $ImportUser.Name -AccountPassword $Password -Enabled $true -SAMAccountName $ImportUser.LoginName

}
