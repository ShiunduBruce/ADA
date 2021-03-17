generic
   type Index is (<>);
   type Elem is limited private;
   type Grid is array ( Index range <>, Index range <> ) of Elem;
   with function has_given_Property(e : Elem) return Boolean;
  -- private
    --  type Grid is array ( Index range <>, Index range <> ) of Natural;

function Count ( G: Grid) return Natural;
