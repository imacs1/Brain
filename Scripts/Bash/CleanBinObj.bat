@echo off
:: Save this as CleanBinObj.bat and run it in your solution folder
cd ..\..
echo Cleaning all bin and obj folders...

:: Recursively find and delete all bin folders
for /d /r %%i in (bin) do (
    echo Deleting %%i
    rmdir /s /q "%%i"
)

:: Recursively find and delete all obj folders
for /d /r %%i in (obj) do (
    echo Deleting %%i
    rmdir /s /q "%%i"
)

echo All bin and obj folders have been cleaned.
pause
