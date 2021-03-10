function Most_Frequent ( V: Vector ) return Elem is
   most_freq : Elem := V( V'First );
   max : Natural := 0;
   current_mult : Natural;
begin
   for I in V'Range loop
      current_mult := Mutiplicity(V, V(I) );
      if current_mult > max then
         most_freq := V(I);
         max := current_mult;
      end if;
   end loop;
   return most_freq;
end Most_Frequent;
