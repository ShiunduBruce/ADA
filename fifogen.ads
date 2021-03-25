generic
      type Elem is private;
package FifoGen is

      type Fifo  is limited private;

      Empty_Fifo : Exception;
      procedure Push( V: in out Fifo; E: in Elem );
      procedure Pop( V: in out Fifo; E: out Elem );
      function Top( V: Fifo ) return Elem;
      function Is_Empty( V: Fifo ) return Boolean;
      function Is_Full( V: Fifo ) return Boolean;
      function Size( V: Fifo ) return Natural;

private
    type Node;
      type Pointer is access Node;
      type Node is record
                      Data: Elem;
                      Next: Pointer := null;
                    end record;
      type Fifo is record
                       Size: Natural := 0;
                       First: Pointer := null;
                       Last : Pointer := null;
                     end record;
end FifoGen;
