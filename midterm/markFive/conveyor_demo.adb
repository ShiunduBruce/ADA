with Conveyer_System, Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;

procedure conveyor_demo is
   type Toys is (Nothing, Car, Doll, Ball);

   procedure PutStir is
   begin
      Put_Line(" * ");
   end PutStir;

   package conv is new Conveyer_System(Toys, Positive, PutStir);
C: conv.Conveyor(8);
type Command is (Move_Left, Move_Right, Put, Get);
type Algorithm is array(Index range <>) of Command;
   AA : Algorithm := (Put, Move_Right, Move_Right, Put);
   AB : Algorithm := (Get, Move_Left, Move_Left, Get);
   AC : Algorithm := (Put, Move_Left);
   AD : Algorithm := (Get, Move_Right);
begin
conv.Move_Robot(C,1);
conv.Put(C, Nothing);
conv.Move_Robot(C,2);
conv.Put(C, Car);
conv.Move_Robot(C,4);
conv.Put(C,Doll);
conv.Put(C,Ball);


Run (C, AA, 1);
Show (C);
Run (C, AB, 1);
Show (C);
Run (C, AC, 5);
Show (C);
Run (C, AD, 5);
Show (C);

end conveyor_demo;
