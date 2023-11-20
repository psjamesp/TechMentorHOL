$PasswordProfile = @{
    Password = 'SupportEveryone!'
}

$users = Get-Content C:\Scripts\newusers.txt
#$users = "support_rob@textrequest.com"
Foreach ($u in $users) {

    $name = $u.split("@")
    $name = $name[0].Replace("_", " ")
    $TextInfo = (Get-Culture).TextInfo
    $FullName = $TextInfo.ToTitleCase($name)


    $NickName = $u.split("@")
    $NickName = $NickName.split("_")

    $email = $nickname[1] + '+' + $NickName[0]

    $userParam = @{
        DisplayName       = $FullName
        PasswordProfile   = $PasswordProfile 
        MailNickName      = $email
        UserPrincipalName = $u
        Mail = $email+"@Textrequest.com"
    }
    New-MgUser @userParam -AccountEnabled
}