$qqnt_dir = "path/to/qqnt\Files"
$llqqnt_dir = "path/to/llqqnt"
$path = "$qqnt_dir\resources\app"

$text = "require(String.raw``$llqqnt_dir``)"
$text = $text.replace("\\","/")

if((Test-Path $qqnt_dir\versions)) {
    $qq_version = Get-ChildItem -Path "$qqnt_dir\versions" -Name -Directory
    $path = "$qqnt_dir\versions\$qq_version\resources\app"
}

Out-File -FilePath "$path\app_launcher\liteLoader.js" -InputObject $text -Encoding utf8 -Force

$package = Get-Content -Path $path\package.json | ConvertFrom-Json
$package.main = "./app_launcher/liteloader.js"
$package = $package | ConvertTo-Json
$package = $package -replace "`r`n","`n"
$package.TrimEnd("`r","`n") | Set-Content -Path $path\package.json -NoNewlin
