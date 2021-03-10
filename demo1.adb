with Most_Frequent_Two, Most_Frequent, Has_Repetition, Ada.Text_IO, Ada.Characters.Handling;
use Ada.Text_IO, Ada.Characters.Handling;

procedure Demo1 is

    type Index is new Integer;
    type Vector is array (Index range <>) of Character;

   function count(v: Vector; e : Character ) return Natural is
      count : Integer := 0;
   begin
      for I in v'Range loop
         if Is_Basic( v(I) ) and v(I) = e then
            count := count + 1;
         end if;
      end loop;
      return count;
   end count;

    function Has_Double_Letters is new Has_Repetition(Character, Index, Vector );
    function Most_Recurring is new Most_Frequent(Character, Index, Vector, count );
    function Most_Recurring_Two is new Most_Frequent_Two(Character, Index, Vector);

begin
----DEMO FOR QUESTION 1
    Put_Line( Boolean'Image( Has_Double_Letters("rrxuce" ) ) );
    Put_Line( Boolean'Image( Has_Double_Letters("Brruce" ) ) );
    Put_Line( Boolean'Image( Has_Double_Letters("Xrxucee" ) ) );
    Put_Line( Boolean'Image( Has_Double_Letters("Xrxuce" ) ) );

    New_Line; New_Line;

----DEMO FOR QUESTION 2
    Put_Line( Character'Image( Most_Recurring("rrxuce" ) ) );
    Put_Line( Character'Image( Most_Recurring("Hello, I am going home" ) ) );
    Put_Line( Character'Image( Most_Recurring("Nothing Interesting" ) ) );

    New_Line; New_Line;

----DEMO FOR QUESTION 3
    Put_Line( Character'Image( Most_Recurring_Two("rrxuce" ) ) );
    Put_Line( Character'Image( Most_Recurring_Two("Hellooo,I am going home" ) ) );
    Put_Line( Character'Image( Most_Recurring_Two("Nothing Interesting" ) ) );
end Demo1;
