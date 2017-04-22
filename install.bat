@echo off
if [%1]==[] goto usage

copy zz.* %1
goto :eof

:usage
@echo Usage: %0 ^<dir^>
@echo where ^<dir^> is in your PATH
