@echo off
:: atualizar-task-continua.bat
:: Rode como Administrador para habilitar StartWhenAvailable na task cerebro-continuo

echo.
echo === Atualizando task cerebro-continuo ===
echo.

schtasks /delete /tn "cerebro-continuo" /f >nul 2>&1
schtasks /create /tn "cerebro-continuo" /xml "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial\cerebro-continuo-task.xml" /ru "GRANMARQUISE\estagio.ti" /f

if %errorlevel% equ 0 (
    echo [OK] Task atualizada com StartWhenAvailable habilitado!
    schtasks /query /tn "cerebro-continuo" /fo list | findstr /i "start\|proxima\|status"
) else (
    echo [ERRO] Execute este arquivo como Administrador.
)

pause
