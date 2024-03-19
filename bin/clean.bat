<<<<<<< HEAD
@echo off
echo.
echo [信息] 清理工程target生成路径。
echo.

%~d0
cd %~dp0

cd ..
call mvn clean

=======
@echo off
echo.
echo [信息] 清理工程target生成路径。
echo.

%~d0
cd %~dp0

cd ..
call mvn clean

>>>>>>> 9de45e8c0a3f3bbe1a484d49088fca417a2ee0d8
pause