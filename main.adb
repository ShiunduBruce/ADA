with Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO;
use Ada.Text_IO;
with Math; use Math;
procedure main is
   B : Positive;
begin
   Get( B );
   Put(sumDigits(B));
   Put_Line("");
   Put_Line(Boolean'Image(isDivisibleByNine(B)));
   Put_Line("");
   Put_Line(Boolean'Image(isPerfectNumber(B)));
   for i in 1..10000 loop
      if isPerfectNumber(i) then
         Put_Line("");
         Put(i);
      end if;
   end loop;
   Put_Line("");
   Put_Line(Boolean'Image(isPalindrome(B)));
end main;
