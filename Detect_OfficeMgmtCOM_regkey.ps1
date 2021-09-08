$regPath = "HKLM:SOFTWARE\Microsoft\Office\ClickToRun\Configuration"
$regName = "OfficeMgmtCOM"
$regValue = "FALSE"
 
Try {
    $Registry = Get-ItemProperty -Path $regPath -Name $regName -ErrorAction Stop | Select-Object -ExpandProperty $regName
    If ($Registry -eq $regValue) {
        Write-Output "Compliant"
        Exit 0
    }
    else {
		Write-Warning "Not Compliant"
    Exit 1
	}
} 
Catch {
    Write-Output "Not Compliant.  $regName does not exist"
    Exit 1
}



