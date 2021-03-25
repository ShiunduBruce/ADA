with Tree, Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;
procedure Tree2_demo is
   package BT is new Tree(Integer, "<");
   use BT;
   P, x, y: BSTree;
   arr1, arr2, arr3 : TArray(1..10);
   procedure print(A :in TArray) is
   begin
      for i in A'Range loop
      Put(A(i)); Put(" ");
      end loop;
   end print;

begin
   p := Make_Tree( (1, 4, 3, 9, 6, 10,  2, 5, 7, 8) );
   arr1 := InOrder(p);
   print(arr1);
   x := Make_Tree( (15, 14, 13, 19, 16, 10,  12, 15, 17, 18) );
   arr2 := PostOrder(x);
   New_Line;
   print(arr2);
   y := Make_Tree( (67, 34, 43, 59, 66, 10,  72, 85, 97, 8) );
   arr3 := PreOrder(y);
   New_Line;
   print(arr3);

end;
