with Ada.Text_IO; use Ada.Text_IO;
generic
   type Item is (<>);
   type Index is (<>);
package Conveyer_System is
   type Conveyor (Max: Positive) is limited private;
   procedure Move_Robot( C: in out Conveyor; E: in Index );
   procedure Put( C: in out Conveyor; E: in Item );
   procedure Show( C: in out Conveyor );
   function Get(C: Conveyor ) return Item;

private
   type TArray is array( Integer range <> ) of Item;

   type Conveyor(Max: Positive) is record
      Items: TArray(1..Max);
      Robot_Position: Index;
   end record;

end Conveyer_System;
