@echo off
title AUTOTWEAKING-UTILITY by K1nzufn
color b
start https://twitter.com/k1nzufn
:menu
cls
echo.
echo.
echo              K1nzu AUTOTWEAKING-UTILITY
echo.
echo                       MENU
echo ---------------------------------------------------
echo. [1] Spectre and Meltdown Tweak
echo. [2] Win32Separation Tweak - 26hex
echo. [3] Mouse/KeyboardDataQueueSize Tweak - 25
echo. [4] NVIDIA Tweaks
echo. [5] Enable FSE and Disable GameBar
echo. [6] BCD Tweak
echo. [7] Enable Monitor Tolerance
echo. [8] AMD Tweaks
echo. [9] Disable AutoTuningLevel
echo. [10] Set AutoTuningLevel to NORMAL
echo. [11] Hidden Power Savings Tweak
echo. [12] Exit
echo.
echo ---------------------------------------------------
set /p choice= ^> Enter Your Option: 
if [%choice%]==[] echo.&echo Invalid Choice&echo.&pause&goto :menu
if %choice% gtr 13 echo.&echo Invalid Choice&echo.&pause&goto :menu
if %choice%==1 goto :option1
if %choice%==2 goto :option2
if %choice%==3 goto :option3
if %choice%==4 goto :option4
if %choice%==5 goto :option5
if %choice%==6 goto :option6
if %choice%==7 goto :option7
if %choice%==8 goto :option8
if %choice%==9 goto :option9
if %choice%==10 goto :option10
if %choice%==11 goto :option11
if %choice%==12 goto :option12

:option1
cls
echo Tweaking Spectre And Meltdown
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f

reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f

reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f
pause&goto :menu

:option2
cls
echo Tweaking Win32Separation - 26hex
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
pause&goto :menu

:option3
cls
echo Tweaking Mouse/KeyboardDataQueueSize - 25
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /f /v "MouseDataQueueSize" /t REG_DWORD /d "25"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /f /v "KeyboardDataQueueSize" /t REG_DWORD /d "25"
pause&goto :menu

:option4
cls
echo Tweaking NVIDIA
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm" /f /v "DisablePreemption" /t REG_DWORD /d "1"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm" /f /v "DisableCudaContextPreemption" /t REG_DWORD /d "1"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /f /v "EnablePreemption" /t REG_DWORD /d "0"
pause&goto :menu

:option5
cls
echo Enabling FSE and Disable GameBar
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /f /v "AllowAutoGameMode" /t REG_DWORD /d "0"
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /f /v "AutoGameModeEnabled" /t REG_DWORD /d "0"
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /f /v "GamePanelStartupTipIndex" /t REG_DWORD /d "3"
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /f /v "ShowStartupPanel" /t REG_DWORD /d "0"
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /f /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0"
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /f /v "AppCaptureEnabled" /t REG_DWORD /d "0"
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2"
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1"
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0"
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_Enabled" /t REG_DWORD /d "0"
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2"
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2"
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /f /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /f /v "AllowGameDVR" /t REG_DWORD /d "0"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /f /v "value /t  REG_DWORD /d "0"
pause&goto :menu

:option6
cls
bcdedit /deletevalue useplatformclock
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick Yes
bcdedit /event off
bcdedit /set hypervisorlaunchtype off
bcdedit /set {globalsettings} custom:16000067 true
bcdedit /set {globalsettings} custom:16000068 true
bcdedit /set {globalsettings} custom:16000069 true

pause&goto :menu

:option7
cls
echo Enabling Monitor Tolerance
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f

:option8
cls
echo Tweaking AMD
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\4d36e968-e325-11ce-bfc1-08002be10318\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\4d36e968-e325-11ce-bfc1-08002be10318\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\4d36e968-e325-11ce-bfc1-08002be10318\0000" /v "StutterMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\4d36e968-e325-11ce-bfc1-08002be10318\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\4d36e968-e325-11ce-bfc1-08002be10318\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\4d36e968-e325-11ce-bfc1-08002be10318\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\4d36e968-e325-11ce-bfc1-08002be10318\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\4d36e968-e325-11ce-bfc1-08002be10318\0000\UMD" /v "Main3D_DEF" /t REG_DWORD /d "1" /f
pause&goto :menu

