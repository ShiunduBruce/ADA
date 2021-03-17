with Ada.Float_Text_IO, Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Float_Text_IO, Ada.Text_IO, Ada.Integer_Text_IO;
with Count;

procedure count_demo is

   type Grid is array (Integer range <>, Integer range <>)  of Natural;
   M: Grid := ((11,0,0,0,0),(0,0,0,0,9));

   function has_More_Than_Three(e: Natural) return Boolean is
   begin
        return e > 3;
   end has_More_Than_Three;

   function my_count is new Count(Integer, Natural, Grid, has_More_Than_Three);
begin
   Put(my_count(M) );
end count_demo;
