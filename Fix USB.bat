ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: Yes
REM  Companyname: Eduardo Daniel Cuomo
REM  Productname: Fix USB
REM  Filedescription: Fix USB Driver
REM  Copyrights: Eduardo Daniel Cuomo
REM  Trademarks: 
REM  Originalname: Fix USB
REM  Comments: 
REM  Productversion:  1. 0. 1. 0
REM  Fileversion:  1. 0. 1. 0
REM  Internalname: 
REM  Appicon: 
REM  QBFC Project Options End
ECHO ON
ECHO OFF
ECHO OFF
@echo off
title Reparador Flash v1.0 :: Eduardo D. Cuomo
cls

color 1F
@echo #####################################################################
@echo #      REPARACION DE MEMORIA FLASH v1.0                             #
@echo #####################################################################
@echo #                                                                   #
@echo # Creado por: Eduardo Daniel Cuomo                                  #
@echo #                                                                   #
@echo # Telefono:   2984524010                                            #
@echo # e-Mail:     eduardo.cuomo.ar@gmail.com                            #
@echo #                                                                   #
@echo # General Roca, Rio Negro, Argentina                                #
@echo #                                                                   #
@echo #####################################################################
color
pause
cls

color 1F
@echo #####################################################################
@echo #      REPARACION DE MEMORIA FLASH v1.0                             #
@echo #####################################################################
@echo #                                                                   #
@echo # Esta aplicacion se encarga de recuperar el contenido perdido en   #
@echo # una unidad Flash y de remover la auto-ejecucion de Virus. Tambien #
@echo # intenta prevenir que se pueda instalar un Virus auto-ejecutable   #
@echo # en el futuro.                                                     #
@echo #                                                                   #
@echo # Si luego de ejecutarlo, sigue perdiendo el contenido de su        #
@echo # dispositivo, seguramente su computadora se encuentra infectada    #
@echo # por un Virus.                                                     #
@echo #                                                                   #
@echo # Si necesita ayuda, puede contactarse con el creador de esata      #
@echo # aplicacion para recibir asistencia.                               #
@echo #                                                                   #
@echo #####################################################################
@echo .
@echo . IMPORTANTE: Este proceso puede requerir varios minutos,
@echo . dependiendo del contenido de su unidad.
@echo .
color
pause
cls

@echo Este proceso puede demorar varios minutos en finalizar.
@echo Por favor, espere...

@echo ----------------------------------------------
@echo Eliminado Virus...
if exist "llllll*.vbs" del /F /Q "llllll*.vbs"

@echo ----------------------------------------------
@echo Eliminado Temporales...
if exist ".~*.*#" del /F /Q ".~*.*#"
if exist "~$*.*" del /F /Q "~$*.*"


@echo ----------------------------------------------
@echo Eliminado accesos directos...
if exist *.lnk del /F /Q *.lnk 

@echo ----------------------------------------------
@echo Hacer visibles contenido oculto...
attrib /d /s -r -h -s *.*

@echo ----------------------------------------------
@echo Eliminado "autorun.inf"...
rem if exist autorun.inf del /F /Q autorun.inf 
rem Cambiando atributos de "autorun.inf"
if exist autorun.inf attrib -S -R -A -H /S /D autorun.inf
rem Borrando archivo "autorun.inf"
if exist autorun.inf del /S /F /Q autorun.inf
rem Borrando directorio "autorun.inf"...
if exist autorun.inf rmdir /S /Q autorun.inf


@echo ----------------------------------------------
@echo Finalizando...
rem Creando directorio "autorun.inf"...
mkdir autorun.inf
rem Estableciendo atributos...
attrib +S +R +A +H /S /D autorun.inf
rem Creando archivo Lleeme.txt"
echo ###################################### > autorun.inf\Leeme.txt
echo #                                    # >> autorun.inf\Leeme.txt
echo # REPARACION DE MEMORIA FLASH v1.0   # >> autorun.inf\Leeme.txt
echo #                                    # >> autorun.inf\Leeme.txt
echo # Previene que un Virus se pueda     # >> autorun.inf\Leeme.txt
echo # instalar y auto-ejecutar en este   # >> autorun.inf\Leeme.txt
echo # dispositivo.                       # >> autorun.inf\Leeme.txt
echo #                                    # >> autorun.inf\Leeme.txt
echo #                                    # >> autorun.inf\Leeme.txt
echo # Creado por: Eduardo Daniel Cuomo   # >> autorun.inf\Leeme.txt
echo #                                    # >> autorun.inf\Leeme.txt
echo # Telefono: 2984524010               # >> autorun.inf\Leeme.txt
echo # e-Mail: eduardo.cuomo.ar@gmail.com # >> autorun.inf\Leeme.txt
echo # General Roca, Rio Negro, Argentina # >> autorun.inf\Leeme.txt
echo #                                    # >> autorun.inf\Leeme.txt
echo ###################################### >> autorun.inf\Leeme.txt


@echo ----------------------------------------------
@echo Reparacion terminada!
@echo ----------------------------------------------

color 1F
@echo .
@echo #####################################################################
@echo #                                                                   #
@echo # Creado por: Eduardo Daniel Cuomo                                  #
@echo #                                                                   #
@echo # Telefono:   2984524010                                            #
@echo # e-Mail:     eduardo.cuomo.ar@gmail.com                            #
@echo #                                                                   #
@echo # General Roca, Rio Negro, Argentina                                #
@echo #                                                                   #
@echo #####################################################################
@echo .
color

@echo ----------------------------------------------
@echo .
@echo . Ya puede cerrar esta ventana.
@echo .
pause
