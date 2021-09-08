
$regPath = "HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration"
$regName = "OfficeMgmtCOM"
$regType = "String"
$regValue = "FALSE"
 
try {
    Set-ItemProperty -Path $regPath -Name $regName -Type $regType -Value $regValue -Force -ErrorAction Stop
}
catch {
    Write-Output "Failed to change the $regName to $regValue"
}
