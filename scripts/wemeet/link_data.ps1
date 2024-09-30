if(-NOT (Test-Path "$env:APPDATA\\Tencent\\WeMeet")) {
    Remove-Item "$env:APPDATA\\Tencent\\WeMeet" -Recurse -Force
}
cmd /c mklink /D "$env:APPDATA\\Tencent\\WeMeet" "$env:scoop\\persist\\wemeet\\data\\WeMeet"
