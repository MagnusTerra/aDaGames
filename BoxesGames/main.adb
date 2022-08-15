with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; Use Ada.Integer_Text_IO;
with Ada.Numerics.Discrete_Random;

procedure Hello is
money : Integer:=100;
vari : String(1..2);
resul : String(1..2);
salir : Integer:= 0;
op1 : Integer;
minus : Integer;
x: integer:=6;
opmin:integer;
procedure juego is

procedure Cuadro1 is
begin 
  for i in 0 .. x-1 loop
      for j in 0 .. 20-1 loop
        if j =6 or j=13 then 
          put("  ");
        elsif (j=1 and i=1) or (j=2 and i=2) or (j=3 and i=3) or
              (j=4 and i=4)  then 
          put("\ ");
        elsif (j=4 and i=1) or (j=3 and i=2) or (j=2 and i=3) or
              (j=1 and i=4) then  
          put("/ ");
        elsif i=0 or i=5 or j=0 or j=5 then  
          put("* "); 
        elsif j> 6 then 
          put("* ");  
        else
          Put("  ");
        
        end if;
    
      end loop;
    Put_Line(" ");
    end loop;
end Cuadro1;

procedure Cuadro2 is
begin 
  for i in 0 .. x-1 loop
      for j in 0 .. 20-1 loop
        if j =6 or j=13 then 
          put("  ");
        elsif (j=8 and i=1) or (j=9 and i=2) or (j=10 and i=3) or
              (j=11 and i=4)  then 
          put("\ ");
        elsif (j=11 and i=1) or (j=10 and i=2) or (j=9 and i=3) or
              (j=8 and i=4) then  
          put("/ ");
        elsif i=0 or i=5 or j=7 or j=12 then  
          put("* "); 
        elsif j< 6 or j>12 then 
          put("* ");  
        else
          Put("  ");
        
        end if;
    
      end loop;
    Put_Line(" ");
    end loop;
end Cuadro2;

procedure Cuadro3 is
begin 
  for i in 0 .. x-1 loop
      for j in 0 .. 20-1 loop
        if j =6 or j=13 then 
          put("  ");
        elsif (j=15 and i=1) or (j=16 and i=2) or (j=17 and i=3) or
              (j=18 and i=4)  then 
          put("\ ");
        elsif (j=18 and i=1) or (j=17 and i=2) or (j=16 and i=3) or
              (j=15 and i=4) then  
          put("/ ");
        elsif i=0 or i=5 or j=14 or j=19 then  
          put("* "); 
        elsif j<13 then 
          put("* ");  
        else
          Put("  ");
        
        end if;
    
      end loop;
    Put_Line(" ");
    end loop;
end Cuadro3;
  type randRange is new Integer range 1..3;
  package Rand_Int is new ada.numerics.discrete_random(randRange);
  use Rand_Int;
  gen : Generator;
  num : randRange;
  opju: Integer;
  resultado: Integer;
  
  y: Integer:=8;
  bucle: integer;
  gaymer: integer:=1;
begin
  Put_Line("Ingrese la cantidad de dinero que dese apostar(NOTA:El minimo es de 10)");
  get(minus);
  if minus >= 10 then
    money:=money-minus;
  while gaymer = 1 loop

  bucle:=0;
  reset(gen);
  num := random(gen);
  resul:= randRange'Image(num);
  resultado := Integer'Value(resul);
  while bucle < 1  loop
    Put_Line("  Caja(1)       Caja(2)       Caja(3)");
    for i in 0 .. x-1 loop
      for j in 0 .. 20-1 loop
        if j =6 or j=13 then 
          put("  ");
        elsif i=0 or i=(x-1) then
          Put("* ");
        else Put("* ");
        end if;
    
      end loop;
    Put_Line(" ");
    end loop;
    Put_Line(" ");
    bucle :=bucle+1;
  end loop;
  
  Put_Line("En que caja esta el precio");
  Get(opju);
  if opju = resultado then
    money:=money+(minus*2);
    Put_Line("______________________");
    Put_Line("El premio si estaba en esa puerta");
    Put("La cantidad de dinero que tiene es de");
    Put(money);
    Put_Line(" ");
    Put_Line("______________________");
    if resultado = 1 then
      Put_Line("  Caja(1)       Caja(2)       Caja(3)");
      Cuadro1;
    elsif resultado = 2 then
      Put_Line("  Caja(1)       Caja(2)       Caja(3)");
      Cuadro2;
    elsif resultado = 3 then 
      Put_Line("  Caja(1)       Caja(2)       Caja(3)"); 
      Cuadro3;
    end if;
    Put_Line("1.Seguir Jugando");
    Put_Line("2.salir"); 
    get(gaymer);
    if gaymer = 1 then 
      Put_Line("Ingrese la cantidad de dinero que dese apostar(NOTA:El minimo es de 10)");
      get(minus);
      if minus >= 10 then
      money:=money-minus; 
      Put_Line("COntinua");
      else 
      opmin:=0;
      while opmin = 0 loop
      Put_Line("Ingrese el minimo de apuesta correcto (NOTA: El minimo es de 10)");
      get(minus);
      if minus >= 10 then
      money:=money-minus; 
      Put_Line("COntinua");
      opmin:=1;
      end if;
      
      end loop;
      end if;
    elsif gaymer = 2 then 
      Put_Line("adios");
    end if;


  else
    Put_Line("_____________________________________");
    Put_Line("No estaba en esa caja, estaba en: "& resul);
    Put("El dinero que te queda Es: " );
    Put(money);
    Put_Line(" ");
    Put_Line("_____________________________________");
    if resultado = 1 then
      Cuadro1;
    elsif resultado = 2 then
      Cuadro2;
    elsif resultado = 3 then  
      Cuadro3;
    end if;
    if money<10 then
      Put_Line("te quedastes sin dinero");
      gaymer:=2;
    else 
    Put_Line("1.Seguir Jugando");
    Put_Line("2.salir"); 
    get(gaymer);
    if gaymer = 1 then
      Put_Line("Ingrese la cantidad de dinero que dese apostar(NOTA:El minimo es de 10)");
      get(minus);
      if minus >= 10 then
      money:=money-minus; 
      Put_Line("COntinua");
      else 
      opmin:=0;
      while opmin = 0 loop
      Put_Line("Ingrese el minimo de apuesta correcto (NOTA: El minimo es de 10)");
      get(minus);
      if minus >= 10 then
      money:=money-minus; 
      Put_Line("COntinua");
      opmin:=1;
      end if;
      
      end loop;
      end if;
    elsif gaymer = 2 then 
      Put_Line("adios");
    end if;
  end if;
  end if;
  end loop;
  else
    Put_Line("La apuesta es minimo de 10");
  end if;
end juego;

procedure Menu is
  begin
  Put_Line("************************************************************");
  Put_Line("*     ________               ______                        *");
  Put_Line("*    |               /\     |        |       |     /\      *");
  Put_Line("*    |              /  \    |        |       |    /  \     *");
  Put_Line("*    |    ____     /____\   |        |-------|   /____\    *");
  Put_Line("*    |        |   /      \  |        |       |  /      \   *");
  Put_Line("*    |________|  /        \ |______  |       | /        \  *");
  Put_Line("************************************************************");
  end Menu;
begin
  while salir = 0 loop
    menu;
    Put_Line("__________");
    Put_Line("1.Jugar");
    Put_Line("__________");
    Put_Line("2.Salir");
    Get(op1);
    if op1 = 1 then
      juego;
    elsif op1 = 2 then
      salir := 1;
    end if;
  end loop;
end Hello;