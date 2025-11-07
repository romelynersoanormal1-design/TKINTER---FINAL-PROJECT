@echo off
setlocal
REM === Instalar paquetes desde USB sin internet ni permisos de admin ===

REM Detecta la carpeta donde está el .bat
set USB_DIR=%~dp0
set USB_DIR=%USB_DIR:~0,-1%

echo Instalando paquetes desde %USB_DIR%\wheels ...
python -m pip install --user --no-index --find-links="%USB_DIR%\wheels" -r "%USB_DIR%\requirements.txt"

if %ERRORLEVEL% EQU 0 (
  echo.
  echo ✅ Instalacion completada correctamente.
) else (
  echo.
  echo ❌ Hubo errores durante la instalacion. Revisa los mensajes arriba.
)
pause
endlocal