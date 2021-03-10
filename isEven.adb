with Ada.Integer_Text_IO;
use ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure isEven is
N : Integer;
begin
   Get(N);
   if ( N mod 2 = 0 ) then
     Put("Is even ");
   else
      Put_Line("Is odd");
   end if;

end isEven;
