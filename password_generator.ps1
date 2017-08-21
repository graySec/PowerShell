# simple random password generator

Write-Host "Generating a new random password for you"

$password = [System.Web.Security.Membership]::GeneratePassword(16,4)

Write-Host "Your new password is $password"