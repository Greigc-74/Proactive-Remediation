$regPath = "HKLM:SOFTWARE\Policies\Microsoft\OneDrive"
$regName = "SyncAdminReports"
$regValue = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL2lkZW50aXR5L2NsYWltcy90ZW5hbnRpZCI6IjM2ZmQ1OGQ0LWVmYjMtNDJlYy04YzQ3LTZiNTk4NTRlZGRhZSIsImFwcGlkIjoiM2NmNmRmOTItMjc0NS00ZjZmLWJiY2YtMTliNTliY2RiNjJhIiwiaXNzIjoiSXNzdWVyIiwiYXVkIjoiQXVkaWVuY2UifQ.pSY_fZpkGD072qiAR9OtLhrNd9vaJeP6qH1kB6BHi1o"
 
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



