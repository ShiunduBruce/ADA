generic
   type Index is (<>);
   type Grid is array ( Index range <>, Index range <> ) of Natural;

procedure Migrate (G: Grid in out; max : Natural in);
Write a Migrate generic procedure, which if a nest has more then Max birds, then it tries placing all the birds above
the Max value in north, south, left right neighbor nests.
Make local rearrangings, the birds that have no place in neighbor nests will fly away (no action needs to be taken).
        The generic parameters are: the index type and the Grid type.
           The procedure has a Grid and a Max parameter.
In a demo migrate the birds of a grid of 10x10, and print the new grid.
