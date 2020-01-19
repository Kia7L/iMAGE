cd /
@mode con: cols=70 lines=7
@echo off
@color 03

:top
cls
cd /

set "cec=cecho.exe"
%cec% {01} CHOOSEyourFILE{04}{\n}
%cec% {02} Converting{\n}
set /p "C=<"
%cec% {03} Saved{\n}
set /p "S=<"
%cec% {04} CHOOSE-Size{04}{\n}
%cec% {02} X{\n}
set /p "X=<"
%cec% {03} Y{\n}
set /p "Y=<"
magick.exe ".\Photo\*.%C%" -resize %X%x%Y% ".\Done\0.%S%"
echo done!!!

pause
goto top

:end
exit
