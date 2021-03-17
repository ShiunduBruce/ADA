procedure Migrate (G: Grid in out; max : Natural in) is
   function mig(i : Index; j : Index; k: Index, p: Index; max: Natural; G: Grid) return Grid is
      diff : Natural;
      change : Natural;
      current : Natural := G(i,j);
      neighbour : Natural := G(k, p);
   begin
      if current > max and neighbour < max then
         change := max - neighbour;
         diff := current - max;
         if change <= diff then
            G(k, p) :=  max;
            G(i,j) := G(i,j) - change;
         else
            G(k, p) := G(k, p) + diff;
            G(i,j) := max;
         end if;
      end if;
      return G;
   end mig;

begin
   for i in G'Range(1) loop
      for j in G'Range(2) loop
         if i /= G'Range(1)'First and j /= G'Range(2)'First then
            mig(i, j
         end if;
      end loop;
   end loop;
   return count;
end Migrate;
