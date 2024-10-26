$qqnt_dir = "$(scoop prefix qqnt)\Files"
$dir = "$env:scoop\apps\liteloaderqqnt\current"
if(-NOT (Test-Path "$dir\data")) {
    New-Item -ItemType Directory -Path "$dir\data"
}
if(-NOT (Test-Path "$dir\plugins")) {
    New-Item -ItemType Directory -Path "$dir\plugins"
}
$path = "$qqnt_dir\resources\app"
$text = "require(String.raw``$dir``)"
$text = $text -replace "\\","\\"
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
