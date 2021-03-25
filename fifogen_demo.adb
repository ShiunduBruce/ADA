with FifoGen, Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Fifogen_Demo is

   package IFifo is new FifoGen(Integer);
   use IFifo;
    V: Fifo;
    X: Integer;
begin
    for I in reverse 1..10 loop
       Push(V, I);
   end loop;
   for I in 1..10 loop
       Pop(V,X);
      put(X);
   end loop;

  -- Pop(V, X);
end Fifogen_Demo;
