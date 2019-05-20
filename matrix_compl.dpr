program matrix_compl;

{$APPTYPE CONSOLE}

uses
  SysUtils, Matrix_Op in 'Matrix_Op.pas';


  const n=3;
   var matrix1,matrix2,matrix3: MatrixType;
       scalar: integer;
       i,j,k:integer;
begin

writeln('Vvedite matricu 1');
    for i:=1 to n do
      for j:=1 to n do
      read(matrix1.dimensions[i,j]);
      writeln;


writeln('Vvedite matricu 2');
    for i:=1 to n do
      for j:=1 to n do
      read(matrix2.dimensions[i,j]);
      writeln;


writeln('Slogenie');
    matrix3:=Add(matrix1, matrix2);
    for i:=1 to n do
      begin
             for j:=1 to n do
               write(matrix3.dimensions[i,j],' ');
               writeln;
              end;
              writeln;



writeln('Umnogenie');
    matrix3:=Multiply(matrix1, matrix2);
    for i:=1 to n do
      begin
             for j:=1 to n do
               write(matrix3.dimensions[i,j],' ');
               writeln;
              end;
              writeln;

writeln('Umnogenie na chislo');
writeln('Vvedite choslo na kotoroe nugno umnogit');
readln(scalar);
    matrix3:=ScalarMultiply(matrix1,scalar);
    for i:=1 to n do
      begin
             for j := 1 to n do
               write(matrix3.dimensions[i,j],' ');
               writeln;
              end;
              writeln;

    matrix3:=ScalarMultiply(matrix2,scalar);
    for i:=1 to n do
      begin
             for j := 1 to n do
               write(matrix3.dimensions[i,j],' ');
               writeln;
              end;
      readln(k);
      readln;

end.
