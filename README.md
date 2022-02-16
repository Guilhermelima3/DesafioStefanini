# ⚒ Desafio Técnico Automação – Stefanini
- Automatizar o fluxo de cadastro de usuário.

# 📋 Descrição
- Utilizando o [Site de Testes](http://prova.stefanini-jgr.com.br/teste/qa/), O desafio propõe automatizar a funcionalidade de cadastro de um novo usuário através do formulário.
- Para automação dos testes foi utilizada a linguagem de programação [Ruby](https://www.ruby-lang.org/pt/), juntamente com o Framework [Capybara](https://rubygems.org/gems/capybara).

## Para auxiliar a automação dos testes foram utilizadas as principais Gems:
- Utilizado o [SitePrism](https://rubygems.org/gems/site_prism) com a estrutura de Page Objects.
- Para a elaboração dos cenarios de testes com BDD [Cucumber](https://rubygems.org/gems/cucumber).
- Utilizado a Gem [pry](https://rubygems.org/gems/pry) que faz o papel de um console de desenvolvedor em tempo de execução, para auxiliar na identificação dos erros da automação.
- Para a geração de massa de dados foi utilizado o [Faker](https://rubygems.org/gems/faker).
- Utilizado o [parallel_tests](https://rubygems.org/gems/parallel_tests), para a execução dos cenários de testes em paralelo.
- Utilizado o [report_builder](https://rubygems.org/gems/report_builder), como gerenciador de relatórios.


# 🚀Instalação
## Pré-requisitos
#### Ter instalado no ambiente:
- [Ruby](https://rubyinstaller.org/downloads/)
- [Node.Js](https://nodejs.org/en/).

#### Instalação Ruby:
Para instalar baixar acessar o [link](https://rubyinstaller.org/downloads/archives/)

Fazer o download da versão 2.5.X com o Devkit.
- Instalar no diretório "C:/Ruby25x64";
- Marcar a opção "Add Ruby executables to your Path"
- Marcar a opção "Associate .rb and .rbw files with this Ruby installantion";
- Após abrir o terminal do mingw, selecionar a opção 1 para instalar o Devkit;
- Adicionar o ruby nas variavéis de ambiente.
####
Após a instalação faça :
- Iniciar a instalação das Gem's
```
Executar os seguintes comandos:
1 - gem install win32console
2 - gem install bundler
3 - gem install ruby-debug-ide

```
####
- Instalando e configurando o [ChromeDriver](https://chromedriver.chromium.org/downloads) e [Geckodriver](https://github.com/mozilla/geckodriver/releases)
```
Executar os seguintes comandos após o download :
1 - Extrair o zip e adicionar o arquivo .exe no diretório “C:\Versão-Ruby\bin”
2 - npm config set strict-ssl false
3 - npm install -g chromedriver
4 - npm install -g geckodriver
```

## Instalando Depedências
- Após a devida configuração em sua máquina, acesse o diretório do projeto pelo **cmder** ou **powershell** e digite o comando abaixo:
```
- bundle install

```
- Após esse comando ser executado será instalado todas as dependências necessárias para a execução do projeto.

## Executando os testes
- Para a execução utilize um dos comandos abaixo:
```
 - Execução padrão: bundle exec cucumber
 - Execução com chrome: bundle exec cucumber -p chrome
 - Execução com chrome em headless: bundle exec cucumber -p chrome_headless
 - Execução com firefox: bundle exec cucumber -p firefox
 - Execução em paralelo: bundle exec cucumber -p parallel
 - Execução por cenário específico: bundle exec cucumber -t @tag_do_cenário

```
## Visualizar o relatório
 - No diretório do projeto acesse a pasta **“.\reports”** e abra o arquivo **.html** para visualizar o relatório da execução dos testes após a execução.

 Exemplo Relatório:
![report][report]

[report]: report.gif

# 📌 Autor/Contato

| [<img src="https://avatars1.githubusercontent.com/u/62215470?s=460&u=c6dc439e77463ced6dd781733712708b5fbdde65&v=4" width=115><br><sub>@Guilhermelima3</sub>](https://github.com/Guilhermelima3) |
| :---: |

- E-mail: guilhermel_ima@hotmail.com
---
