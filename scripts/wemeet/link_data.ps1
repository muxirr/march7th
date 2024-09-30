if(-NOT (Test-Path "$env:APPDATA\\Tencent\\WeMeet")) {
    cmd /c mklink /D "$env:APPDATA\\Tencent\\WeMeet" "$env:scoop\\persist\\wemeet\\data\\WeMeet"
}
