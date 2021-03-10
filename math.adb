with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
package body Math is

   function gcd ( A, B : Positive ) return Positive is
      X: Positive := A;
      Y: Positive := B;
   begin
      while X /= Y loop
         if X > Y then
            X := X - Y;
         else
            Y := Y - X;
         end if;
      end loop;
      return X;
   end gcd;

   function factorial( N: Natural ) return Positive is
      Fakt : Positive := 1;
   begin
      for I in 1..N loop
         Fakt := Fakt * I;
      end loop;
      return Fakt;
   end factorial;
   function sumDigits( N: Integer ) return Natural is
      temp : Integer := N;
      sum : Natural := 0;
   begin
      while temp /= 0 loop
         sum := sum + ( temp mod 10 );
         temp := temp / 10;
      end loop;
      return sum;
   end sumDigits;

   function isDivisibleByNine( N: Natural ) return Boolean is
   begin
      return N mod 9 = 0;
   end isDivisibleByNine;
   function isPerfectNumber( N: Natural ) return Boolean is
      sum : Natural := 0;
   begin
      for i in 1..N-1 loop
         if N mod i = 0 then
            sum := sum + i;
         end if;
      end loop;
      return sum = N;
   end isPerfectNumber;
   function digitsNum( N: Natural ) return Positive is
      counter : Natural := 0;
      temp : Natural := N;
   begin
      while temp /= 0 loop
         counter := counter + 1;
         temp := temp / 10;
      end loop;
      return counter;
   end digitsNum;

   function isPalindrome( N: Natural ) return Boolean is
      rev : Natural := 0;
      temp : Natural := N;
      numDigits : Natural :=  digitsNum(N);
   begin
      while temp /= 0 loop
         rev := rev + (temp mod 10 )  * ( 10 ** (numDigits - 1) );
         temp := temp /10;
         numDigits := numDigits - 1;
      end loop;

   return rev = N;

   end isPalindrome;



end Math;
