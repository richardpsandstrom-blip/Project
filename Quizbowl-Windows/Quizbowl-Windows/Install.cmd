@echo off
setlocal DisableDelayedExpansion
title Install Quiz Bowl Desktop
set "QB_SOURCE=%~dp0"
echo Installing Quiz Bowl Desktop for your Windows account...
echo Close any existing Quiz Bowl Desktop windows before continuing.
pause
powershell.exe -NoLogo -NoProfile -Command "$ErrorActionPreference='Stop'; try { $edge=@(${env:ProgramFiles(x86)},$env:ProgramFiles,$env:LOCALAPPDATA) | Where-Object { $_ } | ForEach-Object { Join-Path $_ 'Microsoft\Edge\Application\msedge.exe' } | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1; if (!$edge) { throw 'Microsoft Edge was not found. Install Microsoft Edge, then run Install.cmd again.' }; $dest=Join-Path $env:LOCALAPPDATA 'QuizBowlDesktop'; New-Item -ItemType Directory -Path $dest -Force | Out-Null; foreach ($name in @('quizbowl.html','quizbowl.ico','Open-Quizbowl.cmd','README.txt')) { Copy-Item -LiteralPath (Join-Path $env:QB_SOURCE $name) -Destination (Join-Path $dest $name) -Force }; $uri=([System.Uri](Join-Path $dest 'quizbowl.html')).AbsoluteUri; $q=[char]34; $qbArgs='--user-data-dir='+$q+(Join-Path $dest 'Profile')+$q+' --no-first-run --app='+$q+$uri+$q; $shell=New-Object -ComObject WScript.Shell; foreach ($folder in @([Environment]::GetFolderPath('Desktop'),[Environment]::GetFolderPath('Programs'))) { if ($folder) { $link=$shell.CreateShortcut((Join-Path $folder 'Quiz Bowl Desktop.lnk')); $link.TargetPath=$edge; $link.Arguments=$qbArgs; $link.WorkingDirectory=$dest; $link.IconLocation=(Join-Path $dest 'quizbowl.ico'); $link.Description='Economics quizbowl with automatic local saving'; $link.Save() } }; Write-Host 'Installed. Open Quiz Bowl Desktop from your desktop or Start menu.'; Start-Process -FilePath $edge -ArgumentList $qbArgs; exit 0 } catch { Write-Host ('Installation could not finish: '+$_.Exception.Message); exit 1 }"
if errorlevel 1 goto failed
echo.
echo Done. Your app and progress stay in your Windows user profile.
pause
exit /b 0
:failed
echo.
echo See the error above. Do not change school or work security policies.
pause
exit /b 1
