@echo off
echo #########################################
echo #        CANCELLATORE DI BARISON        #  
echo #                v0.1                   #
echo #             2 Jan 2021                #
echo #########################################

set /p Nome_Utente= Inserisci il Nome Utente: 

pause

reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment"\ /f

taskkill /f /im Agent.exe
taskkill /f /im Battle.net.exe
taskkill /f /im Battle.net\ Helper.exe
del "C:\Users\alber\AppData\Local\Blizzard Entertainment" /q /s
del "C:\Users\alber\AppData\Local\Battle.net" /q /s
del "C:\Users\alber\AppData\Roaming\Battle.net" /q /s
del "C:\ProgramData\Battle.net" /q /s
del "C:\ProgramData\Blizzard Entertainment" /q /s
del "C:\Users\alber\Documents\Call of Duty Modern Warfare" /q /s
del "E:\Giochi\Call of Duty Modern Warfare\Data\data\shmem" /q /s
del "E:\Giochi\Call of Duty Modern Warfare\main\recipes\cmr_hist" /q /s

pause
