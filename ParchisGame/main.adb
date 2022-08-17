with ada.Text_IO; use Ada.Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with ada.numerics.discrete_random;

procedure Main is
   type randRange is new Integer range 1..6;
   package Rand_Int is new ada.numerics.discrete_random(randRange);
   use Rand_Int;
   gen : Generator;
   num : randRange;
   dado: Integer:=0;
   opc: Integer:=0;
   X1: Integer:= 1;
   Y1: Integer:= 1;
   X2: Integer:= 3;
   Y2: Integer:= 1;
   tmp: Integer;
   tmp2: Integer;
   turno: Integer:=0;
   I : Integer;
   Ini: Boolean:=True;
begin
   while Ini /= False loop
      If Y1 >= 50 then
         Put("Gano el jugador 1");
         exit;
      end if;
      If Y2 >= 50 then
         Put("Gano el jugador 2");
         exit;
      end if;
      reset(gen);
      num := random(gen);
      tmp := Y1;
      tmp2 := Y2;
      Put_Line("Ingrese 1 para lanzar el dado");
      Put_Line("Ingrese 2 para salir");
      Get(opc);
      if opc = 1 then
         if (turno mod 2 = 0) = true then
            Put_Line("Jugador 1");
            I := Integer'Value (randRange'Image(num));
            Put("Saco un:");
            Put(randRange'Image(num));
            Put_Line("");
            Y1 := tmp + (I*2);
         else
            Put_Line("Jugador 2");
            I := Integer'Value (randRange'Image(num));
            Put("Saco un:");
            Put(randRange'Image(num));
            Put_Line("");
            Y2 := tmp2 + (I*2);
         end if;
         for i in 0 .. 4 loop
            for j in 0 .. 51 loop
               if (i=0 and j<51) or (i=1 and (j mod 2 = 0) = true) or (i=2 and j<51) or (i=3 and (j mod 2 = 0) = true) or (i=4 and j<51) then
                  Put("*");
               elsif (X1=i and Y1=j) then
                  Put("O");
               elsif (X2=i and Y2=j) then
                  Put("+");
               else Put(" ");
               end if;
            end loop;
            Put_Line("");
         end loop;
         turno:=turno+1;
      else exit;
      end if;
   end loop;
end Main;