set "PATH_TO_REPAK=C:\Software\repak\repak.exe"
set "PATH_TO_MODS=C:\Program Files (x86)\Steam\steamapps\common\S.T.A.L.K.E.R. 2 Heart of Chornobyl\Stalker2\Content\Paks\~mods"

for /f "delims=" %%a in ('git rev-parse --short HEAD') do set "GIT_HASH=%%a"
for /f "delims=" %%b in ('git rev-parse --abbrev-ref HEAD') do set "BRANCH=%%b"
for /f "delims=" %%c in ('git status --porcelain') do set "IS_DIRTY=%%c"

set "FILENAME=zzz_mutant_health_reduction_%BRANCH%_%GIT_HASH%"
if not "%IS_DIRTY%"=="" set "FILENAME=%FILENAME%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%"

"%PATH_TO_REPAK%" pack -v mutant_health_reduction
del /f "%PATH_TO_MODS%\zzz_mutant_health_reduction_*.pak" 2>nul
move mutant_health_reduction.pak "%FILENAME%.pak"
copy "%FILENAME%.pak" "%PATH_TO_MODS%"