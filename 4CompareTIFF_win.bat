@echo off
REM script must be in Test tools installation directory
time /T >> regr.log


set TTDIR=c:\TESTTOOLS\
set MASTERDIR=e:\MasterFiles\
set CMPDIR=e:\OutputTransformPCL2AFP\win\output\out_TIFF\

echo running tiffcompare >> regr.log
set CURDIR=%CD%
pushd %TTDIR%

for /R %MASTERDIR% %%i in (*.tif) do (
echo processing.......... %%i
ECHO File drive is **************:   filedrive=%%~di% 
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi
Echo File for compare is ************: file for compare = %%~nxi 
ECHO %TESTOOLS%

 	if EXIST %CMPDIR%\%%~pi (
ECHO ====================================================


		CALL c:\TESTTOOLS\compare.bat %%i e:\OutputTransformPCL2AFP\win\output\out_TIFF\%%~pi\%%~ni.tif -method fuzzy -nlines 5 >> c:\Users\Administrator\Transforms\Logs\LogsTransformPCL2AFP\win\output_regression_diff.log
echo CALL c:\TESTTOOLS\compare.bat %%i e:\OutputTransformPCL2AFP\win\output\out_TIFF\%%~pi\%%~ni.tif -method fuzzy -nlines 5 >> c:\Users\Administrator\Transforms\Logs\LogsTransformPCL2AFP\win\files.log	
	) else (
		echo no output was generated for %%i %CMPDIR%\%%~pi>> c:\Users\Administrator\Transforms\Logs\LogsTransformPCL2AFP\win\output_notfound_diff.log
	)	
)
popd

time /T >> regr.log

