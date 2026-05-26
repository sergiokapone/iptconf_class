@echo off
setlocal

:: ============================================================
::  build.bat  --  compile iptconf.dtx and pack for CTAN
::  Usage: put this file next to iptconf.dtx and iptconf.ins
::  Date:  2026-05-24
:: ============================================================

set PKG=iptconf
set CTANDIR=ctan\iptconf

:: ---- 1. Extract .cls from .dtx via .ins --------------------
echo [1/5] Extracting .cls from .dtx...
tex -interaction=nonstopmode %PKG%.ins > nul 2>&1
if not exist %PKG%.cls ( echo ERROR: %PKG%.cls was not created & pause & exit /b 1 )
echo .cls OK: %PKG%.cls

:: ---- 2. Compile PDF (3 passes + makeindex) ------------------
echo [2/5] First lualatex pass...
lualatex -interaction=nonstopmode %PKG%.dtx > nul 2>&1
if errorlevel 1 ( echo ERROR in first lualatex pass & pause & exit /b 1 )

echo [3/5] Running makeindex...
makeindex -s gind.ist -o %PKG%.ind %PKG%.idx > nul 2>&1
makeindex -s gglo.ist -o %PKG%.gls %PKG%.glo > nul 2>&1

echo [4/5] Second and third lualatex passes...
lualatex -interaction=nonstopmode %PKG%.dtx > nul 2>&1
lualatex -interaction=nonstopmode %PKG%.dtx > nul 2>&1
if not exist %PKG%.pdf ( echo ERROR: %PKG%.pdf was not created & pause & exit /b 1 )
echo PDF OK: %PKG%.pdf

:: ---- 3. Assemble CTAN directory -----------------------------
echo [5/5] Assembling CTAN package...
if exist %CTANDIR% rmdir /s /q %CTANDIR%
mkdir %CTANDIR%

copy /Y %PKG%.dtx  %CTANDIR%\  > nul
copy /Y %PKG%.ins  %CTANDIR%\  > nul
copy /Y %PKG%.pdf  %CTANDIR%\  > nul
copy /Y README.    %CTANDIR%\README.md > nul

:: author template
rem mkdir %CTANDIR%\author
rem copy /Y author\author.tex  %CTANDIR%\author\ > nul
rem copy /Y author\author.bib  %CTANDIR%\author\ > nul
rem copy /Y author\LionTeX.png %CTANDIR%\author\ > nul

:: ---- 4. Create zip ------------------------------------------
echo Zipping...
if exist ctan\%PKG%.zip del ctan\%PKG%.zip
powershell -NoProfile -Command ^
  "Compress-Archive -Path '%CTANDIR%' -DestinationPath 'ctan\%PKG%.zip' -Force"
if errorlevel 1 ( echo ERROR: zip failed & pause & exit /b 1 )

echo.
echo ============================================================
echo  Done!  ctan\%PKG%.zip is ready for upload.
echo  Contents:
powershell -NoProfile -Command ^
  "Get-ChildItem -Path '%CTANDIR%' | Format-Table Name, Length -AutoSize"
echo  Upload to: https://ctan.org/upload
echo  CTAN path: /macros/latex/contrib/iptconf
echo ============================================================

:: ---- 5. Clean up intermediate files ------------------------
del /q *.out *.log *.toc *.idx *.ind *.glo *.gls *.aux *.hd *.ilg 2>nul
del /q %PKG%.synctex.gz 2>nul

pause
