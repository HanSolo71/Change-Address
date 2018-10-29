#Sets address
$Address = "123 Test Ave"
#Set Users to Modify
$UsersToModify = Get-ADUser -Filter * -SearchBase "OU=Sub Department, OU=Department ,OU=Users,DC=Contoso,DC=COM" | Select SamAccountName -ExpandProperty SamAccountName

#For Loop to Modify Each User

foreach ($UserToModify in $UsersToModify) {
set-aduser -identity $UserToModify -StreetAddress $Address
}
