# Garante privilégios para o script rodar sem bloqueios
Set-ExecutionPolicy Bypass -Scope Process -Force

Write-Host "--- Iniciando Setup Profissional ---" -ForegroundColor Cyan

# 1. Instalação de Programas
Write-Host "Instalando Google Chrome..." -ForegroundColor Yellow
winget install --id Google.Chrome --silent --accept-package-agreements --accept-source-agreements

Write-Host "Instalando AnyDesk..." -ForegroundColor Yellow
winget install --id AnyDeskSoftwareGmbH.AnyDesk --silent --accept-package-agreements --accept-source-agreements

Write-Host "Instalando WinRAR..." -ForegroundColor Yellow
winget install --id RARLab.WinRAR --silent --accept-package-agreements --accept-source-agreements

Write-Host "Instalando LibreOffice..." -ForegroundColor Yellow
winget install --id TheDocumentFoundation.LibreOffice --silent --accept-package-agreements --accept-source-agreements

Write-Host "Instalando VLC Media Player..." -ForegroundColor Yellow
winget install --id VideoLAN.VLC --silent --accept-package-agreements --accept-source-agreements

Write-Host "Instalando SumatraPDF..." -ForegroundColor Yellow
winget install --id SumatraPDF.SumatraPDF --silent --accept-package-agreements --accept-source-agreements

Write-Host "Instalando K-Lite Codec Pack..." -ForegroundColor Yellow
winget install --id CodecGuide.K-LiteCodecPack.Full --silent --accept-package-agreements --accept-source-agreements

# 2. Limpeza do Windows (Bloatwares)
Write-Host "`nLimpando lixo do Windows..." -ForegroundColor Magenta
$bloatware = @(
    "*MicrosoftSolitaireCollection*", 
    "*ZuneMusic*", 
    "*ZuneVideo*", 
    "*SkypeApp*", 
    "*Office.OneNote*",
    "*Disney*",
    "*Spotify*"
)

foreach ($app in $bloatware) {
    Get-AppxPackage $app | Remove-AppxPackage -ErrorAction SilentlyContinue
}

# 3. Otimização do Menu Iniciar
Write-Host "Desativando sugestões e propagandas no Menu Iniciar..." -ForegroundColor Magenta
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Value 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Value 0

Write-Host "`n--- PROCESSO CONCLUÍDO COM SUCESSO! ---" -ForegroundColor Green
Pause
