CREATE TABLE produto_2 (ID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                        NOME VARCHAR2(30),
                        TIPO VARCHAR2(30),
                        MARCAR VARCHAR2(30));
    
DECLARE
    v_nome produto_2.nome%type := 'Shampoo';
    v_tipo produto_2.tipo%type := 'Higienico';
    v_marcar produto_2.marcar%type := 'Clear Man';
BEGIN
    insert into produto_2 (nome, tipo, marcar) values (v_nome, v_tipo, v_marcar);
    commit;
END;

select * from produto_2;