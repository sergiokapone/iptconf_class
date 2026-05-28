@echo off
setlocal

:: ============================================================
::  build.bat  --  build and upload iptconf to CTAN via l3build
::  Usage: put next to iptconf.dtx, iptconf.ins, build.lua
::  Date:  2026-05-24
:: ============================================================

set PKG=iptconf

:: ---- optional: tag a new version --------------------------
set TAG=v1.2
if defined TAG (
  echo [0] Tagging %TAG%...
  l3build tag %TAG%
  if errorlevel 1 ( echo ERROR: tag failed & pause & exit /b 1 )
)

:: ---- pre-flight checks ------------------------------------
if not exist README.md (
  echo ERROR: README.md not found -- CTAN requires it
  pause & exit /b 1
)
if not exist %PKG%.ins (
  echo ERROR: %PKG%.ins not found
  pause & exit /b 1
)

:: ---- 1. Extract .cls from .dtx ----------------------------
echo [1/5] Unpacking .cls...
l3build unpack
if errorlevel 1 ( echo ERROR: unpack failed & pause & exit /b 1 )
echo .cls OK

:: ---- 2. Build PDF documentation ---------------------------
echo [2/5] Building PDF documentation...
l3build doc
if errorlevel 1 ( echo ERROR: doc failed & pause & exit /b 1 )
if not exist build\doc\%PKG%.pdf (
  echo ERROR: %PKG%.pdf was not created & pause & exit /b 1
)
echo PDF OK: build\doc\%PKG%.pdf

:: ---- 3. Assemble CTAN zip ---------------------------------
echo [3/5] Assembling CTAN package...
l3build ctan
if errorlevel 1 ( echo ERROR: ctan failed & pause & exit /b 1 )
echo ZIP OK: %PKG%.zip

:: ---- 4. Upload to CTAN ------------------------------------
echo.
echo [4/5] Upload to CTAN?
echo   Make sure uploadconfig.announcement in build.lua is up to date.
set /p UPLOAD=Upload now? [y/N]:
if /i "%UPLOAD%"=="y" (
  l3build upload
  if errorlevel 1 ( echo ERROR: upload failed & pause & exit /b 1 )
  echo Uploaded OK.
) else (
  echo Skipped. Run manually: l3build upload
)

:: ---- 5. Clean up aux files --------------------------------
echo [5/5] Cleaning aux files...
del /q *.aux *.log *.out *.toc *.hd 2>nul
del /q *.idx *.ind *.glo *.gls *.ilg 2>nul
del /q *.bbl *.bcf *.blg *-blx.bib 2>nul
del /q *.synctex.gz *.fls *.fdb_latexmk 2>nul
del /q *.dat *-regform.txt *-info.yaml 2>nul
echo Done.

echo.
echo ============================================================
echo  Done!
echo  CTAN path: /macros/latex/contrib/%PKG%
echo  Check:     https://ctan.org/pkg/%PKG%
echo ============================================================
pause
