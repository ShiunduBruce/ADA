function Most_Frequent_Two ( V: Vector ) return Elem is
   type TArray is array ( Index range <> ) of Integer;
   my_arr : TArray(V'Range);
   function myMaxIndex(T: TArray) return Index is
      max_elem : Integer := T(T'First);
      max_ind : Index := T'First;
   begin
      for i in T'Range loop
         if T(i) > max_elem then
            max_ind := i;
            max_elem := T(i);
         end if;
      end loop;
      return max_ind;
   end myMaxIndex;


begin
   for I in V'Range loop
      my_arr(I) := 1;
      for P in reverse V(V'First..I)'Range loop
         if P /= I and V(P) = V(I) then
            my_arr(I) := my_arr(P) + 1;
            exit;
         end if;
      end loop;

   end loop;
   return V( myMaxIndex(my_arr) );
end Most_Frequent_Two;
