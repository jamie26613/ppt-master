$ErrorActionPreference = 'Stop'

$base64Path = Join-Path $PSScriptRoot 'cloud-env-test_20260827_165328.pptx.b64.txt'
$outputPath = Join-Path $PSScriptRoot 'cloud-env-test_20260827_165328.pptx'

$base64 = [System.IO.File]::ReadAllText($base64Path)
$bytes = [System.Convert]::FromBase64String($base64)
[System.IO.File]::WriteAllBytes($outputPath, $bytes)

Write-Output "Restored: $outputPath"
