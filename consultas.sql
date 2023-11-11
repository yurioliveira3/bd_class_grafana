-- Desempenho de Vendas por Produto.
SELECT 
    pd.title AS "Produto",
    pd.price AS "Preço Real",
    od.total_amount AS "Preço Venda"
FROM 
    f_orders AS od 
JOIN 
    d_products AS pd on (od.d_product_id = pd.id)
ORDER BY 
    od.total_amount DESC,
    pd.price DESC
;   

-- Receita ao Longo do Tempo.
SELECT 
    cal."date" AS "Data",
    od.total_amount  as "Valor Total"
FROM    
    f_orders AS od 
JOIN 
    d_calendar AS cal ON (od.d_calendar_id = cal.id)
ORDER BY 
    cal."date" 
;
    
-- Perfil dos Clientes.
SELECT 
    (CASE tx_id_type
        WHEN 1 THEN 'CNPJ'
        WHEN 2 THEN 'CPF'
        ELSE 'Revisar'
    END) AS "Tipo Cli.",
    COUNT(0) AS "Total"
FROM 
    d_customers AS dc 
GROUP BY 
    tx_id_type 
;

-- Descontos e Aumentos.
SELECT 
    cal."date" AS "Data",
    od.increase AS "Acréscimo",
    od.discount AS "Desconto"
FROM    
    f_orders AS od 
JOIN 
    d_calendar AS cal ON (od.d_calendar_id = cal.id)
;

-- Dia do mês com mais vendas.
SELECT 
    "day",
    COUNT(0)
FROM 
    d_calendar dc 
GROUP BY 
    dc."day" 
ORDER BY 
    COUNT(0)
LIMIT 1
;

-- Distribuição de lojas por país.
SELECT DISTINCT  
    st.country AS "País"
FROM 
    f_orders AS od 
JOIN    
    d_stores AS st on (od.d_store_id = st.id)
ORDER BY 
    st.country
;