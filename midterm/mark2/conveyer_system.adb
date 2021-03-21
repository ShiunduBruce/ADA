package body Conveyer_System is

procedure Move_Robot( C: in out Conveyor; E: in Index ) is
begin
   C.Robot_Position := E;
end Move_Robot;

procedure Put( C: in out Conveyor; E: in Item ) is
begin
   C.Items(C.Robot_Position) := E;
end Put;

procedure Show( C: in out Conveyor) is
begin
   for I in C.Items'Range loop
         Put_Line(Item'Image(C.Items(I) ));
      end loop;

end Show;

function Get(C: Conveyor ) return Item is
begin
   return C.Items(C.Robot_Position);
end Get;
   procedure Run(C: in out Conveyor; A : in Algorithm; n : in Natural) is
      package Random_Item is new Ada.Numerics.Discrete_Random(Item);
      G: Random_Item.Generator;
   begin
      for i in 1..n loop
         for j in A'Range loop
            case A(j) is
               when Move_Left   => Move_Robot(C, Index'Pred(C.Robot_Position));
               when Move_Right  => Move_Robot(C, Index'Succ(C.Robot_Position));
               when Put    => 	Random_Item.Reset(G); Put(C, Random_Item.Random(G));
               when Get    => Put_Line(Item'Image(Get(C)) );

               when others => null;
            end case;
         end loop;
      end loop;

   end Run;

procedure Put_Nothing(C: in out Conveyor) is
begin
   Put_Line("Nothing");
end Put_Nothing;

end Conveyer_System;
