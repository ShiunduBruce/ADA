-- Write a Bag type (you can store multiple elements opposite to the set).
--The bag can contain elements in the 1..100 interval.
--Define the insert_one, insert_multiple, extract_one, extract_multiple,
--is_empty, print operations.
 --hint: The index type can be the above interval.

package body PBag is

      procedure Push( V: in out Stack; E: in Elem ) is
      begin
          V.Pointer := V.Pointer + 1;
          V.Data(V.Pointer) := E;
      end;

      procedure Pop( V: in out Stack; E: out Elem ) is
      begin
          E := Top(V);
          V.Pointer := V.Pointer - 1;
      end;

      function Top( V: Stack ) return Elem is
      begin
          return V.Data(V.Pointer);
      end;

      function Is_Empty( V: Stack ) return Boolean is
      begin
          return V.Pointer = 0;
      end;

      function Is_Full( V: Stack ) return Boolean is
      begin
          return V.Pointer >= V.Max;
      end;

      function Size( V: Stack ) return Natural is
      begin
          return V.Pointer;
      end;

end PStack;
