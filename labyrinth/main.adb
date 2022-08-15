
--tipos de datos
--entero
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
--texto
with Ada.Text_IO; use Ada.Text_IO;
--arreglo string
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
procedure Main is
   --eje de ubicacion
   X: Integer:=1;
   Y: Integer:=0;
   --variable de inicio y fin
   Ini: Standard.Boolean := True;
   --variable de eleccion de movimiento
   Opc: String(1..1);
begin
   --instrucciones
   Put_Line("Instrucciones");
   Put_Line("W moverse arriba, S moverse abajo, A moverse a la izquierda, D moverse a la derecha");
   Put_Line("O ingrese X para salir");
   --comienza el juego
   while Ini /= False loop
      --eleccion de la posicion a la que se debe mover
      Put_Line("A que direccion se quiere mover?");
      Get(Opc);
      --Definir los limites para el movimiento
      if(X = 3 and Y = 20) then
         Put_Line("------------------------");
         Put_Line("--------Ganaste---------");
         Put_Line("------------------------");
         exit;
      end if;
      if X >=21 or X<0 or Y>=21 or Y<0 then
         Put_Line("");
         Put("Chocaste con un muro, perdiste");
         exit;
      end if;
      --mueve el eje de movimiento dependiendo de la direccion que elija 
      if Opc = "w" then
         X := X-1;
      elsif Opc = "s" then
         X := X+1;
      elsif Opc = "d" then
         Y := Y+1;
      elsif Opc = "a" then
         Y := Y-1;
      end if;
      if X=0 or (X=1 and Y=9) or (X=1 and Y=13) or (X=1 and Y=20) or
      (X=2 and Y<4) or (X=2 and Y>4 and Y<8) or (X=2 and Y=9) or (X=2 and Y=11) or (X=2 and Y>12 and Y<17) or (X=2 and Y=18) or (X=2 and Y=20) or
      (X=3 and Y=0) or (X=3 and Y=5) or (X=3 and Y=7) or (X=3 and Y=9) or (X=3 and Y=11) or (X=3 and Y=18) or
      (X=4 and Y=0) or (X=4 and Y>1 and Y<6)or (X=4 and Y=7) or (X=4 and Y=9) or (X=4 and Y=11) or (X=4 and Y>12) or
      (X=5 and Y=0) or (X=5 and Y=5) or (X=5 and Y=7) or (X=5 and Y=9) or (X=5 and Y=11) or (X=5 and Y=13) or (X=5 and Y=20) or
      (X=6 and Y<4) or (X=6 and Y=5) or (X=6 and Y=7) or (X=6 and Y=9) or (X=6 and Y>10 and Y<14) or (X=6 and Y>14 and Y<19) or (X=6 and Y=20) or
      (X=7 and Y=0) or (X=7 and Y=5) or (X=7 and Y=7) or (X=7 and Y=9) or (X=7 and Y=13) or (X=7 and Y=15) or (X=7 and Y=20) or
      (X=8 and Y=0) or (X=8 and Y>1 and Y<6) or (X=8 and Y>8 and Y<12) or (X=8 and Y=13) or (X=8 and Y=15) or(X=8 and Y=17) or (X=8 and Y=18) or (X=8 and Y=20) or
      (X=9 and Y=0) or (X=9 and Y=2) or (X=9 and Y=15) or (X=9 and Y=20) or
      (X=10 and Y=0) or (X=10 and Y>1 and Y<10) or (X=10 and Y>10 and Y<16) or (X=10 and Y>17) or
      (X=11 and Y=0) or (X=11 and Y=15) or (X=11 and Y=20) or
      (X=12 and Y=0) or (X=12 and Y>1 and Y<16) or (X=12 and Y=17) or (X=12 and Y=18) or (X=12 and Y=20) or
      (X=13 and Y=0) or (X=13 and Y=2) or (X=13 and Y=15) or (X=13 and Y=20) or
      (X=14 and Y=0) or (X=14 and Y=2) or (X=14 and Y>3 and Y<10) or (X=14 and Y=11) or (X=14 and Y>12) or
      (X=15 and Y=0) or (X=15 and Y=4) or (X=15 and Y=11) or (X=15 and Y=20) or
      (X=16) then
         Put_Line("No puedes atravesar los muros");
         Put_Line("Regresando a la posicion anterior");
         if Opc = "w" then
            X := X+1;
         elsif Opc = "s" then
            X := X-1;
         elsif Opc = "d" then
            Y := Y-1;
         elsif Opc = "a" then
            Y := Y+1;
         end if;
      else
         --for que imprime el mapa y la posicion elegida
         for i in 0 .. 20 loop
            for j in 0 .. 20 loop
               --if que dibuja los marcos
               if i=0 or (i=1 and j=9) or (i=1 and j=13) or (i=1 and j=20) or
                 (i=2 and j<4) or (i=2 and j>4 and j<8) or (i=2 and j=9) or (i=2 and j=11) or (i=2 and j>12 and j<17) or (i=2 and j=18) or (i=2 and j=20) or
                 (i=3 and j=0) or (i=3 and j=5) or (i=3 and j=7) or (i=3 and j=9) or (i=3 and j=11) or (i=3 and j=18) or
                 (i=4 and j=0) or (i=4 and j>1 and j<6)or (i=4 and j=7) or (i=4 and j=9) or (i=4 and j=11) or (i=4 and j>12) or
                 (i=5 and j=0) or (i=5 and j=5) or (i=5 and j=7) or (i=5 and j=9) or (i=5 and j=11) or (i=5 and j=13) or (i=5 and j=20) or
                 (i=6 and j<4) or (i=6 and j=5) or (i=6 and j=7) or (i=6 and j=9) or (i=6 and j>10 and j<14) or (i=6 and j>14 and j<19) or (i=6 and j=20) or
                 (i=7 and j=0) or (i=7 and j=5) or (i=7 and j=7) or (i=7 and j=9) or (i=7 and j=13) or (i=7 and j=15) or (i=7 and j=20) or
                 (i=8 and j=0) or (i=8 and j>1 and j<6) or (i=8 and j>8 and j<12) or (i=8 and j=13) or (i=8 and j=15) or(i=8 and j=17) or (i=8 and j=18) or (i=8 and j=20) or
                 (i=9 and j=0) or (i=9 and j=2) or (i=9 and j=15) or (i=9 and j=20) or
                 (i=10 and j=0) or (i=10 and j>1 and j<10) or (i=10 and j>10 and j<16) or (i=10 and j>17) or
                 (i=11 and j=0) or (i=11 and j=15) or (i=11 and j=20) or
                 (i=12 and j=0) or (i=12 and j>1 and j<16) or (i=12 and j=17) or (i=12 and j=18) or (i=12 and j=20) or
                 (i=13 and j=0) or (i=13 and j=2) or (i=13 and j=15) or (i=13 and j=20) or
                 (i=14 and j=0) or (i=14 and j=2) or (i=14 and j>3 and j<10) or (i=14 and j=11) or (i=14 and j>12) or
                 (i=15 and j=0) or (i=15 and j=4) or (i=15 and j=11) or (i=15 and j=20) or
                 (i=16) then
                  Put("*");
               elsif i = X and j = Y then
                  Put("o");
               else Put(" ");
               end if;
            end loop;
            --realiza la saltos de linea
            Put_Line("");
         end loop;
         --comprueba si desea o no salir
         if Opc = "x" then
            Ini:=False;
         end if;
      end if;
      end loop;
end Main;