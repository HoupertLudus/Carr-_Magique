program TP_Magique;

uses crt, sysutils;

const

	TMatrice = 5;

type
	Matrice = array [1..Tmatrice,1..Tmatrice] of INTEGER;

Procedure Init (var Tab : Matrice);
Var
        i, j : INTEGER;
Begin
        For i := 1 to TMatrice do
		begin
			For j := 1 to TMatrice do
				begin
					Tab[i, j] := 0;
				end;
		end;
End;


Procedure Entier (var Tab : Matrice);

Var
        i, j, position : integer;
Begin
	i := (TMatrice div 2);
	j := (TMatrice div 2) + 1;
	Tab[i, j] := 1;
End;

Procedure Placement (var Tab : Matrice);

Var
        i, j, compteur : INTEGER;

Begin
	i := (TMatrice DIV 2);
	j := (TMatrice DIV 2) + 1;
	For compteur := 2 to 25 do
		begin
			if (i - 1 = 0) then
				begin
					i := TMatrice + 1;
				end;
			if (j + 1 > TMatrice) then
				begin
					j := 0
				end;
			if (Tab[i, j] <> 0) then
                                while (Tab[i,j] <> 0) do
                                        If (j - 1 = 0) then
                                                begin
                                                        j := Tmatrice + 1
                                                end;
                                        If (i - 1 = 0) then
                                                begin
                                                        i := Tmatrice + 1
                                                end;
					i := i - 1;
                                        j := j + 1;

				begin
					i := i - 1;
					j := j - 1;
					Tab[i,j] := compteur;
				end;

		end;
end;

//Programme Principal

var
	i, j : INTEGER;
	Magique : Matrice;

BEGIN
	clrscr;
	Init(Magique);
	Entier(Magique);
	Placement(Magique);
	For i := 1 to TMatrice do
		begin
			For j := 1 to TMatrice do
				begin
					write(Magique[i,j], ' ')
				end;
				writeln;
		end;
	readln;
END.


//ALGORITHME
