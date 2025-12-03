# Configuração de Credenciais

## Como configurar as credenciais para execução dos testes

### Opção 1: Variáveis de Ambiente (Recomendado)

#### Windows (PowerShell):
```powershell
$env:SIENGE_USERNAME="493598348"
$env:SIENGE_PASSWORD="@Teste123"
```

#### Windows (CMD):
```cmd
set SIENGE_USERNAME=493598348
set SIENGE_PASSWORD=@Teste123
```

#### Linux/Mac:
```bash
export SIENGE_USERNAME="493598348"
export SIENGE_PASSWORD="@Teste123"
```

### Opção 2: Criar arquivo credentials.robot

1. Copie o arquivo `Resources/credentials.robot.example` para `Resources/credentials.robot`
2. Edite o arquivo e substitua os valores pelas credenciais reais
3. **NUNCA faça commit do arquivo credentials.robot no Git!**

Exemplo de conteúdo:
```robot
*** Settings ***
Documentation    Arquivo de credenciais - NÃO COMMITAR NO GIT

*** Variables ***
${USERNAME}    493598348
${PASSWORD}    @Teste123
```

## Segurança

- ✅ O arquivo `credentials.robot` está no `.gitignore` e não será commitado
- ✅ Use variáveis de ambiente para maior segurança
- ❌ Nunca coloque credenciais hardcoded no código
- ❌ Nunca faça commit de credenciais no Git
