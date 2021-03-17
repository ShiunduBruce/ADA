package body PBag2 is

   procedure Add( B: in out Bag; E: in Elem ) is
      index : Integer := index_of(B, E);
   begin
      if index /= -1 then
         B.Data(index).multiplicity := B.Data(index).multiplicity + 1;
      else
         B.Pointer := B.Pointer + 1;
         B.Data(B.Pointer).element := E;
         B.Data(B.Pointer).multiplicity := 1;
      end if;
   end Add;
   procedure Remove( B: in out Bag; E: in Elem ) is
      index : Integer := index_of(B, E);
   begin
      if index /= -1 and B.Data(index).multiplicity > 0 then
         B.Data(index).multiplicity := B.Data(index).multiplicity - 1;
      end if;
   end Remove;
   function Multiplicity( B: Bag; E: Elem ) return Natural is
      index : Integer := index_of(B, E);
   begin
      if index /= -1 then
         return B.Data(index).multiplicity;
      end if;
      return 0;
   end Multiplicity;
   function index_of(B: Bag; E: Elem) return Integer is
   begin
      for i in B.Data'Range loop
         if B.Data(i).element = e then
            return i;
         end if;
      end loop;
      return -1;
   end index_of;
   procedure For_Each( B: in Bag ) is
   begin
      for I in B.Data'First .. B.Data'Last loop
         if(B.Data(I).multiplicity /= 0) then
            Process_Elem( B.Data(I).element, B.Data(I).multiplicity);
         end if;
      end loop;
   end For_Each;
end PBag2;
