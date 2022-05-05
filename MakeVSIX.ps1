$Files = (Get-ChildItem | Where-Object {$_.Name -notlike "MakeVSIX.ps1"} | Where-Object {$_ -NotLike "*.vsix"} ).Name
$FileName = "zz_BG-" + (Get-Date -Format "yy-MM-dd-HHmm") + ".vsix"

Write-Host $Files
Write-Host $FileName
Compress-Archive -Path $Files -DestinationPath $FileName