:option9
cls
echo Disabling AutoTuningLevel
netsh int tcp set global autotuninglevel=disabled
pause&goto :menu

:option10
cls
echo Setting AutoTuningLevel to NORMAL
netsh int tcp set global autotuninglevel=normal
pause&goto :menu

:option11
cls
echo Disabling Energy Saving Features [...] (K1nzufn)
timeout 2 > nul
reg add "HKLM\SYSTEM\currentcontrolset\control\session manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\currentcontrolset\control\session manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\currentcontrolset\control\session manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\currentcontrolset\control\session manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\currentcontrolset\control\session manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
cls

echo Disabling Power-Saving Features [...] (K1nzufn)

if exist "C:\Users\%USERNAME%\Downloads\SetACL.exe" goto powersaving
if not exist "C:\Users\%USERNAME%\Downloads\SetACL.exe" (
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/825401948349792277/936738908920754206/SetACL.exe" -OutFile "C:\Users\%USERNAME%\Downloads\SetACL.exe"
)

:powersaving
for /f %%s in ('wmic PATH Win32_PnPEntity GET DeviceID ^| findstr /l "USB\VID_"') do (
SetACL.exe -on "HKLM\SYSTEM\CurrentControlSet\Enum\%%s\Device Parameters" -ot reg -actn setowner -ownr "n:Administrators" >nul 2>&1
SetACL.exe -on "HKLM\SYSTEM\CurrentControlSet\Enum\%%s\Device Parameters" -ot reg -actn ace -ace "n:Administrators;p:full" >nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%s\Device Parameters" /v SelectiveSuspendOn /t REG_DWORD /d 00000000 /f >nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%s\Device Parameters" /v SelectiveSuspendEnabled /t REG_BINARY /d 00 /f >nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%s\Device Parameters" /v EnhancedPowerManagementEnabled /t REG_DWORD /d 00000000 /f >nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%s\Device Parameters" /v AllowIdleIrpInD3 /t REG_DWORD /d 00000000 /f >nul 2>&1
)
for /f %%s in ('wmic PATH Win32_USBHub GET DeviceID ^| findstr /l "USB\ROOT_HUB"') do (
SetACL.exe -on "HKLM\SYSTEM\CurrentControlSet\Enum\%%s\Device Parameters\WDF" -ot reg -actn setowner -ownr "n:Administrators" >nul 2>&1
SetACL.exe -on "HKLM\SYSTEM\CurrentControlSet\Enum\%%s\Device Parameters" -ot reg -actn ace -ace "n:Administrators;p:full" >nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%s\Device Parameters\WDF" /v IdleInWorkingState /t REG_DWORD /d 00000000 /f >nul 2>&1
)
for /f "tokens=*" %%s in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do reg.exe add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d 00000000 /f >nul 2>&1
for /f "eol=E" %%s in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "IoLatencyCap" ^| findstr /v "IoLatencyCap"') do reg.exe add "%%s" /v "IoLatencyCap" /t REG_DWORD /d 00000000 /f >nul 2>&1
for /f "eol=E" %%s in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "EnableHIPM" ^| findstr /v "EnableHIPM"') do (
reg.exe add "%%s" /v "EnableHIPM" /t REG_DWORD /d 00000000 /f >nul 2>&1
reg.exe add "%%s" /v "EnableDIPM" /t REG_DWORD /d 00000000 /f >nul 2>&1
reg.exe add "%%s" /v "EnableHDDParking" /t REG_DWORD /d 00000000 /f >nul 2>&1
)
for /f "tokens=*" %%s in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /S /F "PNPCapabilities" ^| findstr /v "PNPCapabilities" ^| findstr /v "REG_DWORD" ^| findstr /v "End of search"') do (
reg.exe add "%%s" /v "PNPCapabilities" /t REG_DWORD /d 00000280 /f >nul 2>&1
)
del /s /f /q "C:\Users\%USERNAME%\Downloads\SetACL.exe" > nul
pause&goto :menu
:option12
cls

