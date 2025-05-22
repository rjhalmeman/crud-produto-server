@echo off
setlocal enabledelayedexpansion

:: Nome padrão do repositório remoto
set default_remote=https://github.com/rjhalmeman/crud-produto-server

:: Verifica se o git está instalado
where git >nul 2>&1
if errorlevel 1 (
    echo O Git não está instalado. Por favor, instale o Git antes de continuar.
    pause
    exit /b 1
)

:: Adiciona todas as alterações ao índice do Git
git add .

:: Obtém a data e hora atual no formato DD/MM/YYYY - HH:MM:SS
for /f "tokens=1-6 delims=/:. " %%a in ("%date% %time%") do (
    set dia=%%a
    set mes=%%b
    set ano=%%c
    set hora=%%d
    set minuto=%%e
    set segundo=%%f
)

:: Formata a data e hora (removendo espaços extras na hora)
if "%hora:~0,1%"==" " set hora=0%hora:~1,1%
set timestamp=%dia%/%mes%/%ano% - %hora%:%minuto%:%segundo%

:: Realiza um commit com a mensagem contendo a data e hora
git commit -m "%timestamp%"

:: Verifica se um argumento foi fornecido
if "%~1"=="" (
    :: Faz o push para o repositório remoto padrão no GitHub
    git push "%default_remote%"
) else (
    :: Faz o push para o repositório remoto fornecido no GitHub
    git push "%~1" "%default_remote%"
)

pause
