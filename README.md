# SQL Product Thinking

Repositório de queries SQL organizadas por **pergunta de produto** — não por conceito técnico.
Cada query segue a estrutura: pergunta de negócio → contexto → métrica → conceito SQL aplicado.

## Sobre
Rafael Macedo · Sr. Product Manager
Trilha de especialização em Data Product Management

## Índice de queries

| # | Pergunta de produto | Conceito SQL | Nível |
|---|---|---|---|
| [01](001_low_fat_and_recyclable_products.sql) | Quais produtos são simultaneamente recicláveis e low-fat? | SELECT · WHERE · AND | Básico |
| [02](002_customers_not_referred_by_customer_2.sql) | Quais clientes não foram indicados por um referral específico? | WHERE · OR · NULL | Básico |
| [03](003_big_countries.sql) | Quais países têm escala territorial ou populacional relevante para entrada de mercado? | SELECT · OR · Comparadores | Básico |
| [04](004_authors_viewing_own_articles.sql) | Quais autores consomem o próprio conteúdo? | DISTINCT · ORDER BY | Básico |
| [05](005_invalid_tweets.sql) | Quais publicações excedem o limite de caracteres permitido? | LENGTH | Básico |
| [06](006_employee_unique_id.sql) | Qual identificador único está associado a cada colaborador? | LEFT JOIN | Básico |
| [07](007_customers_without_transactions.sql) | Quais clientes visitaram mas não converteram? | LEFT JOIN · IS NULL · GROUP BY · COUNT | Intermediário |
| [08](008_rising_temperature.sql) | Em quais dias uma métrica subiu em relação ao dia anterior? | Self Join · Alias · DATEDIFF | Intermediário |
| [09](009_average_process_time_per_machine.sql) | Qual o tempo médio de processamento por máquina/ativo? | Self Join · AVG · GROUP BY · ROUND | Intermediário |

## Sobre a abordagem
Cada arquivo `.sql` documenta, em comentário, a pergunta de negócio que motiva a query antes da implementação técnica — reflexo de como Product Managers devem abordar dados: partindo da decisão a ser tomada, não da sintaxe.
