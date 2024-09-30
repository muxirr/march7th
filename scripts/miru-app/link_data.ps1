if(-NOT (Test-Path "$env:HOMEDRIVE$env:HOMEPATH\\Documents\\miru\")) {
    cmd /c mklink /D "$env:HOMEDRIVE$env:HOMEPATH\\Documents\\miru" "$env:scoop\\persist\\miru-app\\miru"
}
