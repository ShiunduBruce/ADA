generic
    type Elem is private;
    type Index is (<>);
    type Vector is array ( Index range <> ) of Elem;
    with function Mutiplicity( V: Vector; E: Elem ) return Natural;

function Most_Frequent ( V: Vector) return Elem;
