with Ada.Text_IO;
use Ada.Text_IO;

generic
type Elem is private;
with function "<" (a, b: Elem) return Boolean is <>;

package Tree is
type BSTree is private;
type TArray is array (Positive range <>) of Elem;

function Make_Tree (A: TArray) return BSTree; -- creates a binary search tree from an array
procedure Insert (E: Elem; T: in out BSTree); -- inserts an element in the tree
-- implement the 3 traversing modes:
function PreOrder (T: BSTree) return TArray; -- root-left-right
function InOrder (T: BSTree) return TArray; -- left-root-right
function PostOrder (T: BSTree) return TArray; -- left-right-root.

private
   procedure StoreInOrderRecursive(T: in BSTree; B: in out TArray; I: in Positive);
   procedure StorePostOrderRecursive(T: in BSTree; B: in out TArray; I: in Positive);
   procedure StorePreOrderRecursive(T: in BSTree; B: in out TArray; I: in Positive);

type Node;
type BSTree is access Node;
type Node is record
     d: Elem;
     LeftT, RightT: BSTree;
   end record;

end Tree;
