@echo off
setlocal

:: Configurar rutas
set "CARPETA_ORIGINAL=C:\COMPRIMIR_PDF\ORIGINAL"
set "CARPETA_COMPRIMIDA=C:\COMPRIMIR_PDF\PDF_COMPRIMIDO"

:: Comprobar si las carpetas existen, si no crearlas
if not exist "%CARPETA_ORIGINAL%" mkdir "%CARPETA_ORIGINAL%"
if not exist "%CARPETA_COMPRIMIDA%" mkdir "%CARPETA_COMPRIMIDA%"
if not exist "%CARPETA_ORIGINAL%\procesados" mkdir "%CARPETA_ORIGINAL%\procesados"

:: Bucle infinito para monitorizar la carpeta
:inicio
for %%f in ("%CARPETA_ORIGINAL%\*.pdf") do (
    echo Comprimiendo "%%f"...
    :: Comprimir el archivo
    gswin64c -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile="%CARPETA_COMPRIMIDA%\%%~nf_comprimido.pdf" "%%f"
    :: Mover el archivo original a la carpeta procesados (screen: Baja calidad ebook: Calidad media printer: Alta calidad)
    move "%%f" "%CARPETA_ORIGINAL%\procesados\"
)

:: Esperar 5 segundos antes de volver a comprobar
timeout /t 5 >nul
goto inicio