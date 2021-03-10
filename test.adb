--with crypto, Ada.Integer_Text_IO, Ada.Text_IO;
--use crypto, Ada.Integer_Text_IO, Ada.Text_IO;
with Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;
--with Ada.Characters.Conversions;
with Ada.Characters.Handling;
use Ada.Characters.Handling;

procedure test is
   --C : Character := 'a';
   --Result : Integer;

   type TArray is array (Integer range <>) of Natural;

   function shift_char(c: Character; n:Natural) return Character is
      charValue : Integer :=  Character'Pos(c) + n mod 26;
      char : Character := Character'Val(charValue) ;
   begin
      if not Is_Upper(char) and not Is_Lower(char) then
         charValue := charValue - 26;
      end if;
      return  Character'Val(charValue);
   end shift_char;

    function encrypt_string(x:String; k:Integer ) return String is
        encrypted_string : String(x'Range);
   begin
      for I in x'Range loop
         encrypted_string(I) := shift_char(x(I), k);
      end loop;
      return encrypted_string;
   end encrypt_string;

   function encrypt_with_pos(x:String) return String is
      encrypted_string: String := x;
      pos : Positive;
   begin
      for I in x'Range loop
         if Is_Upper( x(I) ) then
            pos := Character'Pos( x(I) ) - 64;
         else
            pos := Character'Pos( x(I) ) - 96;
         end if;
         encrypted_string(I) := shift_char(x(I),  pos) ;
      end loop;
      return encrypted_string;
   end encrypt_with_pos;
    -- decrypts a previously encrypted caesar cipher (opposite of encrypt_caesar)
   function decrypt_caesar(x:String; k:Natural ) return String is
      key : Integer := 26 - ( k mod 26 );
   begin
      return encrypt_string(x, key);
   end decrypt_caesar;
    function encrypt_vigenere_with_numbers(x:String; k:TArray ) return String is
      encrypted_string: String := x;
   begin
      for I in k'Range loop
         encrypted_string := encrypt_string( encrypted_string, k(I) );
       end loop;
      return encrypted_string;

   end encrypt_vigenere_with_numbers;

   function decrypt_vigenere_with_numbers(x:String; k:TArray ) return String is
      decrypted_string: String := x;
      key: Natural;
   begin
      for I in k'Range loop
         key :=26 - ( k(I) mod 26 );
         decrypted_string := encrypt_string( decrypted_string, key );
      end loop;
      return decrypted_string;
   end decrypt_vigenere_with_numbers;
begin
   -- crypto.print_key(5);
   --Put_Line(Character'Image(shift_char('P', 11)));
   Put_Line(encrypt_vigenere_with_numbers("Bruce", (4, 5, 6, 7)) );
   Put_Line(decrypt_vigenere_with_numbers("Xnqya", (4, 5, 6, 7)));

end test;

        ---  Character'Pos(C) + n ) mod  26 ) ;-- - 26
        --Is_Upper( Character'Val(charValue) ) && !Is_Lower( Character'Val(charValue) ) )
        ---&& !Is_Lower(char)
        -- if   ( !Is_Upper(char) ) then      charValue := charValue - 26;     end if;
        --         Character'Val(charValue);
