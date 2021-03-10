with Ada.Integer_Text_IO;
use ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

function myFunc(N : Positive) return Positive is
   fact : Positive;
begin
   fact := 1;
   for I in 2..N loop
      fact := fact * I;
   end loop;

   return fact;
end myFunc;
