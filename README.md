# 🌐 Painel Interativo COVID-19 no Brasil

## 📝 Descrição do Projeto
Este projeto visa criar um painel interativo para monitoramento dos dados epidemiológicos de COVID-19 no Brasil, utilizando uma arquitetura que envolve banco de dados MySQL e visualizações com Qlik Sense. O Alteryx foi utilizado exclusivamente para realizar o input dos dados no banco. A seguir, você encontrará todas as instruções para replicar o ambiente e explorar as informações.

## 🎯 Objetivos
- 📍 **Visualizar** a evolução dos casos e óbitos de COVID-19 por município, estado e região.
- 🔍 **Identificar** tendências e padrões epidemiológicos para melhor compreensão da pandemia.
- 💡 **Fornecer** suporte à tomada de decisão com dados atualizados e intuitivos.

## 🛠️ Tecnologias Utilizadas
- **MySQL**: Armazenamento e consulta de dados epidemiológicos.
- **XAMPP**: Servidor local para execução do MySQL, facilitando a configuração do ambiente de desenvolvimento.
- **Alteryx**: Ferramenta usada para inserir os dados no banco MySQL a partir dos arquivos CSV brutos.
- **Qlik Sense**: Criação de gráficos, dashboards e relatórios dinâmicos.
- **Fonte dos Dados**: [Covid Brasil](https://covid.saude.gov.br) 🔗 

## 📂 Estrutura do Projeto
- ```data/raw```: Contém os arquivos CSV brutos baixados do site Covid Brasil.
- ```data/processed```: Contém os arquivos de saída de algumas tabelas do banco, gerados pelo fluxo Alteryx, que foram utilizados para pegar os IDs das regiões e municípios, etc. Esses IDs foram essenciais para relacionar as tabelas e garantir a integridade dos dados no banco.
- ```Dashboard```: Painel .qvf criado no Qlik Sense para visualização dos dados.
- ```SQL```: Scripts SQL para criação das tabelas e inserção dos dados no banco.
- ```Extensions Qlik```: Pasta contendo extensões personalizadas de gráficos e objetos visuais usadas no Qlik Sense para aprimorar o painel.

## 🗂️ Estrutura do Banco de Dados
O banco de dados foi modelado para suportar as seguintes tabelas:

| Tabela                        | Descrição                                        |
|-------------------------------|--------------------------------------------------|
| **regioes_pais**              | Informações das regiões do Brasil                |
| **regioes_estado**              | Informações das regiões dos estados              |
| **estados**                   | Dados dos estados brasileiros                    |
| **municipios**                | Informações detalhadas dos municípios            |
| **dados_epidemiologicos**     | Dados diários dos casos e óbitos por município   |
| **classificacao_localidade**  | Classificação das localidades (Interior/Metropolitano) |


## 📥 Pré-requisitos e Instalação
Antes de executar o projeto, certifique-se de instalar as seguintes ferramentas:

### 1. MySQL
- [Baixar MySQL](https://dev.mysql.com/downloads/installer/)

### 2. AlterXZ.
- [Baixar AlterXZ](https://www.alteryx.com/pt-br/designer-trial/free-30-days?)

### 3. Qlik Desktop
- [Baixar Qlik Desktop](https://community.qlik.com/t5/Download-Qlik-Products/tkb-p/Downloads) 

### 4. XAMPP
- [Baixar XAMPP](https://www.apachefriends.org/pt_br/download.html)

Após baixar e instalar as ferramentas, siga os passos abaixo para configurar o ambiente e executar o projeto.


## 🛠️ Configuração do Ambiente

**1. Preparação do Banco de Dados com XAMPP**
- Inicie o MySQL no painel de controle do XAMPP.
- Clone este repositório:

     ```bash
     git clone https://github.com/vanessa-santana/covid-dados.git
     ```
- Crie o banco de dados MySQL com o script e tabelas necessárias `create_database.sql` que está na pasta SQL.

**2. Carregamento dos Dados no Banco com Alteryx**
- Os arquivos CSV com os dados brutos estão localizados na pasta ```data/raw```.
- Abra o fluxo Alteryx .alrxz na pasta alterxz e altere os caminhos dos arquivos CSV para apontar para a pasta ```data/raw``` local no seu ambiente.
- Utilize também os arquivos ```data/processed``` no fluxo Alteryx para buscar os IDs das regiões e municípios que foram previamente processados.
- Execute o fluxo para carregar os dados diretamente no banco MySQL configurado no XAMPP.

Observação: O Alteryx foi utilizado apenas para facilitar a inserção dos dados no banco. Após a configuração inicial, todo o processamento e análise dos dados foram realizados com o MySQL e o Qlik Sense.

**3. Criação do Painel no Qlik Sense**
- Abra o Qlik Sense Desktop e importe o arquivo ```Dashboard/covid_dashboard.qvf```.
- Conecte o Qlik Sense ao banco de dados covid19_brasil criado no XAMPP.
- Verifique a pasta Extensions Qlik para adicionar as extensões personalizadas utilizadas no painel.
- Atualize os gráficos e tabelas no painel para carregar os dados diretamente do MySQL.

## 🏆 Principais Métricas
- **Taxa de Mortalidade**: Calculada com base no número de óbitos e casos confirmados.
- **Óbitos Acumulados**: Número de óbitos acumulado ao longo do tempo.
- **Casos Acumulados**: Número de casos acumulado ao longo do tempo.
- **Recuperados**: Número de pessoas que se recuperaram.

## 🔄 Próximos Passos
- 🔧 Atualizar automaticamente o painel com novos dados.
- 🤖 Integrar análises preditivas com Machine Learning.

## 🤝 Contribuição
Se você deseja contribuir para este projeto, siga os passos abaixo:
- Fork o repositório.
- Crie uma nova branch (`git checkout -b feature/nome-da-sua-feature`).
- Faça suas alterações e commite (`git commit -m 'Adiciona uma nova feature'`).
- Faça o push da sua branch (`git push origin feature/nome-da-sua-feature`).
- Abra um Pull Request.

Toda contribuição é bem-vinda! 🎉

## 💬 Contato
Se tiver dúvidas, sugestões ou quiser contribuir, entre em contato:

- ✨ **Vanessa Santana** - [LinkedIn](https://www.linkedin.com/in/santana-vanessa)  
- 📧 **Email**: vanessadossantos1408@gmail.com  
