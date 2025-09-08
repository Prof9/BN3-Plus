@echo off

:: Reading variable definitions from .env file
FOR /F "eol=# tokens=*" %%i IN (%~dp0.env) DO SET %%i
SET CURRENTDIR=%cd%

set version=w
IF "%1" == "b" SET version=b
IF "%2" == "vbalink" GOTO vbalink
IF "%2" == "nocash" GOTO nocash
GOTO mgba

:mgba
start "" "%MGBA_PATH%" "%CURRENTDIR%\_rom\mmbn3%version%-us-out.gba"
GOTO end

:vbalink
start "" "%VBALINK_PATH%" "%CURRENTDIR%\_rom\mmbn3%version%-us-out.gba"
start "" "%VBALINK_PATH%" "%CURRENTDIR%\_rom\mmbn3%version%-us-out.gba"
GOTO end

:nocash
start "" "%NOCASHGBA_PATH%" "%CURRENTDIR%\_rom\mmbn3%version%-us-out.gba"
GOTO end

:end

