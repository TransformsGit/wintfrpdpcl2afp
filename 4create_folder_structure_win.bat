@ECHO OFF

Set dir=e:\OutputTransformAFP2PDF\win\output\
Echo Deleting all files from %dir%
del %dir%\* /F /Q

Echo Deleting all folders from %dir%
for /d %%p in (%dir%\*) Do rd /Q /S "%%p"
@echo Folder deleted.

mkdir e:\OutputTransformAFP2PDF\win\output\out_AFP\TestFiles\
echo mkdir e:\OutputTransformAFP2PDF\win\output\out_AFP\TestFiles\

mkdir e:\OutputTransformAFP2PDF\win\output\out_PDF\TestFiles\
echo mkdir e:\OutputTransformAFP2PDF\win\output\out_PDF\TestFiles\

mkdir e:\OutputTransformAFP2PDF\win\output\out_TIFF\TestFiles\
echo mkdir e:\OutputTransformAFP2PDF\win\output\out_TIFF\TestFiles\


c:\Windows\System32\xcopy.exe /T  e:\OutputTransformAFP2PDF\win\output\out_AFP\TestFiles
c:\Windows\System32\xcopy.exe  /T e:\OutputTransformAFP2PDF\win\output\out_PDF\TestFiles
c:\Windows\System32\xcopy.exe /T  e:\OutputTransformAFP2PDF\win\output\out_TIFF\TestFiles
