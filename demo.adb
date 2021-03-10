with Setq, Ada.Integer_Text_IO, Ada.Text_IO;
use Setq, Ada.Integer_Text_IO, Ada.Text_IO;

procedure demo is

    R: Rational := 4/8;
    P: Rational := 1/2;

   -- X: Rational := 3/4/5;

begin

    R := R * R;
    Put( Numerator(R) );
    Put( '/' );
    Put( Denominator(R) );

end demo;
