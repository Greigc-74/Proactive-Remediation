
$regPath = "HKLM:SOFTWARE\Policies\Microsoft\OneDrive"
$regName = "SyncAdminReports"
$regType = "String"
$regValue = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL2lkZW50aXR5L2NsYWltcy90ZW5hbnRpZCI6IjM2ZmQ1OGQ0LWVmYjMtNDJlYy04YzQ3LTZiNTk4NTRlZGRhZSIsImFwcGlkIjoiM2NmNmRmOTItMjc0NS00ZjZmLWJiY2YtMTliNTliY2RiNjJhIiwiaXNzIjoiSXNzdWVyIiwiYXVkIjoiQXVkaWVuY2UifQ.pSY_fZpkGD072qiAR9OtLhrNd9vaJeP6qH1kB6BHi1o"
 
try {
    Set-ItemProperty -Path $regPath -Name $regName -Type $regType -Value $regValue -Force -ErrorAction Stop
}
catch {
    Write-Output "Failed to change the $regName to $regValue"
}
