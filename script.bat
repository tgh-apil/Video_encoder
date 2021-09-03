for /R "E:\Video\" %%F in (*.avi) do (
    "E:\Focus\HandBrake_encoding\HandBrakeCLI.exe" -i "%%~fF" -f "av_mkv" -o "%%~dpF%%~nF.mkv" 
    if exist "%%~dpF%%~nF.mkv" (
        del "%%~fF"
    )
)
