<<<<<<< HEAD
@echo off
echo.
echo [信息] 安装Web工程，生成node_modules文件。
echo.

%~d0
cd %~dp0

cd ..
npm install --registry=https://registry.npmmirror.com

=======
@echo off
echo.
echo [信息] 安装Web工程，生成node_modules文件。
echo.

%~d0
cd %~dp0

cd ..
npm install --registry=https://registry.npmmirror.com

>>>>>>> 9de45e8c0a3f3bbe1a484d49088fca417a2ee0d8
pause