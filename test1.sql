SET SERVEROUTPUT ON

+DECLARE
  s VARCHAR2(20):= 'Not Found!';
BEGIN
  SELECT o.country_name 
  INTO s 
  FROM COUNTRIES o 
  WHERE o.COUNTRY_NAME like 'Br%';
  DBMS_OUTPUT.enable;
  DBMS_OUTPUT.put_line(s);
END;
