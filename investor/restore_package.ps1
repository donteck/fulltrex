$folder = $PSScriptRoot
$output = Join-Path $folder "FULLTREX_Investor_Design_Package.zip"
$parts = @(Get-ChildItem -Path $folder -Filter "FULLTREX_Investor_Design_Package.zip.part*" | Sort-Object Name)
if ($parts.Count -ne 9) { throw "Expected 9 archive parts. Download the whole repository first." }
$stream = [System.IO.File]::Create($output)
try { foreach ($part in $parts) { $bytes = [System.IO.File]::ReadAllBytes($part.FullName); $stream.Write($bytes, 0, $bytes.Length) } } finally { $stream.Dispose() }
if ((Get-FileHash $output -Algorithm SHA256).Hash.ToLower() -ne "4b899778d1dc37845995ba8695f51f276b9f4a4bcc980c4bc59ef0cc3aea331b") { Remove-Item $output; throw "Archive checksum failed." }
Write-Output "Verified archive ready: $output"
