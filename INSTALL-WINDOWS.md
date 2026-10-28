# Instalação no Windows

## 1. Baixar e extrair

Baixe o arquivo ZIP da skill e extraia a pasta em um local conhecido, por exemplo:

```text
C:\Users\SEU_USUARIO\Downloads\funil-erika-viegas-maquina-de-vendas
```

## 2. Permitir a execução do script

Abra o PowerShell e execute:

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

Se o Windows perguntar, confirme com `S` ou `Y`.

## 3. Instalar a skill

Entre na pasta extraída e execute:

```powershell
cd "$HOME\Downloads\funil-erika-viegas-maquina-de-vendas"
.\install.ps1 -Validate
```

Por padrão, os arquivos serão instalados em:

```text
C:\Users\SEU_USUARIO\.ai-skills\funil-erika-viegas-maquina-de-vendas
```

Para substituir uma instalação anterior:

```powershell
.\install.ps1 -Force -Validate
```

Para instalar em outro local:

```powershell
.\install.ps1 -TargetPath "C:\IA\skills\funil-erika-viegas-maquina-de-vendas" -Force -Validate
```

## 4. Instalar somente o prompt portátil

Use esta opção quando o seu agente não aceita diretórios de skill:

```powershell
.\install.ps1 -PromptOnly -Force
```

Depois, copie o arquivo `FUNIL-ERIKA-VIEGAS-SYSTEM-PROMPT.md` para as instruções do agente.

## 5. Ativar em um MCP

Não existe um comando universal para ativar instruções em qualquer MCP. Depois da instalação, escolha o método aceito pelo seu host:

- **MCP/agent com skills:** aponte para a pasta instalada e use `SKILL.md` como skill principal;
- **agent com system prompt:** copie `Funil-Erika-Viegas-portable.md` para as instruções de sistema/projeto;
- **agent com arquivos de contexto:** adicione `SKILL.md`, `references/` e o arquivo de configuração do cliente ao workspace;
- **MCP próprio:** implemente uma ferramenta que leia o Markdown e injete o conteúdo no contexto do modelo.

O instalador não altera configurações de MCP, não cria credenciais e não publica anúncios. Isso evita modificar ferramentas de terceiros sem autorização.

## 6. Configurar um novo cliente

Copie o modelo:

```powershell
Copy-Item .\references\client-config.example.json .\client-config.json
```

Edite os dados do cliente e valide:

```powershell
python .\scripts\validate_client_config.py .\client-config.json
```

## Segurança

Nunca coloque tokens de API, senhas ou dados pessoais no arquivo Markdown ou no JSON versionado. Use as variáveis de ambiente e os mecanismos de secrets do seu host.
