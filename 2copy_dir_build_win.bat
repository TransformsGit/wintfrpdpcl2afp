net use \\172.27.112.113\sw_transforms\public\ITM\Kit\IPM_4.9.0\win\ /u:saguaroprint.ro\cmorariu passw0rd12 /p:yes

set source="\\172.27.112.113\sw_transforms\public\ITM\Kit\IPM_4.9.0\win\"
set target="c:\Users\Administrator\Transforms\Builds"

FOR /F "delims=" %%I IN ('DIR %source%\*.* /A:-D /O:-D /B') DO COPY %source%\"%%I" %target% & echo %%I & GOTO :END
:END
TIMEOUT 4