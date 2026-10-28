[CmdletBinding()]
param(
    [string]$TargetPath = "$env:USERPROFILE\.ai-skills\funil-erika-viegas-maquina-de-vendas",
    [switch]$Force,
    [switch]$PromptOnly,
    [switch]$Validate
)

$ErrorActionPreference = "Stop"
$PackageRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

if (-not (Test-Path (Join-Path $PackageRoot "SKILL.md"))) {
    throw "SKILL.md não encontrado. Execute este script a partir da pasta extraída do pacote."
}

if ((Test-Path $TargetPath) -and -not $Force) {
    throw "O destino já existe: $TargetPath. Use -Force para substituir os arquivos."
}

New-Item -ItemType Directory -Force -Path $TargetPath | Out-Null
$files = @(
    "SKILL.md",
    "Funil-Erika-Viegas-portable.md",
    "README.md",
    "LICENSE",
    "CONTRIBUTING.md",
    "package.json"
)
foreach ($file in $files) {
    Copy-Item -Force -Path (Join-Path $PackageRoot $file) -Destination (Join-Path $TargetPath $file)
}
foreach ($folder in @("references", "scripts")) {
    Copy-Item -Recurse -Force -Path (Join-Path $PackageRoot $folder) -Destination (Join-Path $TargetPath $folder)
}

if ($PromptOnly) {
    $promptPath = Join-Path $TargetPath "FUNIL-ERIKA-VIEGAS-SYSTEM-PROMPT.md"
    Copy-Item -Force (Join-Path $PackageRoot "Funil-Erika-Viegas-portable.md") $promptPath
    Write-Host "Prompt portátil instalado em: $promptPath" -ForegroundColor Green
}

if ($Validate) {
    $validator = Get-Command python -ErrorAction SilentlyContinue
    if ($null -eq $validator) {
        Write-Warning "Python não encontrado; instalação concluída, mas a validação foi ignorada."
    } else {
        & python (Join-Path $TargetPath "scripts\validate_client_config.py") (Join-Path $TargetPath "references\client-config.example.json")
    }
}

Write-Host "Skill instalada em: $TargetPath" -ForegroundColor Green
Write-Host "Arquivo principal: $(Join-Path $TargetPath 'SKILL.md')"
Write-Host "Prompt portátil: $(Join-Path $TargetPath 'Funil-Erika-Viegas-portable.md')"
Write-Host ""
Write-Host "Próximo passo: importe SKILL.md no host de IA compatível ou copie o prompt portátil para as instruções do seu agente/MCP."
Write-Host "Observação: não existe um comando universal de ativação para todos os MCPs; cada host possui seu próprio mecanismo de instruções."
