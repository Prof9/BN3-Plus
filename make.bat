@echo off
setlocal EnableDelayedExpansion

set "ARMIPS=tools\armips.exe"
set "FLIPS=tools\flips.exe"

set "BLUE_US_ROM=mmbn3b-us"
set "BLUE_US_IPS=Blue US"
set "WHITE_US_ROM=mmbn3w-us"
set "WHITE_US_IPS=White US"

if "%~1"=="clean" (
	set "CLEAN=1"
)

call :build "!BLUE_US_ROM!" "!BLUE_US_IPS!" || goto :error
call :build "!WHITE_US_ROM!" "!WHITE_US_IPS!" || goto :error

if errorlevel 1 goto :error
goto :done


:build
set "ROM=%~1"
set "IPS=%~2"
if exist "_rom/!ROM!-out.gba" ( del /F "_rom\!ROM!-out.gba" || exit /b 1 )
if exist "_rom/!IPS!.ips" ( del /F "_rom\!IPS!.ips" || exit /b 1 )
if not defined CLEAN (
	if exist "_rom/!ROM!.gba" (
		echo Building !ROM!...

		:: Run ARMIPS
		if not exist "!ARMIPS!" (
			echo !ARMIPS! missing, cannot build
			exit /b 1
		) else (
			"!ARMIPS!" "patch.asm" -strequ ROM_IN "_rom/!ROM!.gba" -strequ ROM_OUT "_rom/!ROM!-out.gba" || exit /b 1
		)

		:: Run Floating IPS if exists
		if not exist "!FLIPS!" (
			echo !FLIPS! missing, skipping creation of patch
		) else (
			"!FLIPS!" --create --ips "_rom/!ROM!.gba" "_rom/!ROM!-out.gba" "_rom/!IPS!.ips" || exit /b 1
		)
	)
)
exit /b 0


:done
echo.
echo Done
exit /b 0


:error
echo.
echo Error
pause
exit /b 1
