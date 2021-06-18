@echo off

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

@echo off
echo #########################################
echo #        CANCELLATORE DI BARISON        #  
echo #                v1.01                  #
echo #             2 Jan 2021                #
echo #########################################


pause

reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment"\ /f

taskkill /f /im Agent.exe
taskkill /f /im Battle.net.exe
taskkill /f /im Battle.net\ Helper.exe
del "%localappdata%\Blizzard Entertainment" /q /s
del "%localappdata%\Battle.net" /q /s
del "%appdata%\Battle.net" /q /s
del "%programdata%\Battle.net" /q /s
del "%programdata%\Blizzard Entertainment" /q /s
del "%USERPROFILE%\Call of Duty Modern Warfare" /q /s
del "E:\Giochi\Call of Duty Modern Warfare\Data\data\shmem" /q /s
del "E:\Giochi\Call of Duty Modern Warfare\main\recipes\cmr_hist" /q /s


:: No Barison ste robe non si fanno ahahah
:: set url="https://youtu.be/yqjVQIoo_F4"
:: start chrome %url%
:: start firefox.exe %url%
:: start microsoft-edge:%url%

pause
