$Source = 'C:\Temp\DEFiles'
$SiteBLocations = @(
    "\\Vruk-b-macSQL03\c$\Services\DiscountEngineService","\\Vruk-b-macSQL04\c$\Services\DiscountEngineService",
    "\\Vruk-b-macSQL02\c$\Services\DiscountEngineService","\\Vruk-b-macSQL01\c$\Services\DiscountEngineService",
    "\\Vruk-b-ILTSQL01\c$\Services\DiscountEngineService","\\Vruk-b-ILTSQL02\c$\Services\DiscountEngineService",
    "\\Vruk-b-ILTSQL03\c$\Services\DiscountEngineService","\\Vruk-b-ILTSQL04\c$\Services\DiscountEngineService"
    "\\Vruk-b-ILTSQL05\c$\Services\DiscountEngineService", "\\Vruk-b-ILTSQL06\c$\Services\DiscountEngineService",
    "\\Vruk-b-ILTSQL07\c$\Services\DiscountEngineService"
                    )
                
foreach ($dir in $SiteBLocations)
{
    Get-ChildItem -Path $Source -Recurse | 
    where-Object {$_.name -eq "DiscountEngineCommon.dll" -or $_.name -eq "DiscountEngineService.exe"} | 
    Copy-Item -Destination $dir
}
