package body PQueue is

      procedure Push( V: in out Queue; E: in Elem ) is
      begin
          V.tailPointer := V.tailPointer + 1;
          V.Data(V.tailPointer) := E;
      end;

      procedure Pop( V: in out Queue; E: out Elem ) is
      begin
          V.headPointer := V.headPointer + 1;
          E := peek(V);

      end;

      function peek( V: Queue ) return Elem is
      begin
          return V.Data(V.headPointer);
      end;

      function Is_Empty( V: Queue ) return Boolean is
      begin
          return  V.tailPointer = V.headPointer ;
      end;

      function Is_Full( V: Queue ) return Boolean is
      begin
          return V.tailPointer >= V.Max;
      end;

      function Size( V: Queue ) return Natural is
      begin
          return V.tailPointer - V.headPointer;
      end;

end PQueue;
