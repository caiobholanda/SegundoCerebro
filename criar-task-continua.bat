@echo off
:: criar-task-continua.bat
:: Rode este arquivo como Administrador para registrar a task cerebro-continuo
:: Clique direito → "Executar como administrador"

echo.
echo === Registrando task cerebro-continuo ===
echo.

set SCRIPT=C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial\pesquisa-continua.ps1
set TR=powershell.exe -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "%SCRIPT%"

:: Remove task antiga se existir
schtasks /delete /tn "cerebro-continuo" /f >nul 2>&1

:: Cria a task
:: /sc daily /st 08:00   -> dispara todo dia as 08:00
:: /ri 120               -> repete a cada 120 minutos (2 horas)
:: /du 0014:00           -> por 14 horas (encerra automaticamente as 22:00)
:: /rl highest           -> executa com privilegio maximo
:: /ru GRANMARQUISE\estagio.ti /it -> roda como usuario logado (nao pede senha)
schtasks /create /tn "cerebro-continuo" ^
  /tr "%TR%" ^
  /sc daily /st 08:00 ^
  /ri 120 /du 0014:00 ^
  /rl highest ^
  /ru "GRANMARQUISE\estagio.ti" /it ^
  /f

if %errorlevel% equ 0 (
    echo.
    echo [OK] Task criada com sucesso!
    echo.
    echo Horarios de execucao: 08:00, 10:00, 12:00, 14:00, 16:00, 18:00, 20:00, 22:00
    echo 70%% temas aleatorios  /  30%% temas fixos
    echo.
    schtasks /query /tn "cerebro-continuo" /fo list
) else (
    echo.
    echo [ERRO] Falha ao criar task.
    echo Verifique se este arquivo foi aberto como Administrador.
    echo.
)

pause
