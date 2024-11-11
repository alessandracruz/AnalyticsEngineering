# Projeto Final - Engenharia Analitica
> *Turma 11080 - Santander Coders 2024 - Engenharia de Dados*

Desenvolvimento do projeto "Airbnb" com o intuito de extrair e trasformar dados do site [AirbnbInside](http://insideairbnb.com/) relacionado a hospedagem na cidade do rio de janeiro, o dados serao carregados em banco de dados 
postgress e tratados utilziando DBT para obtencao de insight de negocio na camada gold.

**Todo projeto foi desenvolvido com a linguagem de programação Python e utilziando framework Dbt.**

## ✒️Autores 
- [Alessandra Cruz](https://github.com/alessandracruz)
- [Álex Buracosky](https://github.com/aburacosk)
- [Diana Osorio](https://github.com/diana468)
- [Diogo Moura](https://github.com/HyogoMoura)
- [Felipe Zanardo](https://github.com/FelipeBZanardo)
- [Thiago Silva](https://github.com/thiagodemedeiros)

## 📋 Enunciado do Projeto

Introdução à Base de Dados do Airbnb

O conjunto de dados "Inside Airbnb", disponível no website "http://insideairbnb.com/", é uma valiosa fonte de informações sobre listagens de hospedagem, avaliações de hóspedes e disponibilidade de calendário em várias cidades ao redor do mundo, incluindo o Rio de Janeiro. Antes de prosseguirmos com a engenharia de dados, é importante entender os principais componentes deste conjunto de dados:

1. **Listing (Listagem):** Este conjunto de dados contém informações detalhadas sobre as propriedades listadas no Airbnb. Cada registro representa uma listagem individual e inclui informações como o tipo de propriedade, preço, localização, número de quartos, comodidades oferecidas e muito mais.

2. **Reviews (Avaliações):** O conjunto de dados de avaliações contém informações sobre as avaliações feitas por hóspedes que ficaram nas propriedades listadas. Ele inclui dados como a data da avaliação, o identificador da propriedade, os comentários escritos pelos hóspedes, e outras informações.

3. **Calendar (Calendário):** Este conjunto de dados contém informações sobre a disponibilidade das propriedades ao longo do tempo. Ele lista as datas em que as propriedades estão disponíveis para reserva, bem como os preços para cada data.

O dicionário dos dados também está disponível no website: "http://insideairbnb.com/".


## 📝 Descrição do Projeto

1. **Aquisição de Dados e Armazenamento de Dados em PostgreSQL - Camada Bronze**
   - Baixe o conjunto de dados "Inside Airbnb" do Rio de Janeiro da fonte oficial (http://insideairbnb.com/) e promova uma estruturação simples nos dados.
   - Crie um banco de dados PostgreSQL para armazenar os dados brutos das 3 tabelas ("Listing", "Reviews" e Calendar") na camada "bronze".

2. **Data Clean - Camada Silver:**
   - Identifique e lide com valores ausentes, duplicatas e outliers nos dados brutos da camada "bronze".
   - Padronize e limpe os nomes das colunas, convertendo-os em um formato consistente.
   - Realize uma limpeza textual em campos, como descrições de propriedades, removendo caracteres especiais e erros de digitação.

3. **Data Quality - Camada Silver:**
   - Defina métricas de qualidade de dados, como integridade, precisão e consistência para os dados da camada "bronze".
   - Implemente verificações para garantir que os dados da camada "silver" estejam em conformidade com essas métricas.
   - Estabeleça um sistema de monitoramento contínuo da qualidade dos dados da camada "silver".

4. **Testes de Qualidade - Camada Silver:**
   - Utilize a biblioteca Great Expectations para criar testes de qualidade automatizados que verifiquem as expectativas definidas para os dados da camada "silver".
   - Desenvolva testes que assegurem que os dados da camada "silver" atendam às regras de negócios e aos requisitos de qualidade.

5. **Transformação de Dados com dbt - Camada Silver:**
   - Utilize a ferramenta dbt para criar a camada "silver" de dados, realizando transformações e preparando os dados da camada em questão.
   - Mantenha um controle de versão dos modelos dbt relacionados à camada "silver" e automatize a execução das transformações.

6. **Armazenamento de Dados em PostgreSQL - Camada Silver:**
   - Armazene os dados da camada "silver" no mesmo banco de dados PostgreSQL.
   - Estabeleça conexões entre o dbt e o PostgreSQL para carregar os dados transformados da camada "silver" no banco.

7. **Validação de Expectativas com Great Expectations - Camada Silver:**
   - Implemente validações adicionais usando Great Expectations nas camadas de dados da camada "silver".
   - Monitore a qualidade dos dados da camada "silver" após cada transformação e ajuste os testes de acordo.

8. **Transformação de Dados com dbt - Camada Gold:**
   - Utilize o dbt para criar a camada "gold" de dados, aplicando agregações especializadas, como médias de preços por propriedade, por período, e outras agregações especializadas.
   - Mantenha um controle de versão dos modelos dbt relacionados à camada "gold" e automatize a execução das transformações.
   - Armazene os dados da camada "gold" no mesmo banco de dados PostgreSQL, mantendo a estrutura de dados otimizada para consultas analíticas.

 9. **Apresentação e Discussão:**
    - Apresente os resultados do projeto para a turma, enfatizando os aspectos de engenharia de dados, qualidade de dados e uso de ferramentas como dbt, Great Expectations e o armazenamento em um banco de dados PostgreSQL nas camadas "bronze", "silver" e "gold".

## 📺 Demonstração


## ☑️  Pré-requisitos
- Ter o DBT instalado
- Ter o postgress instalado de preferencia versao 10 ou superior
- Configura a engine de acesso
- ajustar o profile.yml para o acesso ao banco local



## ⚙️ Passo a passo para executar o projeto:

>**Assistir o vídeo de demonstração do projeto!**

## 🛠️ Tecnologias Utilizas

* [Python](https://www.python.org/) - Linguagem de Programação
* [Postgres](https://www.postgresql.org/)) - Gerenciador de banco de dados
* [dbt](https://www.getdbt.com/)) - Framework de trasformacao de dados

## 🚨 Dificuldades

## 📈 Melhorias futuras:




