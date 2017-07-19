:START
@ECHO OFF
echo -------------------------------------------------------
echo This is for the dum dums that can't follow my step by
echo step guide with pictures.
 
echo This will convert the input file either MP3 or WAV 
echo to Splicecom approved WAV 8000 Hz A-Law Mono.
echo -------------------------------------------------------

echo It's easyier to put the file in the same locaction as
echo this file, but i can accept full paths.
echo -------------------------------------------------------

echo This will output the file to output.wav in this location
echo -------------------------------------------------------

set /p id="Enter full input file location and name : "

echo -------------------------------------------------------
echo Enter the volume shift in dB.
echo To leave as is enter 0, to make quieter enter -x, louder enter x
echo i.e -5 to make it abit quieter, or 10 to make it mega louder
echo -------------------------------------------------------

set /p vol="Enter volume shift in dB : "
ffmpeg.exe -i %id% -acodec pcm_alaw -af "volume=%vol%dB" -ar 8000 -ac 1 -sample_fmt s16 output.wav

echo Finished
echo Review the above for errors
pause
echo .
echo   /$$$$$$  /$$       /$$                     /$$          
echo  /$$__  $$^| $$      ^|__/                    ^|__/          
echo ^| $$  \__/^| $$$$$$$  /$$  /$$$$$$   /$$$$$$  /$$  /$$$$$$ 
echo ^| $$      ^| $$__  $$^| $$ /$$__  $$ /$$__  $$^| $$ /$$__  $$
echo ^| $$      ^| $$  \ $$^| $$^| $$  \ $$^| $$  \ $$^| $$^| $$$$$$$$
echo ^| $$    $$^| $$  ^| $$^| $$^| $$  ^| $$^| $$  ^| $$^| $$^| $$_____/
echo ^|  $$$$$$/^| $$  ^| $$^| $$^| $$$$$$$/^| $$$$$$$/^| $$^|  $$$$$$$
echo  \______/ ^|__/  ^|__/^|__/^| $$____/ ^| $$____/ ^|__/ \_______/
echo                         ^| $$      ^| $$                    
echo                         ^| $$      ^| $$                    
echo                         ^|__/      ^|__/                    




ping god