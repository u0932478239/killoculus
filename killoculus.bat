@ECHO OFF
goto check_Permissions

:check_Permissions
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Killing Oculus processes!
        goto killoculus
    ) else (
        echo Failed! Run as admin!
        pause
        exit
    )

:killoculus
    taskkill /f /im OVRRedir.exe
    taskkill /f /im OVRServiceLauncher.exe
    taskkill /f /im OVRLibrarian.exe
    taskkill /f /im OVRLibraryService.exe
    taskkill /f /im OVRServer_x64.exe
    TIMEOUT 3
    taskkill /f /im OVRRedir.exe
    taskkill /f /im OVRServiceLauncher.exe
    taskkill /f /im OVRLibrarian.exe
    taskkill /f /im OVRLibraryService.exe
    taskkill /f /im OVRServer_x64.exe
    PAUSE