with Ada.Numerics.Discrete_Random, Ada.Text_IO, Ada.Characters.Handling;
use  Ada.Text_IO, Ada.Characters.Handling;
package crypto is

   type keys (N: Positive) is limited private;

   procedure print_key(k: keys);
   function shift_char(c: Character; n:Integer) return Character;
   function encrypt_caesar(x:String; k:keys ) return String;
   function encrypt_vigenere_with_numbers(x:String; k:keys ) return String;
   function encrypt_with_pos(x:String) return String;
   function decrypt_caesar(x:String; k:keys ) return String;
   function decrypt_vigenere_with_numbers(x:String; k:keys ) return String;

private
   type keys_arr is array( Positive range <> ) of Natural;
   function Generate_key return Natural;
   function Generate_keys(len: Positive) return keys_arr;
   function encrypt_string(x:String; k:Natural ) return String;


   type keys(N: Positive ) is record
                 single_key: Natural;
                 multi_keys: keys_arr(1..N);
   end record;

end crypto;
