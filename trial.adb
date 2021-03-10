with Ada.Text_IO; use Ada.Text_IO;

procedure Trial is
   type String is array (Positive range <>) of Character;
   A : String (1 .. 11) := "Hello World";
   --type Days is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
   type Date is record
      Day : Integer range 1 .. 31;
      Year : Integer range 1 .. 3000 := 2032;
   end record;
   Some_Day : Date;
begin
   --Put_Line(String'Image(A));
   for I in A'Range loop
      Put (A (I));
   end loop;
   New_Line;
   Some_Day.Day := 3;
   Put_Line ("Day:" & Integer'Image (Some_Day.Day)  & ", Year:"
             & Integer'Image (Some_Day.Year));

end Trial;
