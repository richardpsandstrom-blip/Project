@echo off
setlocal DisableDelayedExpansion
title Quiz Bowl Desktop
powershell.exe -NoLogo -NoProfile -Command "$ErrorActionPreference='Stop'; try { $dest=Join-Path $env:LOCALAPPDATA 'QuizBowlDesktop'; if (!(Test-Path -LiteralPath (Join-Path $dest 'quizbowl.html'))) { throw 'Run Install.cmd from the extracted download first.' }; $edge=@(${env:ProgramFiles(x86)},$env:ProgramFiles,$env:LOCALAPPDATA) | Where-Object { $_ } | ForEach-Object { Join-Path $_ 'Microsoft\Edge\Application\msedge.exe' } | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1; if (!$edge) { throw 'Microsoft Edge was not found.' }; $q=[char]34; $uri=([System.Uri](Join-Path $dest 'quizbowl.html')).AbsoluteUri; $qbArgs='--user-data-dir='+$q+(Join-Path $dest 'Profile')+$q+' --no-first-run --app='+$q+$uri+$q; Start-Process -FilePath $edge -ArgumentList $qbArgs; exit 0 } catch { Write-Host $_.Exception.Message; exit 1 }"
if errorlevel 1 pause
