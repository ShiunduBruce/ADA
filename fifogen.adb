package body FifoGen is

   procedure Push( V: in out Fifo; E: in Elem ) is
      newNode : Pointer := null;
   begin

      newNode := new Node'(E, null);

      if V.Size = 0 then
         V.Last := newNode;
         V.First := newNode;
      else
         V.Last.Next := newNode;
         V.Last := newNode;
      end if;

      V.Size := V.Size + 1;

      end;

      procedure Pop( V: in out Fifo; E: out Elem ) is
      begin
          E := Top(V);
          V.First := V.First.Next;
          V.Size := V.Size - 1;
      end;

      function Top( V: Fifo ) return Elem is
      begin
          return V.First.Data;
      exception
          when Constraint_Error => raise Empty_Fifo;
      end;

      function Is_Empty( V: Fifo ) return Boolean is
      begin
          return V.Size = 0;
      end;

      function Is_Full( V: Fifo ) return Boolean is
      begin
          return False;
      end;

      function Size( V: Fifo ) return Natural is
      begin
          return V.Size;
      end;
end FifoGen;
