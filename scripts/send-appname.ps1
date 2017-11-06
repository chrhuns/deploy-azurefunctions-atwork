

Param (
    [string]$appname
)


$Url = "https://atworkintegration-test-hunstad.azurewebsites.net/api/GetAppName?code=lOBa1ZL/tEivIkGSEeUwdRp6uscnS8LaZ9/xTaa3u1PjiDrCqQ8z7A=="

$Body = @{
  appname = $appname
} | ConvertTo-Json

Invoke-RestMethod -Method Post -Uri $Url -Body $Body -ContentType "application/json"
