# 🔵 API Tempo -  Desafio Microsoft Azure CLI

## About
Projeto desenvolvido como desafio da **Microsoft** para praticar **.NET 8**, **Docker** e **Azure CLI**.  
API RESTful que fornece previsões de temperatura fictícias, pronta para deploy em contêineres e integração com serviços em nuvem.

---

## Tecnologias
- **.NET 8 SDK / ASP.NET Core Web API**  
- **Docker** (build e execução de container)  
- **Azure CLI** (para deploy futuro em Azure App Services ou Containers)  
- **Git / GitHub** (controle de versão)

---

## Estrutura do Projeto

api-tempo/
│
├─ Program.cs
├─ api-tempo.csproj
├─ Dockerfile
├─ appsettings.json
└─ Properties/


---

## Endpoints
- **GET** `/WeatherForecast`  
  Retorna JSON com previsões do tempo:
```json
[
  {"date":"2026-02-22","temperatureC":-12,"summary":"Mild","temperatureF":11},
  {"date":"2026-02-23","temperatureC":-12,"summary":"Freezing","temperatureF":11},
  {"date":"2026-02-24","temperatureC":-1,"summary":"Mild","temperatureF":31},
  {"date":"2026-02-25","temperatureC":38,"summary":"Warm","temperatureF":100},
  {"date":"2026-02-26","temperatureC":51,"summary":"Cool","temperatureF":123}
]
Como Rodar
Localmente
cd /c/Users/Yanes/Desktop/Java/api-tempo
dotnet run
# Acessar: http://localhost:5144/WeatherForecast
Usando Docker
docker build -t api-tempo .
docker run -p 8080:8080 api-tempo
# Acessar: http://localhost:8080/WeatherForecast
Azure CLI

Exemplo de comandos para deploy em Azure App Service ou Container Registry:

# Login no Azure
az login

# Criar resource group
az group create --name api-tempo-rg --location eastus

# Criar App Service ou Container Registry
az webapp create --name api-tempo-app --resource-group api-tempo-rg --plan myAppServicePlan --deployment-container-image-name api-tempo:latest

# Fazer deploy da imagem Docker
az webapp config container set --name api-tempo-app --resource-group api-tempo-rg --docker-custom-image-name api-tempo:latest
Observações

Desafio focado em API em .NET 8, contêinerização com Docker e preparação para nuvem com Azure CLI.

Endpoint /WeatherForecast serve como teste principal do retorno JSON.
