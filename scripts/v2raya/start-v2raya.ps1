$options = @("--lite", "--log-disable-timestamp", "--log-file v2raya.log", "--config $(scoop prefix v2raya)\config")
Start-Process "$(scoop prefix v2raya)\v2rayaWin.exe" -ArgumentList $options -WorkingDirectory "$(scoop prefix v2raya)\log" -WindowStyle Hidden
