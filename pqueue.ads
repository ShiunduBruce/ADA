--22. Write a simplified queue type where extracting an element from the queue
--is always done at the first position of the array used as representation.

package PQueue is

      subtype Elem is Integer;
      type Queue (Max: Positive) is limited private;

      procedure Pop( V: in out Queue; E: out Elem );
      function peek( V: Queue ) return Elem;
      procedure Push( V: in out Queue; E: in Elem );
      function Is_Empty( V: Queue ) return Boolean;
      function Is_Full( V: Queue ) return Boolean;
      function Size( V: Queue ) return Natural;

private
      type TArray is array( Integer range <> ) of Elem;
      type Queue(Max: Positive ) is record
                                        Data: TArray(1..Max);
                                        tailPointer: Natural := 0;
                                        headPointer: Natural := 0;

                                    end record;
end PQueue;
