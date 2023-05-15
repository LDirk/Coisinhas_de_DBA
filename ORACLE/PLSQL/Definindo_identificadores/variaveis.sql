-- Identificadores é o nome dados para constantes, variáveis, exceções, cursores, procedures, funções e packages.

SET SERVEOUTPUT ON 

DECLARE 

    NUMERO  NUMBER(11,2) := 1200.50;

BEGIN 
    DBMS_OUTPUT.PUT_LINE('Numero = ' || NUMERO); 
END;

--------------------------------------------------------------------
DECLARE  
    ESTADO VARCHAR2(100) := 'Rio De Janeiro';
    CIDADE VARCHAR(100) := 'NITEROI';

BEGIN
    DBMS_OUTPUT.PUT_LINE(ESTADO || ' - ' || CIDADE);
END; 

--------------------------------------------------------------------
DECLARE 
    DATA1 DATE := TO_DATE ('20/10/93','DD/MM/RR');
    DATA2 DATE := TO_DATE ('20/10/1993', 'DD/MM/YYYY');
BEGIN 
    DBMS_OUTPUT.PUT_LINE(DATA1 || ' igual a ' || DATA2);
END;