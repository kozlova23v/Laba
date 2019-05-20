unit Matrix_Op;


interface
  const n=3;

     type
        MatrixType = record     //zapis' poley matrici
          rows: integer;
          cols:integer;
          dimensions: array[1..n,1..n] of integer;
          end;
    function Add (matrix1, matrix2: MatrixType):MatrixType;
    function Multiply (matrix1, matrix2: MatrixType):MatrixType;
    function ScalarMultiply (matrix1: MatrixType; multiple: integer ):MatrixType;


    implementation
  function Add (matrix1, matrix2: MatrixType):MatrixType;
        var i,j:integer;
        matrix3: MatrixType;
          begin
            for i:=1 to n do
              for j:=1 to n do
                 matrix3.dimensions[i,j]:=matrix1.dimensions[i,j]+matrix2.dimensions[i,j];
          Result:=matrix3;     //Slogenie matric
          end;

   

    function Multiply (matrix1, matrix2: MatrixType):MatrixType;
        var i,j,k:integer;
        matrix3: MatrixType;
        begin

           for i:=1 to n do
              for j:=1 to n do
                for k:=1 to n do
                begin
                  matrix3.dimensions[i,j]:=matrix3.dimensions[i,j] + matrix1.dimensions[k,i]*matrix2.dimensions[i,j];
                end;
                Result:=matrix3;     //Umnogenie matric
        end;


    function ScalarMultiply (matrix1: MatrixType; multiple: integer):MatrixType;
        var i,j:integer;
        matrix3: matrixtype;
        begin
          for i := 1 to n do
            for j := 1 to n do
              begin
                matrix3.dimensions[i,j]:=matrix1.dimensions[i,j]*multiple;
                end;
                Result:=matrix3;      //Umnogenie na chislo
        end;

end.
