generic
      type Elem is private;
package PBag2 is
   type Bag (Max: Positive) is limited private;
   procedure Add( B: in out Bag; E: in Elem );
   procedure Remove( B: in out Bag; E: in Elem );
   function Multiplicity( B: Bag; E: Elem ) return Natural;
   generic
      with procedure Process_Elem(ele: in Elem; mult : Natural );
      procedure For_Each( B: in Bag);
private
   type  Item is record
      element : Elem;
      multiplicity : Natural;
   end record;

   type TArray is array( Integer range <> ) of Item;

   type Bag(Max: Positive ) is record
      Data: TArray(1..Max);
      Pointer: Natural := 0;
   end record;

   function index_of(B: Bag; E: Elem) return Integer;
end PBag2;
