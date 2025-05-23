@echo off
color 0a
echo ====================================================
echo 即将开始修复桌面白图标，请按下任意按键以开始修复。
echo 注意：修复过程会出现屏幕闪烁一下，属于正常现象，请保护好你的眼睛（一一一！）
echo ====================================================
pause

::打开图标缓存文件夹
cd %localappdata%

::删除图标缓存文件
del IconCache.db /a

::终止进程资源管理器
taskkill /f /im explorer.exe

::启动资源管理器
start explorer.exe

echo.
echo =========
echo =修复完毕=
echo =========
pause