-- Test viet ham
CREATE OR REPLACE FUNCTION add(n1 IN number,n2 IN Number)
RETURN number
is
    number_resul number(8);
BEGIN
    number_resul := n1+n2;
    return  number_resul;
end;

-- gi ham
DECLARE
    reslut number(8);
begin
    reslut := add(20,25);
    DBMS_OUTPUT.PUT_LINE(reslut);
end;