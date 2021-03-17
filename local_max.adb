with Ada.Float_Text_IO, Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Float_Text_IO, Ada.Text_IO, Ada.Integer_Text_IO;
with Matrix_pack; use Matrix_pack;

procedure Local_Max is

   function num_Of_Local_Maxs (A: Matrix) return Integer is
      N : Integer := 0;
      E : Elem := 0;
      Column : Index;
      Raw : Index;
   begin
      for I in A'Range(1) loop
         for J in A'Range(2) loop
            if E < A(I,J) then
               E := A(I,J);
               Column := J;
            end if;
         end loop;
         for J in A'Range(1) loop
            if E > A(J,Column) then
               E := A(J,Column);
               Raw := J;
            end if;
         end loop;
         if I = Raw then
            N := N + 1;
         end if;
      end loop;
      return N;
   end num_Of_Local_Maxs;

   M: Matrix := ((11,22,33,44,55),(1,8,3,8,8),(10,10,20,30,1));

begin
   Put(num_Of_Local_Maxs(M));
end Local_Max;
