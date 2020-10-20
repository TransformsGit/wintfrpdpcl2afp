echo off

echo =============    Submisie PCL2AFP   ======================================

set submition_tool=c:\Users\Administrator\Transforms
echo %submition_tool%

set folderPCL=e:\TestFiles\PCL\    

   

echo =============    Transform files from dir and subdir of : %folderPCL% ======================================

set /p itm_ipaddress=< %c:\Users\Administrator\Transforms\itm_ipaddress_PCL2AFP_win%
echo %itm_ipaddress%



for /R %folderPCL% %%i in (*.pcl) do (

echo processing.......... %%i

ECHO File drive is **************:   filedrive=%%~di
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi


echo ===============  Working Transform script is:.......... %cd% 

echo ================================================
echo ================================================

echo ===============  PCL Transform with default configuration =======================

echo %submition_tool%\itm_driver_win.exe -S %itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\OutputTransformPCL2AFP\win\output\out_AFP\%%~pi\%%~ni.afp" -s8033
%submition_tool%\itm_driver_win.exe -S %itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files e:\OutputTransformPCL2AFP\win\output\out_AFP\%%~pi\%%~ni.afp" -s8033 

 
echo ================================================
 ) >> C:\Users\Administrator\Transforms\TestPCL2AFP\Log\win\pcl2afp_itm-driver.log 2>&1


echo EXIT
echo EXIT