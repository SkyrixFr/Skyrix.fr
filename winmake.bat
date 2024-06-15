@echo off

echo compiling smu

make clean
make

echo cleaning out old files
del /Q /S out\*
mkdir out\posts

echo copying stylesheets
copy in\style.css out\style.css

echo finding and processing every markdown file

for %%f in (in\*.md) do (
    setlocal enabledelayedexpansion
    set filename=%%~nf
    smu.exe %%f > out\!filename!.html
    endlocal
)

for %%f in (in\posts\*.md) do (
    setlocal enabledelayedexpansion
    set filename=%%~nf
    smu.exe %%f > out\posts\!filename!.html
    endlocal
)

echo DONE!
pause
