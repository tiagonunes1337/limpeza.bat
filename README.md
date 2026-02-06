# 🚀 Windows Automation Setup Script

Este script em **PowerShell** foi desenvolvido para automatizar a configuração inicial de sistemas Windows em ambientes de laboratório técnico. Ele otimiza o tempo de entrega de equipamentos, garantindo a instalação de softwares essenciais, remoção de bloatwares e ajustes de privacidade.

## 🛠️ Funcionalidades

### 1. Instalação Silenciosa de Software
Utiliza o **Winget** (Windows Package Manager) para instalar programas essenciais sem necessidade de intervenção manual:
* **Navegação:** Google Chrome.
* **Suporte Remoto:** AnyDesk.
* **Produtividade:** LibreOffice, WinRAR e SumatraPDF.
* **Multimídia:** VLC Media Player e K-Lite Codec Pack.

### 2. Limpeza de Sistema (Debloat)
Remove aplicativos pré-instalados que ocupam espaço e recursos desnecessários:
* Microsoft Solitaire Collection, Skype, Office OneNote, Disney+, entre outros.

### 3. Otimização e Privacidade
* Desativa sugestões de aplicativos e propagandas nativas no Menu Iniciar através de chaves de registro.
* Define temporariamente a política de execução para garantir a rodagem completa do script.

## 🚀 Como Utilizar

1. Faça o download ou copie o código do script `.ps1`.
2. Abra o **PowerShell como Administrador**.
3. Execute o script e aguarde a mensagem de conclusão: `"PROCESSO CONCLUÍDO COM SUCESSO!"`.

## 📌 Contexto do Projeto
Este projeto nasceu da necessidade prática de agilizar o setup de máquinas na **Better Smart**, integrando conhecimentos de automação em scripts com o suporte técnico de TI do dia a dia.

---
Desenvolvido por **Tiago de Aquino Nunes** _Estudante de Engenharia de Software e Técnico de Informática_
