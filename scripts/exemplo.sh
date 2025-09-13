#!/bin/bash
# Exemplo de script básico para testar execução via GitHub Actions

echo "==== Ambiente de Teste do Workflow ===="

# Verifica se o PowerShell está instalado
if command -v pwsh >/dev/null 2>&1; then
    echo "PowerShell encontrado! Versão:"
    pwsh -Command "\$PSVersionTable.PSVersion"
else
    echo "PowerShell (pwsh) não encontrado. Instale o PowerShell para executar scripts do Intune."
    exit 1
fi

# Executa um comando PowerShell simples de demonstração
echo "Executando comando PowerShell de exemplo:"
pwsh -Command "Write-Host 'Hello from PowerShell via GitHub Actions!'"

echo "==== Fim do exemplo.sh ===="