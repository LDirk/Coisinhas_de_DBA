set serveroutput on  

DECLARE 
    database VARCHAR2(40);
BEGIN 
    database := 'Oracle 19c';
    DBMS_OUTPUT.PUT_LINE('Variável = ' || database);
END; 

-- Ver a estrutura da tabela
SELECT column_name, data_type, data_length
    FROM all_tab_columns
WHERE table_name = 'FUNCIONARIOS'
AND owner = 'ERGON'; 


DECLARE
  vNumero NUMBER(11,2) := 1200.50;
  vCaracterTamFixo CHAR(100) := 'Texto de tamanho fixo de até 32767 bytes';
  vCaracterTamVariavel VARCHAR2(100) := 'Texto de tamanho variável de até 32767 bytes';
  vBooleano BOOLEAN := TRUE;
  vLong VARCHAR2(32760) := 'Texto tamanho variável de até 32760 bytes';
  vRowid ROWID;
  vTimeStamp TIMESTAMP := SYSTIMESTAMP;
  vTimeStampz TIMESTAMP WITH TIME ZONE := SYSTIMESTAMP;
  vCaractereTamFixoUniversal NCHAR(100) := 'Texto de tamanho fixo universal de até 2000 bytes';
  vCaractereTamVariavelUniversal NVARCHAR2(100) := 'Texto tamanho variável universal de até 4000 bytes';
  vNumeroInteiro BINARY_INTEGER := 120;
  vNumeroFloat BINARY_FLOAT := 150000000;
  vNumeroDouble BINARY_DOUBLE := 150000000;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Numero = ' || vNumero);

    IF vBooleano = TRUE
    THEN 
         DBMS_OUTPUT.PUT_LINE('Booleano = ' || 'True');
    ELSE 
         DBMS_OUTPUT.PUT_LINE('Booleano = ' || 'False');
    END IF;     
    
END;

