@echo off
setlocal enabledelayedexpansion

REM === Cambiar a la carpeta actual del script ===
cd /d "%~dp0"

REM === Recorre todos los PNG ===
for %%f in (*.png) do (
    set "nombre=%%~nf"
    set "nombre=!nombre:ace=A!"
    set "nombre=!nombre:king=K!"
    set "nombre=!nombre:queen=Q!"
    set "nombre=!nombre:jack=J!"
    set "nombre=!nombre:10=10!"
    set "nombre=!nombre:9=9!"
    set "nombre=!nombre:8=8!"
    set "nombre=!nombre:7=7!"
    set "nombre=!nombre:6=6!"
    set "nombre=!nombre:5=5!"
    set "nombre=!nombre:4=4!"
    set "nombre=!nombre:3=3!"
    set "nombre=!nombre:2=2!"

    REM === Palos ===
    set "nombre=!nombre:clubs=T!"
    set "nombre=!nombre:spades=P!"
    set "nombre=!nombre:hearts=C!"
    set "nombre=!nombre:diamonds=D!"

    REM === Limpiar separadores ===
    set "nombre=!nombre:_of_=!"
    set "nombre=!nombre: =!"

    REM === Renombrar ===
    ren "%%f" "!nombre!.png"
)

echo Listo. Las cartas fueron renombradas.
pause
