/*
Estrutura do bloco anônimo

    [Declare] (Opcional)
            declaração de variáveis, constantes, cursores, exceções, etc 
    
    Begin
            Comandos SQL
            Comandos PL/SQL 
    
    [exception] (opcional)
            Tramento de exceções

*/

-- Blocos anônimos

-- Habilita o DBMS_OUTPUT
SET SERVEROUTPUT ON 

DECLARE
  v_texto VARCHAR2(100) := 'Testando';
BEGIN
  -- Chamando a package DBMS_OUTPUT, pré-desenvolvida pela Oracle
  -- Chamando a procedure PUT_LINE para imprimir alguma coisa
  DBMS_OUTPUT.PUT_LINE(v_texto);

EXCEPTION
  -- O bloco EXCEPTION captura qualquer exceção que possa ocorrer
  -- SQLCODE retorna o código de erro que ocorreu
  WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('Deu ruim: ' || SQLCODE || SQLERRM);
END;



-- Calcular a soma de dois números e calcular a média entre os dois: 

SET SERVEROUTPUT ON  
DECLARE 
    -- 11 DIGITOS E NO Máximo 2 decimais
    NUMBER_1 NUMBER(11,2) := 500; 
    NUMBER_2 NUMBER(11,2) := 900; 
    MEDIAN   NUMBER(11,2); 

BEGIN 
    MEDIAN :=(NUMBER_1 + NUMBER_2)/2; 
    DBMS_OUTPUT.PUT_LINE('A MÉDIA = ' || MEDIAN);
END; 