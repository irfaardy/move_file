::: Begin set date

for /f "tokens=1-4 delims=/-. " %%i in ('date /t') do (call :set_date %%i %%j %%k %%l)
goto :end_set_date

:set_date
if "%1:~0,1%" gtr "9" shift
for /f "skip=1 tokens=2-4 delims=(-)" %%m in ('echo,^|date') do (set %%m=%1&set %%n=%2&set %%o=%3)
goto :eof

:end_set_date
::: End set date
set path=HASIL SCAN
set year=C:\%path%\scan_lama\%yy%
set fullpath=%year%\%mm%
IF not exist "%fullpath%" (mkdir "%fullpath%")
move "C:\%path%\*.pdf" "%fullpath%"
move "C:\%path%\*.jpg" "%fullpath%"
