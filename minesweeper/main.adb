with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure Buscaminas is
   arreglo:array(1..7) of integer;
   valor: boolean := True;
   valoringreso: Integer;
begin
   while valor = True loop
      Put_Line("Ingresa un numero del 1 al 10 para comenzar: ");
      Get(valoringreso);
      if valoringreso = 1 then
         Put_Line("Muy bien sigue asi");
         Put_Line("-----------------------------");
         for i in  1..1 loop
            Put_Line("Ingresa otra vez el mismo valor para guardar tu progreso");
            Get(arreglo(i));
         end loop;
         Put_Line("");
         for i in 1..1 loop
            Put(arreglo(i));
            Put_Line(" ");
         end loop;
      elsif valoringreso = 2 then
         Put_Line("Increible");
         Put_Line("-----------------------------------------------------------");
         for i in  2..2 loop
            Put_Line("Ingresa otra vez el mismo valor para guardar tu progreso");
            Get(arreglo(i));
         end loop;
         Put_Line("");
         for i in 1..2 loop
            Put(arreglo(i));
            Put_Line(" ");
         end loop;
      elsif valoringreso = 3 then
         Put_Line("Has seleccionado una bomba, fin del juego");
         Put_Line("Imprimiendo casillas encontradas.........");
         for i in 1..7 loop
            Put(arreglo(i));
            Put_Line(" ");
         end loop;
      elsif valoringreso = 4 then
         Put_Line("Increible");
         Put_Line("-----------------------------------------------------------");
         for i in  3..3 loop
            Put_Line("Ingresa otra vez el mismo valor para guardar tu progreso");
            Get(arreglo(i));
         end loop;
         Put_Line("");
         for i in 1..3 loop
            Put(arreglo(i));
            Put_Line(" ");
         end loop;
      elsif valoringreso = 5 then
         Put_Line("Increible");
         Put_Line("-----------------------------------------------------------");
         for i in  4..4 loop
            Put_Line("Ingresa otra vez el mismo valor para guardar tu progreso");
            Get(arreglo(i));
         end loop;
         Put_Line("");
         for i in 1..4 loop
            Put(arreglo(i));
            Put_Line(" ");
         end loop;
      elsif valoringreso = 6 then
         Put_Line("Has seleccioando una bomba, fin del juego");
         Put_Line("Imprimiendo casillas encontradas.........");
         for i in 1..7 loop
            Put(arreglo(i));
            Put_Line(" ");
         end loop;
      elsif valoringreso = 7 then
         Put_Line("Increible");
         Put_Line("-----------------------------------------------------------");
         for i in  5..5 loop
            Put_Line("Ingresa otra vez el mismo valor para guardar tu progreso");
            Get(arreglo(i));
         end loop;
         Put_Line("");
         for i in 1..5 loop
            Put(arreglo(i));
            Put_Line(" ");
         end loop;
      elsif valoringreso = 8 then
         Put_Line("Increible");
         Put_Line("-----------------------------------------------------------");
         for i in  6..6 loop
            Put_Line("Ingresa otra vez el mismo valor para guardar tu progreso");
            Get(arreglo(i));
         end loop;
         Put_Line("");
         for i in 1..6 loop
            Put(arreglo(i));
            Put_Line(" ");
         end loop;
      elsif valoringreso = 9 then
         Put_Line("Has seleccionado una bomba, fin del juego");
         Put_Line("Imprimiendo casillas encontradas.........");
         for i in 1..7 loop
            Put(arreglo(i));
            Put_Line(" ");
         end loop;
      elsif valoringreso = 10 then
         Put_Line("Excelente");
         Put_Line("Increible");
         Put_Line("-----------------------------------------------------------");
         for i in  7..7 loop
            Put_Line("Ingresa otra vez el mismo valor para guardar tu progreso");
            Get(arreglo(i));
         end loop;
         Put_Line("");
         for i in 1..7 loop
            Put(arreglo(i));
            Put_Line(" ");
         end loop;
      else
         Put_Line("El valor ingresado, no es un valor valido");
      end if;
      exit when valoringreso = 3;
      exit when valoringreso = 6;
      exit when valoringreso = 9;
      exit when arreglo = (1, 2, 4, 5, 7 , 8, 10);
      Put_Line("Felicidades haz ganado el juego....");
   end loop;

end Buscaminas;
