# 📊 Quality Ops

> 🚀 **Stack Completa para Automação de QA: Docker + Jenkins + CI/CD**
>
> Ambiente Jenkins completo em Docker, pré-configurado com **70+ plugins** para automação de testes e pipelines de Quality Assurance. Projeto otimizado para deploy em nuvem ou localhost.

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Jenkins](https://img.shields.io/badge/jenkins-%232C5263.svg?style=for-the-badge&logo=jenkins&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white)
![Quality-Assurance](https://img.shields.io/badge/Quality%20Assurance-Expert-green?style=for-the-badge)
![CI-CD](https://img.shields.io/badge/CI%2FCD-Automated-blue?style=for-the-badge)
![Plugins](https://img.shields.io/badge/Plugins-70%2B-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen?style=for-the-badge)
![Allure](https://img.shields.io/badge/Allure%20Reports-Included-ff69b4?style=for-the-badge)
![JUnit](https://img.shields.io/badge/JUnit-Testing-success?style=for-the-badge)
![Docker-Compose](https://img.shields.io/badge/Docker%20Compose-3.8-yellow?style=for-the-badge)
![Java](https://img.shields.io/badge/Java-JDK%2017-red?style=for-the-badge)
![Python](https://img.shields.io/badge/Python-Automation-blue?style=for-the-badge)
![NodeJS](https://img.shields.io/badge/Node.js-Testing-green?style=for-the-badge)
![Maven](https://img.shields.io/badge/Maven-Build-orange?style=for-the-badge)
![Backup](https://img.shields.io/badge/Backup-Automated-lightgrey?style=for-the-badge)
![Dark-Theme](https://img.shields.io/badge/Dark%20Theme-Enabled-000000?style=for-the-badge)
![Cloud-Ready](https://img.shields.io/badge/Cloud%20Ready-AWS%2FAzure%2FGCP-9cf?style=for-the-badge)

## 🎯 Visão Geral

Este projeto fornece um ambiente Jenkins completo e pré-configurado para automação de testes e pipelines de QA, containerizado com Docker e pronto para produção.

### ✅ **Benefícios Principais**
- ⚡ **Setup Zero**: Configuração automática sem wizard inicial
- 🧩 **Plugins Pré-instalados**: 70+ plugins essenciais para QA
- 🐳 **Docker-in-Docker**: Execução de containers dentro do Jenkins
- ☁️ **Cloud Ready**: Pronto para deploy em AWS, Azure, GCP ou localhost
- 💾 **Backup Automatizado**: Scripts de backup e recuperação

## 🚀 Quick Start

```bash
# 1. Clone o projeto
git clone https://github.com/seu-usuario/qualityops.git
cd qualityops

# 2. Execute o deployment
docker-compose up -d --build

# 3. Acesse o Jenkins na porta configurada
```
# 🚀 Funcionalidades
## 🔧 Core Jenkins

* Setup Automático: Sem wizard de configuração inicial
* Docker-in-Docker: Execução de containers Docker em pipelines
* Permissões Configuradas: Usuário Jenkins com acesso root para Docker
* Health Checks: Monitoramento automático de saúde

## 🧪 QA & Testing
* Allure Reports: Relatórios avançados de testes
* JUnit Integration: Suporte nativo a testes unitários
* HTML Publisher: Publicação de relatórios HTML
* Multi-language: Suporte a Java, Python, Node.js

## 🎨 User Experience
* Dark Theme: Interface com tema escuro
* Theme Manager: Gerenciamento de temas
* Custom Folder Icons: Personalização visual
* Bootstrap 5: Interface moderna e responsiva

## ☁️ Cloud Features
* Persistent Data: Volumes nomeados para dados
* Restart Policies: Alta disponibilidade automática
* Network Isolation: Segurança de rede
* Health Monitoring: Checks de saúde automáticos

## 🛠 Stack Tecnológica
| Tecnologia | Versão | Propósito |
|------------|--------|-----------|
| Jenkins | 2.534-jdk17 | CI/CD Server |
| Docker | latest | Containerização |
| Docker Compose | 3.8 | Orquestração |
| Java | JDK 17 | Runtime Jenkins |
| Python 3 | latest | Automação de testes |
| Node.js | latest | Testes JavaScript |
| Maven | latest | Build Java |
| Git | latest | Versionamento |

## 📁 Estrutura do Projeto

```
QualityOps/
├── 📁 scripts/              # Scripts utilitários
│   └── 🔄 backup.ps1        # Sistema de backup
├── 🐳 Dockerfile            # Imagem customizada do Jenkins
├── 🐙 docker-compose.yml    # Orquestração de containers
├── 📋 plugins.txt           # Lista de 70+ plugins
└── 📄 README.md             # Documentação
```

# 📦 Plugins Incluídos
## 🧪 QA & Testing
* allure-jenkins-plugin - Relatórios Allure
* junit - Integração JUnit
* htmlpublisher - Publicação HTML
* performance - Análise de performance
## 🔄 CI/CD & Pipeline
* workflow-aggregator - Pipelines como código
* pipeline-stage-view - Visualização de stages
* docker-workflow - Integração Docker
* git - Controle de versão
## 🎨 Interface & UX
* dark-theme - Tema escuro
* theme-manager - Gerenciador de temas
* custom-folder-icon - Ícones personalizados
* bootstrap5-api - UI moderna
## 🔧 Development Tools
* maven-plugin - Build Maven
* gradle - Build Gradle
* nodejs - Suporte Node.js
* ant - Build Ant
## 📊 Monitoring & Reporting
* build-monitor-plugin - Monitoramento de builds
* metrics - Métricas do sistema
* timestamper - Timestamps em logs
* email-ext - Notificações por email

📋 Lista Completa: [![Plugins](https://img.shields.io/badge/Plugins-70+-blue)](plugins.txt)
