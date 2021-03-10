with Ada.Integer_Text_IO;
use ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure maxThree is
A, B, C, N, Sum : Integer;
begin
   Get(A);
   GET(B);
   GET(C);

   Put_Line("The maximu of the three numbers is : ");

   if(A > B and A > C ) then
      Put( A );
   elsif( B > C and B > A) then
      Put(B);
   else
      Put(C);
   end if;
   Put_Line("");
   Get(N);

   Sum := 0;
   for I in 1..N loop
      Sum := Sum + I;
   end loop;

   Put_Line("The sum of numbers in given range is:");
   Put(Sum);
end maxThree;
