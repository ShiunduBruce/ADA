-- Write a Bag type (you can store multiple elements opposite to the set).
--The bag can contain elements in the 1..100 interval.
--Define the insert_one, insert_multiple, extract_one, extract_multiple,
--is_empty, print operations.
 --hint: The index type can be the above interval.
package PBag is

      subtype Elem is Integer;

      type Bag (Max: Positive) is limited private;

      procedure Push( V: in out Stack; E: in Elem );
      procedure Pop( V: in out Stack; E: out Elem );
      function Top( V: Stack ) return Elem;
      function Is_Empty( V: Stack ) return Boolean;
      function Is_Full( V: Stack ) return Boolean;
      function Size( V: Stack ) return Natural;

private
      type TArray is array( Integer range <> ) of Elem;
      type Stack(Max: Positive ) is record
                                        Data: TArray(1..Max);
                                        Pointer: Natural := 0;
                                    end record;
end PStack;
