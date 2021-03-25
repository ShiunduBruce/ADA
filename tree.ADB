package body Tree is
   function Make_Tree (A: TArray) return BSTree is -- creates a binary search tree from an array
      T : BSTree := null;
   begin
      for i in A'First..A'Last loop
         Insert(A(i), T);
      end loop;

      return T;

   end Make_Tree;

  procedure Insert (E: Elem; T: in out BSTree) is --inserts an element in the tree
   begin
      if T = null then
         T := new Node'(E, null, null);
      else
         if E < T.d then
            Insert(E, T.LeftT);
         elsif T.d  < E then
            Insert(E, T.RightT);
         end if;
      end if;

   end Insert;

   -- implement the 3 traversing modes:
   function PreOrder (T: BSTree) return TArray is -- root-left-right
       arr : TArray(1..10);
   begin
      StorePreOrderRecursive(T, arr, 1);
      return arr;
   end PreOrder;
   function InOrder (T: BSTree) return TArray is -- left-root-right
      arr : TArray(1..10);
   begin
      StoreInOrderRecursive(T, arr, 1);
      return arr;
   end InOrder;
   procedure StoreInOrderRecursive(T: in BSTree; B: in out TArray; I: in Positive) is
      index : Positive := I;
   begin
      if T /= null then
         StoreInOrderRecursive(T.LeftT, B, index);
         index := index + 1;
         B(index) := T.d;
         StoreInOrderRecursive(T.RightT, B, index);
      end if;
  end StoreInOrderRecursive;
procedure StorePreOrderRecursive(T: in BSTree; B: in out TArray; I: in Positive) is
      index : Positive := I;
   begin
      if T /= null then
         index := index + 1;
         B(index) := T.d;
         StorePreOrderRecursive(T.LeftT, B, index);
         StorePreOrderRecursive(T.RightT, B, index);
      end if;
   end StorePreOrderRecursive;
   procedure StorePostOrderRecursive(T: in BSTree; B: in out TArray; I: in Positive) is
      index : Positive := I;
   begin
      if T /= null then
         StorePostOrderRecursive(T.LeftT, B, index);
         StorePostOrderRecursive(T.RightT, B, index);
         index := index + 1;
         B(index) := T.d;
      end if;
  end StorePostOrderRecursive;
  function PostOrder (T: BSTree) return TArray is -- left-right-root.
   arr : TArray(1..10);
   begin
      StorePostOrderRecursive(T, arr, 1);
      return arr;
  end PostOrder;
end Tree;
