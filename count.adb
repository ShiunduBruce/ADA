function Count ( G: Grid) return Natural is
   count : Natural := 0;
begin
   for i in G'Range(1) loop
      for j in G'Range(2) loop
         if has_given_Property(G(i, j)) then
            count := count + 1;
         end if;
      end loop;
   end loop;
   return count;
end Count;

