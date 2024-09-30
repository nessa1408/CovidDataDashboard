# 🌐 Painel Interativo COVID-19 no Brasil

## 📝 Descrição do Projeto
Este é um painel interativo 📊 para monitoramento e análise dos dados epidemiológicos do COVID-19 no Brasil. Utilizando um banco de dados MySQL 💾 e visualizações criadas no Qlik Desktop 📈, o projeto oferece insights valiosos sobre a evolução dos casos, óbitos e recuperações no país.

## 🎯 Objetivos
- 📍 **Visualizar** a evolução dos casos e óbitos de COVID-19 por município, estado e região.
- 🔍 **Identificar** tendências e padrões epidemiológicos para melhor compreensão da pandemia.
- 💡 **Fornecer** suporte à tomada de decisão com dados atualizados e intuitivos.

## 🛠️ Tecnologias Utilizadas
- **Banco de Dados**: MySQL 🗄️  
- **Ferramenta para Inputar Dados**: AlterXZ 🛠️  
- **Ferramenta de Visualização**: Qlik Desktop 📊  
- **Fonte dos Dados**: [Covid Brasil](https://covid.saude.gov.br) 🔗 

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
- Banco de dados utilizado para armazenar os dados epidemiológicos.
- [Baixar MySQL](https://dev.mysql.com/downloads/installer/)

### 2. AlterXZ
- Ferramenta utilizada para realizar a importação de dados no MySQL.
- [Baixar AlterXZ](https://www.alteryx.com/pt-br/designer-trial/free-30-days?)

### 3. Qlik Desktop
- Software de visualização utilizado para criar os dashboards.
- [Baixar Qlik Desktop](https://community.qlik.com/t5/Download-Qlik-Products/tkb-p/Downloads) 

Após baixar e instalar as ferramentas, siga os passos abaixo para configurar o ambiente e executar o projeto.


## 🚀 Como Executar o Projeto

1. **Criação do Banco de Dados**:
   - Clone este repositório:
     ```bash
     git clone https://github.com/vanessa-santana/covid-dados.git
     ```
   - Crie o banco de dados MySQL com o script e tabelas necessárias `create_database.sql` que está na pasta SQL.

2. **Importação dos Dados**:
   - Use a ferramenta **AlterXZ** para carregar os dados brutos do site [Covid Brasil](https://covid.saude.gov.br) para as tabelas no MySQL.
   - Abra o AlterXZ.
   - Navegue até a pasta alterxz/ do projeto e abra o arquivo covid_data_import.alrxz.
   - Altere o caminho dos arquivos CSV de entrada para os que estão na pasta data/raw do projeto:
        Exemplo: Atualize de C:\Users\SeuUsuario\Documentos\CSV\arquivo.csv para data/raw/arquivo.csv.
    - Execute o fluxo para carregar os dados no banco de dados MySQL.
    - Após a execução bem-sucedida, os dados estarão carregados no banco de dados e prontos para serem utilizados no painel.

3. **Configuração do Painel no Qlik Desktop**:
   - Abra o **Qlik Desktop** e conecte ao banco de dados MySQL.
   - Carregue os dados no Qlik.

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
