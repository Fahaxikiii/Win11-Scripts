@echo off

:: 定义变量，请自行填写使用者名称与密码
set "DefaultUserName=wanli021212@outlook.com"
set "DefaultPassword=161122@wanli"

:: 设定 AutoAdminLogon 为 1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_SZ /d 1 /f

:: 设定 DefaultUserName
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /t REG_SZ /d "%DefaultUserName%" /f

:: 设定 DefaultPassword
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /t REG_SZ /d "%DefaultPassword%" /f

:: 提示完成信息
echo 设定完成！已启用开机自动登录。
pause
