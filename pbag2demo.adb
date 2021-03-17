with PBag2, Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;

procedure Pbag2demo is

package Ibag is new PBag2(Integer);

   procedure Put_ELEMS( elem: Integer; mult : Natural ) is
      total : Integer := elem * mult;
begin
      Put(elem); Put(" "); Put(mult); Put(" "); Put(total);
      New_Line;
end Put_ELEMS;

procedure Put_Bag is new Ibag.For_Each(Put_ELEMS);

B: Ibag.Bag(8);

begin
Ibag.Add(B,3);
Ibag.Add(B,66);
Ibag.Add(B,3);
Ibag.Add(B,7);
Ibag.Add(B,7);
   Put_Bag(B);
   New_Line;
   Ibag.Remove(B,3);
   Put_Bag(B);

end Pbag2demo;
