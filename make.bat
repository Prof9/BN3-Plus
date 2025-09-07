@echo off
setlocal EnableDelayedExpansion

set "BLUE_US=mmbn3b-us"
set "WHITE_US=mmbn3w-us"

if exist "_rom/!BLUE_US!.gba" (
	echo Building !BLUE_US!...
	"tools/armips" "patch.asm" -strequ ROM_IN "_rom/!BLUE_US!.gba" -strequ ROM_OUT "_rom/!BLUE_US!-out.gba" || goto :error
)
if exist "_rom/!WHITE_US!.gba" (
	echo Building !WHITE_US!...
	"tools/armips" "patch.asm" -strequ ROM_IN "_rom/!WHITE_US!.gba" -strequ ROM_OUT "_rom/!WHITE_US!-out.gba" || goto :error
)

if ERRORLEVEL 1 goto :error

:done
echo Done
exit /b 0

:error
pause
echo Error
exit /b 1
