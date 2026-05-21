@echo off
schtasks /Create /TN "cerebro-sync-obsidian" /TR "pwsh.exe -NonInteractive -ExecutionPolicy Bypass -File \"C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial\sincronizar-obsidian.ps1\"" /SC MINUTE /MO 30 /RU "%USERNAME%" /F
echo.
echo Task criada! O Obsidian sera sincronizado a cada 30 minutos.
pause
