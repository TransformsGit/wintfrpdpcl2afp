echo off
set machine=172.27.105.150
set password=passw0rd
set user_name=root
del c:\test\ssh.log

echo %machine%
echo %password%
echo %user%

   cd C:\test\
  
   echo connecting to %machine% ...  via ssh...
   echo %cd%
   echo y | C:\test\plink.exe -ssh %machine% -l %root% -pw %password% 
   C:\test\plink.exe -batch -hostkey 30:37:30:d6:3e:9d:96:cb:ee:a7:f4:c1:f0:74:30:df -sshlog ssh.log -m restore_img.txt %user_name%@%machine% -pw %password%  >>log_ssh.txt

echo STOP
echo STOP
echo STOP


echo EXIT
