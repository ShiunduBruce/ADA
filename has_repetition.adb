function Has_Repetition ( V: Vector ) return Boolean is
   prev : Elem := V( V'First );
begin
    for I in V'Range loop
      if I /= V'First then
         if V(I) = prev then
            return True;
         end if;
      end if;
      prev := V(I);
   end loop;
    return False;
end Has_Repetition;
