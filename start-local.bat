@echo off
SET PORT=3000
echo Starting local site on http://localhost:%PORT%

:: Try npx docsify-cli first
npx docsify-cli@4 serve . %PORT%
if %ERRORLEVEL%==0 (
  goto :EOF
)

echo npx docsify-cli failed or not installed. Trying Python HTTP server...

:: Try py (Windows Python launcher)
py -m http.server %PORT%
if %ERRORLEVEL%==0 (
  goto :EOF
)

:: Try python
python -m http.server %PORT%
if %ERRORLEVEL%==0 (
  goto :EOF
)

echo No suitable server found. Install Node.js (for docsify) or Python.
exit /b 1
