<#
Start the local docs site on Windows.
Tries: 1) npx docsify-cli@4 serve . 3000
      2) py -m http.server 3000

Usage: In PowerShell run:
  .\start-local.ps1

#>

$port = 3000

Write-Host "Starting local site on http://localhost:$port" -ForegroundColor Cyan

# Prefer docsify-cli via npx if available
try {
    Write-Host "Trying: npx docsify-cli@4 serve . $port" -ForegroundColor Yellow
    & npx docsify-cli@4 serve . $port
    exit $LASTEXITCODE
} catch {
    Write-Host "npx docsify-cli failed or not available, falling back to Python HTTP server." -ForegroundColor Yellow
}

# Fallback: Python simple HTTP server
try {
    if (Get-Command py -ErrorAction SilentlyContinue) {
        Write-Host "Using 'py -m http.server $port'" -ForegroundColor Yellow
        Start-Process -NoNewWindow -FilePath py -ArgumentList "-m http.server $port"
        Write-Host "Python server started. Press Ctrl+C in the PowerShell that launched this script to stop." -ForegroundColor Green
    } elseif (Get-Command python -ErrorAction SilentlyContinue) {
        Write-Host "Using 'python -m http.server $port'" -ForegroundColor Yellow
        Start-Process -NoNewWindow -FilePath python -ArgumentList "-m http.server $port"
        Write-Host "Python server started. Press Ctrl+C in the PowerShell that launched this script to stop." -ForegroundColor Green
    } else {
        Write-Host "No suitable server found. Install Node.js (for docsify) or Python." -ForegroundColor Red
        exit 1
    }
} catch {
    Write-Host "Failed to start fallback server: $_" -ForegroundColor Red
    exit 1
}
