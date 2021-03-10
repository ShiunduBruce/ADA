with Ada.Text_IO;
use Ada.Text_IO;

procedure sum is

   --Compute the sum of the elements of an array in recursive way.
    type Index is new Natural;
    type Elem is new Integer;
    type TArray is array (Index range <>) of Elem;
   type Matrix is array (Index range <>, Index range <>) of Elem;

   function isMaximum ( T: TArray; E : Elem) return Boolean is
    begin
        for I in T'Range loop
            if  E < T(I) then
                return False;
            end if;
        end loop;
        return True;
    end isMaximum;
   function isMinimum ( T: TArray; E : Elem) return Boolean is
    begin
        for I in T'Range loop
            if  E > T(I) then
                return False;
            end if;
        end loop;
        return True;
   end isMinimum;

   function sumRecursive(T : TArray ) return Elem is
   begin
      if T'Length = 1  then
         return T(0);
      else
         return T(T'Last) + sumRecursive(T(T'First..Index'Pred(T'Last) ) );
      end if;
   end sumRecursive;
-- Implement the bubble sort algorithm for sorting an array.
   procedure bubbleSort ( T: in out TArray ) is
        temp: Elem;
   begin
      for I in T'First..Index'Pred(T'Last) loop
         For J in T'First..Index'Pred(T'Last - I) loop
            if T(J) > T(J + 1) then
               temp := T(J);
               T(J ) := T ( J + 1);
               T(J + 1 ) := temp;
            end if;

         end loop;
      end loop;

   end bubbleSort;
  --Compute the sum of the elements of the main diagonal of a square matrix.
   function mainDiagonalSum(M : Matrix ) return Elem is
      sum : Elem := 0;
      begin
      for I in M'Range(1) loop
         for J in M'Range(2) loop
            if( I - M'First(1) )  = (J - M'First(2)) then
               sum := sum +  M(I, J) ;
            end if;

         end loop;

      end loop;
      return sum;
   end mainDiagonalSum;
--19. Find the local maximum elements in a matrix, i.e. the elements that are
   procedure isLocalMaximum( M: Matrix in out ) is;
     --tempRow : TArray;
     --tempCol : TArray;

   begin
      for i in M'Range(1) loop
         for j in M'Range(2) loop
            --tempRow := M (0,0 .. 0, 2);
            --tempCol := M(0,0..2,0);
            New_Line;
         end loop;
      end loop;

   end isLocalMaximum;

   T: TArray := (4, 7, 2, 1, 2, 3);
   I: Matrix := ((0,2, 2),(0,5, 3), (5,1, 0));

begin
   bubbleSort(T);
   for J in T'Range loop
      Put_Line( Elem'Image( T (J)  ) );
   end loop;
   New_Line;
   Put_Line( Elem'Image(mainDiagonalSum(I)) );
end sum;
