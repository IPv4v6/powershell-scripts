$DOMAIN = "victim-corp.test"
$SAFEMODEPASS = "Secret12345"

$ADDSFORESTARGS = @{
DomainName = $DOMAIN
SafeModeAdministratorPassword = ConvertTo-SecureString -AsPlainText $SAFEMODEPASS -Force
Force = $true
}

Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Import-Module ADDSDeployment
Install-ADDSForest @ADDSFORESTARGS
