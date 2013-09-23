Param(
	[Parameter(Mandatory=$True)][string]$HostName,
	[string]$LogFile = "errorLog.html"
)

Function LogError 
{
	Param ([Object]$message)
	Write-Output $message | ConvertTo-HTML | Add-Content $LogFile
}

$ping = New-Object System.Net.NetworkInformation.Ping

while($true) {
	$result = $ping.Send($HostName)	
	$resultMessage = $result | Select-Object Status, Address, RoundtripTime, @{Name="Date";Expression={$(Get-Date -Format o)}}
	if ($resultMessage.Status -ne 'success') { LogError($resultMessage) }
	Write-Output $resultMessage
	Start-Sleep -Seconds 1
}