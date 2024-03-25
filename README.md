# Projeto de Demonstração do Grafana com PostgreSQL

Este projeto consiste em um exemplo prático para demonstrar o uso do Grafana em conjunto com um banco de dados PostgreSQL. Durante uma aula prática, foram apresentados conceitos básicos do Grafana, bem como a construção de uma pequena dashboard utilizando consultas SQL ao banco de dados PostgreSQL fornecido.

## Configuração do Ambiente

Este projeto utiliza Docker para facilitar a configuração do ambiente. O arquivo `docker-compose.yml` contém a configuração para dois serviços:

- **grafana**: Contém a imagem do Grafana Enterprise, configurada para reiniciar automaticamente e com mapeamento de volumes para armazenamento persistente e mapeamento de porta para acesso à interface web.
- **postgresql**: Contém a imagem do PostgreSQL, configurada com um script de inicialização e mapeamento de volumes para armazenamento persistente dos dados.

Para iniciar os serviços, execute o seguinte comando:

docker-compose up -d


## Consultas SQL

O banco de dados PostgreSQL inclui um conjunto de consultas SQL que foram utilizadas para construir a dashboard de exemplo. Essas consultas estão disponíveis no arquivo `consultas.sql` e incluem:

- Desempenho de Vendas por Produto
- Receita ao Longo do Tempo
- Perfil dos Clientes
- Descontos e Acréscimos
- Dia do Mês com Mais Vendas
- Distribuição de Lojas por País

Essas consultas servem como base para a construção de visualizações na dashboard do Grafana.

## Utilização

Após iniciar os serviços Docker e garantir que o Grafana esteja acessível através da porta 3000, você pode acessar a interface web do Grafana em seu navegador e importar as consultas SQL como fontes de dados para criar visualizações e dashboards personalizadas.
