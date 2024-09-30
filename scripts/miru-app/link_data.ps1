if((Test-Path "$env:HOMEDRIVE$env:HOMEPATH\\Documents\\miru\")) {
    Remove-Item "$env:HOMEDRIVE$env:HOMEPATH\\Documents\\miru\" -Recurse -Force
}
cmd /c mklink /D "$env:HOMEDRIVE$env:HOMEPATH\\Documents\\miru" "$env:scoop\\persist\\miru-app\\miru"
