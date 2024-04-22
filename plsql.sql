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


create or replace procedure create_produto2(
    v_nome produto_2.nome%type,
    v_tipo produto_2.tipo%type,
    v_marcar produto_2.marcar%type)
AS
BEGIN
    insert into produto_2 (nome, tipo, marcar) values (v_nome, v_tipo, v_marcar);
    commit;
END create_produto2;

begin
    create_produto2('Shampoo', 'Higienico', 'Head And Shoulder');
end;
call create_produto2('Teclado', 'Periferico', 'HyperX');
exec create_produto2('Mouse', 'Periferico', 'Logitech');


create or replace procedure delete_produto2(
    v_id_produto produto_2.id%type)
AS
BEGIN
    delete produto_2 where id=v_id_produto;
    commit;
END delete_produto2;

call delete_produto2(3);


create or replace procedure update_produto2(
    v_id_produto produto_2.id%type,
    v_nome_produto produto2.nome%type
)
AS
BEGIN
    update produto_2 set nome=v_nome_produto where id=v_id_produto;
    commit;
END update_produto2;
