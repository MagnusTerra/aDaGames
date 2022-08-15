with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Containers.Indefinite_Vectors;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
procedure Klee is



   l:Integer:=19;
   GetFicha:String:="  ";

   X:Integer;
   Y:Integer;
   Dodoko: Integer:= 200;
   CodPosition: Integer;

   TurnoA: Integer:= 1;
   TurnoB: Integer:= 0;

   TeamA: Integer:= 0;
   TeamB: Integer:= 0;
--Fuhas A
   --A1
   PYA1: Integer := 1;
   PXA1: Integer := 2;
   --A2
   PYA2: Integer := 1;
   PXA2: Integer := 6;
   --A3
   PYA3: Integer := 1;
   PXA3: Integer := 10;
   --A4
   PYA4: Integer := 1;
   PXA4: Integer := 14;
   --A5
   PYA5: Integer := 3;
   PXA5: Integer := 4;
   --A6
   PYA6: Integer := 3;
   PXA6: Integer := 8;
   --A7
   PYA7: Integer := 3;
   PXA7: Integer := 12;
   --A8
   PYA8: Integer := 3;
   PXA8: Integer := 16;
   --A9
   PYA9: Integer := 5;
   PXA9: Integer := 2;
   --AX
   PYAX: Integer := 5;
   PXAX: Integer := 6;
   --AY
   PYAY: Integer := 5;
   PXAY: Integer := 10;
   --AZ
   PYAZ: Integer := 5;
   PXAZ: Integer := 14;

--Fuchas B-----------------------------
   --A1
   PYB1: Integer := 15;
   PXB1: Integer := 2;
   --B2
   PYB2: Integer := 15;
   PXB2: Integer := 6;
   --B3
   PYB3: Integer := 15;
   PXB3: Integer := 10;
   --B4
   PYB4: Integer := 15;
   PXB4: Integer := 14;
   --B5
   PYB5: Integer := 13;
   PXB5: Integer := 4;
   --B6
   PYB6: Integer := 13;
   PXB6: Integer := 8;
   --B7
   PYB7: Integer := 13;
   PXB7: Integer := 12;
   --B8
   PYB8: Integer := 13;
   PXB8: Integer := 16;
   --B9
   PYB9: Integer := 11;
   PXB9: Integer := 2;
   --BX
   PYBX: Integer := 11;
   PXBX: Integer := 6;
   --BY
   PYBY: Integer := 11;
   PXBY: Integer := 10;
   --BZ
   PYBZ: Integer := 11;
   PXBZ: Integer := 14;
-------------------------------------------------


--Table A1
   A1PY: Integer:=PYA1;
   A1PX: Integer:=PXA1;

--Table A2
   A2PY: Integer:=PYA2;
   A2PX: Integer:=PXA2;

--Table A3
   A3PY: Integer:=PYA3;
   A3PX: Integer:=PXA3;

--Table A4
   A4PY: Integer:=PYA4;
   A4PX: Integer:=PXA4;

--Table A5
   A5PY: Integer:=PYA5;
   A5PX: Integer:=PXA5;

--Table A6
   A6PY: Integer:=PYA6;
   A6PX: Integer:=PXA6;

--Table A7
   A7PY: Integer:=PYA7;
   A7PX: Integer:=PXA7;

--Table A8
   A8PY: Integer:=PYA8;
   A8PX: Integer:=PXA8;

--Table A9
   A9PY: Integer:=PYA9;
   A9PX: Integer:=PXA9;

--Table AX
   AXPY: Integer:=PYAX;
   AXPX: Integer:=PXAX;

--Table AY
   AYPY: Integer:=PYAY;
   AYPX: Integer:=PXAY;

--Table AZ
   AZPY: Integer:=PYAZ;
   AZPX: Integer:=PXAZ;

-----------------------------------------------------
--Table B1
   B1PY: Integer:= PYB1;
   B1PX: Integer:= PXB1;

--Table B2
   B2PY: Integer:= PYB2;
   B2PX: Integer:= PXB2;

--Table B3
   B3PY: Integer:= PYB3;
   B3PX: Integer:= PXB3;

--Table B4
   B4PY: Integer:= PYB4;
   B4PX: Integer:= PXB4;

--Table B5
   B5PY: Integer:= PYB5;
   B5PX: Integer:= PXB5;

--Table B6
   B6PY: Integer:= PYB6;
   B6PX: Integer:= PXB6;

--Table B7
   B7PY: Integer:= PYB7;
   B7PX: Integer:= PXB7;

--Table B8
   B8PY: Integer:= PYB8;
   B8PX: Integer:= PXB8;

--Table B9
   B9PY: Integer:= PYB9;
   B9PX: Integer:= PXB9;

--Table BX
   BXPY: Integer:= PYBX;
   BXPX: Integer:= PXBX;

--Table BY
   BYPY: Integer:= PYBY;
   BYPX: Integer:= PXBY;

--Table BZ
   BZPY: Integer:= PYBZ;
   BZPX: Integer:= PXBZ;

procedure Tablero is
begin

   for i in 0 .. l-1 loop
    for j in 0 .. l-1 loop
         if i=0 or i=2 or i=(l-1) or i=(l-3) or j=0 or j=2 or j=(l-1) or j=(l-3) or
            i=4 or i=6 or i=8 or i=10 or i=12 or i=14 or i=16 or i=18 or i=20 or
            j=4 or j=6 or j=8 or j=10 or j=12 or j=14 or j=16 or j=18 or j=20 then
                  Put("* ");

            else
               Put("  ");

         end if;
         --Fichas B----------------------------------------
         if i = PYB1 and j = PXB1 then
             Put("B1");
            end if;

         if i = PYB2 and j = PXB2 then
             Put("B2");
            end if;

        if i = PYB3 and j = PXB3 then
             Put("B3");
            end if;

        if i = PYB4 and j = PXB4 then
             Put("B4");
            end if;

        if i = PYB5 and j = PXB5 then
             Put("B5");
         end if;

        if i = PYB6 and j = PXB6 then
             Put("B6");
            end if;

        if i = PYB7 and j = PXB7 then
             Put("B7");
            end if;

        if i = PYB8 and j = PXB8 then
             Put("B8");
            end if;

        if i = PYB9 and j = PXB9 then
             Put("B9");
         end if;

        if i = PYBX and j = PXBX then
             Put("BX");
            end if;

        if i = PYBY and j = PXBY then
             Put("BY");
            end if;

        if i = PYBZ and j = PXBZ then
             Put("BZ");
            end if;


         --Fichas A----------------------------------------
         if i = PYA1 and j = PXA1 then
             Put("A1");
            end if;

         if i = PYA2 and j = PXA2 then
             Put("A2");
            end if;

         if i = PYA3 and j = PXA3 then
             Put("A3");
            end if;

        if i = PYA4 and j = PXA4 then
             Put("A4");
            end if;

        if i = PYA5 and j = PXA5 then
             Put("A5");
         end if;

        if i = PYA6 and j = PXA6 then
             Put("A6");
            end if;

        if i = PYA7 and j = PXA7 then
             Put("A7");
            end if;

        if i = PYA8 and j = PXA8 then
             Put("A8");
            end if;

        if i = PYA9 and j = PXA9 then
             Put("A9");
         end if;

        if i = PYAX and j = PXAX then
             Put("AX");
            end if;

        if i = PYAY and j = PXAY then
             Put("AY");
            end if;

        if i = PYAZ and j = PXAZ then
             Put("AZ");

            end if;
       -------------------------------------
            if i = 1 and j = 0 then
               Put(" 1");
            end if;

            if i = 3 and j = 0 then
               Put(" 3");
            end if;

            if i = 5 and j = 0 then
               Put(" 5");
            end if;

            if i = 7 and j = 0 then
               Put(" 7");
            end if;

            if i = 9 and j = 0 then
               Put(" 9");
            end if;

            if i = 11 and j = 0 then
               Put("11");
            end if;

            if i = 13 and j = 0 then
               Put("13");
            end if;

            if i = 15 and j = 0 then
               Put("15");
            end if;

            -----------------------------------------------------------
            if i = 17 and j = 0 then
               Put("YX");
            end if;

            if i = 17 and j = 2 then
               Put(" 2");
            end if;

            if i = 17 and j = 4 then
               Put(" 4");
            end if;

            if i = 17 and j = 6 then
               Put(" 6");
            end if;

            if i = 17 and j = 8 then
               Put(" 8");
            end if;

            if i = 17 and j = 10 then
               Put("10");
            end if;

            if i = 17 and j = 12 then
               Put("12");
            end if;

            if i = 17 and j = 14 then
               Put("14");
            end if;

            if i = 17 and j = 16 then
               Put("16");
            end if;
    end loop;
    Put_Line("");
   end loop;

end Tablero;

begin
While Dodoko < 201 loop
      Tablero;
      
if TurnoA > TurnoB then
   Put_Line("Turno del team A");
   Put("Ingrese la ficha que desea mover ");
         Get(GetFicha);

         if GetFicha = "12" then
            TeamA:= 12;
         end if;
         if GetFicha = "A1" or GetFicha = "A2" or GetFicha = "A3" or GetFicha = "A4" or GetFicha = "A5" or GetFicha = "A6" or
            GetFicha = "A7" or GetFicha = "A8" or GetFicha = "A9" or GetFicha = "AX" or GetFicha = "AY" or GetFicha = "AZ" then
      ------------AAAAAAAAAAAAA---------------

      if GetFicha = "A1" then

      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);

         if (Y = A2PY and X = A2PX) or (Y = A3PY and X = A3PX) or (Y = A4PY and X = A4PX) or (Y = A5PY and X = A5PX) or (Y = A6PY and X = A6PX) or (Y = A7PY and X = A7PX) or
            (Y = A8PY and X = A8PX) or (Y = A9PY and X = A9PX) or (Y = AXPY and X = AXPX) or (Y = AYPY and X = AYPX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");

           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BXPY and X = BXPX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXA1:=X;
            PYA1:=Y;
         end if;
      end if;

      if GetFicha = "A2" then



      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);

         if (Y = A1PY and X = A1PX) or (Y = A3PY and X = A3PX) or (Y = A4PY and X = A4PX) or (Y = A5PY and X = A5PX) or (Y = A6PY and X = A6PX) or (Y = A7PY and X = A7PX) or
            (Y = A8PY and X = A8PX) or (Y = A9PY and X = A9PX) or (Y = AXPY and X = AXPX) or (Y = AYPY and X = AYPX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BXPY and X = B1PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = B1PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = B1PX then
            Put_Line("Ficha comida");
            PXA2:=X;
            PYA2:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXA2:=X;
            PYA2:=Y;
         end if;
      end if;

      if GetFicha = "A3" then

      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;
         if (Y = A2PY and X = A2PX) or (Y = A1PY and X = A1PX) or (Y = A4PY and X = A4PX) or (Y = A5PY and X = A5PX) or (Y = A6PY and X = A6PX) or (Y = A7PY and X = A7PX) or
            (Y = A8PY and X = A8PX) or (Y = A9PY and X = A9PX) or (Y = AXPY and X = AXPX) or (Y = AYPY and X = AYPX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BXPY and X = BXPX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXA3:=X;
            PYA3:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXA3:=X;
            PYA3:=Y;
         end if;
      end if;

      if GetFicha = "A4" then

      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         if (Y = A2PY and X = A2PX) or (Y = A3PY and X = A3PX) or (Y = A1PY and X = A1PX) or (Y = A5PY and X = A5PX) or (Y = A6PY and X = A6PX) or (Y = A7PY and X = A7PX) or
            (Y = A8PY and X = A8PX) or (Y = A9PY and X = A9PX) or (Y = AXPY and X = AXPX) or (Y = AYPY and X = AYPX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BXPY and X = BXPX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXA4:=X;
            PYA4:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXA4:=X;
            PYA4:=Y;
         end if;
      end if;

      if GetFicha = "A5" then
              Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);

         if (Y = A2PY and X = A2PX) or (Y = A3PY and X = A3PX) or (Y = A4PY and X = A4PX) or (Y = A1PY and X = A1PX) or (Y = A6PY and X = A6PX) or (Y = A7PY and X = A7PX) or
            (Y = A8PY and X = A8PX) or (Y = A9PY and X = A9PX) or (Y = AXPY and X = AXPX) or (Y = AYPY and X = AYPX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BXPY and X = B1PX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXA5:=X;
            PYA5:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXA5:=X;
            PYA5:=Y;
         end if;
      end if;

      if GetFicha = "A6" then

      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);

         if (Y = A2PY and X = A2PX) or (Y = A3PY and X = A3PX) or (Y = A4PY and X = A4PX) or (Y = A5PY and X = A5PX) or (Y = A1PY and X = A1PX) or (Y = A7PY and X = A7PX) or
            (Y = A8PY and X = A8PX) or (Y = A9PY and X = A9PX) or (Y = AXPY and X = AXPX) or (Y = AYPY and X = AYPX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BxPY and X = BxPX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXA6:=X;
            PYA6:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXA6:=X;
            PYA6:=Y;
         end if;
      end if;

      if GetFicha = "A7" then

      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;
         if (Y = A2PY and X = A2PX) or (Y = A3PY and X = A3PX) or (Y = A4PY and X = A4PX) or (Y = A5PY and X = A5PX) or (Y = A6PY and X = A6PX) or (Y = A1PY and X = A1PX) or
            (Y = A8PY and X = A8PX) or (Y = A9PY and X = A9PX) or (Y = AXPY and X = AXPX) or (Y = AYPY and X = AYPX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BXPY and X = BXPX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXA7:=X;
            PYA7:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXA7:=X;
            PYA7:=Y;
         end if;
      end if;

      if GetFicha = "A8" then

      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);

         if (Y = A2PY and X = A2PX) or (Y = A3PY and X = A3PX) or (Y = A4PY and X = A4PX) or (Y = A5PY and X = A5PX) or (Y = A6PY and X = A6PX) or (Y = A7PY and X = A7PX) or
            (Y = A1PY and X = A1PX) or (Y = A9PY and X = A9PX) or (Y = AXPY and X = AXPX) or (Y = AYPY and X = AYPX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BXPY and X = BXPX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXA8:=X;
            PYA8:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXA8:=X;
            PYA8:=Y;
         end if;
      end if;

      if GetFicha = "A9" then

      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;
         if (Y = A2PY and X = A2PX) or (Y = A3PY and X = A3PX) or (Y = A4PY and X = A4PX) or (Y = A5PY and X = A5PX) or (Y = A6PY and X = A6PX) or (Y = A7PY and X = A7PX) or
            (Y = A8PY and X = A8PX) or (Y = A1PY and X = A1PX) or (Y = AXPY and X = AXPX) or (Y = AYPY and X = AYPX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BXPY and X = BXPX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXA9:=X;
            PYA9:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXA9:=X;
            PYA9:=Y;
         end if;
      end if;

      if GetFicha = "AX" then

      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);

         if (Y = A2PY and X = A2PX) or (Y = A3PY and X = A3PX) or (Y = A4PY and X = A4PX) or (Y = A5PY and X = A5PX) or (Y = A6PY and X = A6PX) or (Y = A7PY and X = A7PX) or
            (Y = A8PY and X = A8PX) or (Y = A9PY and X = A9PX) or (Y = A1PY and X = A1PX) or (Y = AYPY and X = AYPX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BXPY and X = BXPX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXAX:=X;
            PYAX:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXAX:=X;
            PYAX:=Y;
         end if;
      end if;

      if GetFicha = "AY" then

      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);

         if (Y = A2PY and X = A2PX) or (Y = A3PY and X = A3PX) or (Y = A4PY and X = A4PX) or (Y = A5PY and X = A5PX) or (Y = A6PY and X = A6PX) or (Y = A7PY and X = A7PX) or
            (Y = A8PY and X = A8PX) or (Y = A9PY and X = A9PX) or (Y = AXPY and X = AXPX) or (Y = A1PY and X = A1PX) or (Y = AZPY and X = AZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER B1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER B2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER B3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER B4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER B5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER B6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER B7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER B8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER BX
         elsif Y = BXPY and X = BXPX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER BZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXAY:=X;
            PYAY:=Y;
            PXBZ:=30;
            PYBZ:= 3;
            TeamA:= TeamA+1;
         else
            PXAY:=X;
            PYAY:=Y;
         end if;
      end if;

      if GetFicha = "AZ" then

      Put("Ingrese Y ");
        Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X + Y;
         if (Y = A2PY and X = A2PX) or (Y = A3PY and X = A3PX) or (Y = A4PY and X = A4PX) or (Y = A5PY and X = A5PX) or (Y = A6PY and X = A6PX) or (Y = A7PY and X = A7PX) or
            (Y = A8PY and X = A8PX) or (Y = A9PY and X = A9PX) or (Y = AXPY and X = AXPX) or (Y = AYPY and X = AYPX) or (Y = A1PY and X = A1PX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");



           --COMER A1
         elsif Y = B1PY and X = B1PX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXB1:=30;
            PYB1:= 3;
            TeamA:= TeamA+1;

         --COMER A2
         elsif Y = B2PY and X = B2PX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXB2:=30;
            PYB2:= 3;
            TeamA:= TeamA+1;

         --COMER A3
         elsif Y = B3PY and X = B3PX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXB3:=30;
            PYB3:= 3;
            TeamA:= TeamA+1;

         --COMER A4
         elsif Y = B4PY and X = B4PX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXB4:=30;
            PYB4:= 3;
            TeamA:= TeamA+1;

         --COMER A5
         elsif Y = B5PY and X = B5PX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXB5:=30;
            PYB5:= 3;
            TeamA:= TeamA+1;

         --COMER A6
         elsif Y = B6PY and X = B6PX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXB6:=30;
            PYB6:= 3;
            TeamA:= TeamA+1;

         --COMER A7
         elsif Y = B7PY and X = B7PX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXB7:=30;
            PYB7:= 3;
            TeamA:= TeamA+1;

         --COMER A8
         elsif Y = B8PY and X = B8PX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXB8:=30;
            PYB8:= 3;
            TeamA:= TeamA+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXB9:=30;
            PYB9:= 3;
            TeamA:= TeamA+1;

         --COMER AX
         elsif Y = BXPY and X = BXPX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXBX:=30;
            PYBX:= 3;
            TeamA:= TeamA+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXAZ:=X;
            PYAZ:=Y;
            PXBY:=30;
            PYBY:= 3;
            TeamA:= TeamA+1;

         --COMER AZ
         elsif Y = BZPY and X = BZPX then
            Put_Line("Ficha comida");
            PXA1:=X;
            PYA1:=Y;
            PXBZ:=30;
            PYBZ:= 3;
                  TeamA:= TeamA+1;
         elsif Y = 1234567 then
              TurnoB:= 12;    
         else
            PXAZ:=X;
            PYAZ:=Y;
         end if;
      end if;

            TurnoB:= Turnob+1;
            Tablero;
         end if;
      end if;

      --------------BBBBBBBBBBBBB-----------------
if TurnoB = TurnoA then

   Put_Line("Turno del team B");
   Put("Ingrese la ficha que desea mover ");
         Get(GetFicha);

      if GetFicha = "B1" or GetFicha = "B2" or GetFicha = "B3" or GetFicha = "B4" or GetFicha = "B5" or GetFicha = "B6" or
           GetFicha = "B7" or GetFicha = "B8" or GetFicha = "B9" or GetFicha = "BX" or GetFicha = "BY" or GetFicha = "BZ" then

      if GetFicha = "B1" then

      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;

         if (Y = B2PY and X = B2PX) or (Y = B3PY and X = B3PX) or (Y = B4PY and X = B4PX) or (Y = B5PY and X = B5PX) or (Y = B6PY and X = B6PX) or (Y = B7PY and X = B7PX) or
            (Y = B8PY and X = B8PX) or (Y = B9PY and X = B9PX) or (Y = BXPY and X = BXPX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER B1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER B2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB1:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER B3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER B4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER B5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER B6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER B7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER B8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER B9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER BX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER BY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER BZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXB1:=X;
            PYB1:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXB1:=X;
            PYB1:=Y;
         end if;
      end if;

      if GetFicha = "B2" then

      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;

      if (Y = B1PY and X = B1PX) or (Y = B3PY and X = B3PX) or (Y = B4PY and X = B4PX) or (Y = B5PY and X = B5PX) or (Y = B6PY and X = B6PX) or (Y = B7PY and X = B7PX) or
            (Y = B8PY and X = B8PX) or (Y = B9PY and X = B9PX) or (Y = BXPY and X = BXPX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");




           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXB2:=X;
            PYB2:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXB2:=X;
            PYB2:=Y;
         end if;
      end if;

      if GetFicha = "B3" then

      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;

      if (Y = B1PY and X = B1PX) or (Y = B2PY and X = B2PX) or (Y = B4PY and X = B4PX) or (Y = B5PY and X = B5PX) or (Y = B6PY and X = B6PX) or (Y = B7PY and X = B7PX) or
            (Y = B8PY and X = B8PX) or (Y = B9PY and X = B9PX) or (Y = BXPY and X = BXPX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXB3:=X;
            PYB3:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXB3:=X;
            PYB3:=Y;
         end if;
      end if;

      if GetFicha = "B4" then

      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;

      if (Y = B1PY and X = B1PX) or (Y = B2PY and X = B2PX) or (Y = B3PY and X = B3PX) or (Y = B5PY and X = B5PX) or (Y = B6PY and X = B6PX) or (Y = B7PY and X = B7PX) or
            (Y = B8PY and X = B8PX) or (Y = B9PY and X = B9PX) or (Y = BXPY and X = BXPX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXB4:=X;
            PYB4:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXB4:=X;
            PYB4:=Y;
         end if;
      end if;

      if GetFicha = "B5" then


      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;

      if (Y = B1PY and X = B1PX) or (Y = B2PY and X = B2PX) or (Y = B4PY and X = B4PX) or (Y = B3PY and X = B3PX) or (Y = B6PY and X = B6PX) or (Y = B7PY and X = B7PX) or
            (Y = B8PY and X = B8PX) or (Y = B9PY and X = B9PX) or (Y = BXPY and X = BXPX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXB5:=X;
            PYB5:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXB5:=X;
            PYB5:=Y;
         end if;
      end if;

      if GetFicha = "B6" then

      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;

      if (Y = B1PY and X = B1PX) or (Y = B2PY and X = B2PX) or (Y = B4PY and X = B4PX) or (Y = B5PY and X = B5PX) or (Y = B3PY and X = B3PX) or (Y = B7PY and X = B7PX) or
            (Y = B8PY and X = B8PX) or (Y = B9PY and X = B9PX) or (Y = BXPY and X = BXPX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXB6:=X;
            PYB6:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXB6:=X;
            PYB6:=Y;
         end if;
      end if;

      if GetFicha = "B7" then

      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;

      if (Y = B1PY and X = B1PX) or (Y = B2PY and X = B2PX) or (Y = B4PY and X = B4PX) or (Y = B5PY and X = B5PX) or (Y = B6PY and X = B6PX) or (Y = B3PY and X = B3PX) or
            (Y = B8PY and X = B8PX) or (Y = B9PY and X = B9PX) or (Y = BXPY and X = BXPX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXB7:=X;
            PYB7:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXB7:=X;
            PYB7:=Y;
         end if;
      end if;

      if GetFicha = "B8" then

      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;

      if (Y = B1PY and X = B1PX) or (Y = B2PY and X = B2PX) or (Y = B4PY and X = B4PX) or (Y = B5PY and X = B5PX) or (Y = B6PY and X = B6PX) or (Y = B7PY and X = B7PX) or
            (Y = B3PY and X = B3PX) or (Y = B9PY and X = B9PX) or (Y = BXPY and X = BXPX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXB8:=X;
            PYB8:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXB8:=X;
            PYB8:=Y;
         end if;
      end if;

      if GetFicha = "B9" then

      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;

      if (Y = B1PY and X = B1PX) or (Y = B2PY and X = B2PX) or (Y = B4PY and X = B4PX) or (Y = B5PY and X = B5PX) or (Y = B6PY and X = B6PX) or (Y = B7PY and X = B7PX) or
            (Y = B8PY and X = B8PX) or (Y = B3PY and X = B3PX) or (Y = BXPY and X = BXPX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXB9:=X;
            PYB9:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXB9:=X;
            PYB9:=Y;
         end if;
      end if;

      if GetFicha = "BX" then

      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);
         CodPosition:= X+Y-1;

      if (Y = B1PY and X = B1PX) or (Y = B2PY and X = B2PX) or (Y = B4PY and X = B4PX) or (Y = B5PY and X = B5PX) or (Y = B6PY and X = B6PX) or (Y = B7PY and X = B7PX) or
            (Y = B8PY and X = B8PX) or (Y = B9PY and X = B9PX) or (Y = B3PY and X = B3PX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXBX:=X;
            PYBX:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXBX:=X;
            PYBX:=Y;
         end if;
      end if;

      if GetFicha = "BY" then

      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);


      if (Y = B1PY and X = B1PX) or (Y = B2PY and X = B2PX) or (Y = B4PY and X = B4PX) or (Y = B5PY and X = B5PX) or (Y = B6PY and X = B6PX) or (Y = B7PY and X = B7PX) or
            (Y = B8PY and X = B8PX) or (Y = B9PY and X = B9PX) or (Y = B3PY and X = B3PX) or (Y = BYPY and X = BYPX) or (Y = BZPY and X = BZPX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXBY:=X;
            PYBY:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXBY:=X;
            PYBY:=Y;
         end if;
      end if;

      if GetFicha = "BZ" then


      Put("Ingrese Y ");
      Get(Y);
      Put("Ahora ingrese X ");
         Get(X);


      if (Y = B1PY and X = B1PX) or (Y = B2PY and X = B2PX) or (Y = B4PY and X = B4PX) or (Y = B5PY and X = B5PX) or (Y = B6PY and X = B6PX) or (Y = B7PY and X = B7PX) or
            (Y = B8PY and X = B8PX) or (Y = B9PY and X = B9PX) or (Y = B3PY and X = B3PX) or (Y = BYPY and X = BYPX) or (Y = B3PY and X = B3PX) then
            Put_Line("Como te vas a comer tus mismas fichas tonto ");
            Put_Line("");


           --COMER A1
         elsif Y = A1PY and X = A1PX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXA1:=40;
            PYA1:= 3;
            TeamB:= TeamB+1;

         --COMER A2
         elsif Y = A2PY and X = A2PX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXA2:=40;
            PYA2:= 3;
            TeamB:= TeamB+1;

         --COMER A3
         elsif Y = A3PY and X = A3PX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXA3:=40;
            PYA3:= 3;
            TeamB:= TeamB+1;

         --COMER A4
         elsif Y = A4PY and X = A4PX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXA4:=40;
            PYA4:= 3;
            TeamB:= TeamB+1;

         --COMER A5
         elsif Y = A5PY and X = A5PX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXA5:=40;
            PYA5:= 3;
            TeamB:= TeamB+1;

         --COMER A6
         elsif Y = A6PY and X = A6PX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXA6:=40;
            PYA6:= 3;
            TeamB:= TeamB+1;

         --COMER A7
         elsif Y = A7PY and X = A7PX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXA7:=40;
            PYA7:= 3;
            TeamB:= TeamB+1;

         --COMER A8
         elsif Y = A8PY and X = A8PX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXA8:=40;
            PYA8:= 3;
            TeamB:= TeamB+1;

         --COMER A9
         elsif Y = B9PY and X = B9PX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXA9:=40;
            PYA9:= 3;
            TeamB:= TeamB+1;

         --COMER AX
         elsif Y = AXPY and X = AXPX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXAX:=40;
            PYAX:= 3;
            TeamB:= TeamB+1;

         --COMER AY
         elsif Y = BYPY and X = BYPX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXAY:=40;
            PYAY:= 3;
            TeamB:= TeamB+1;

         --COMER AZ
         elsif Y = AZPY and X = AZPX then
            Put_Line("Ficha comida");
            PXBZ:=X;
            PYBZ:=Y;
            PXAZ:=40;
            PYAZ:= 3;
            TeamB:= TeamB+1;
         else
            PXBZ:=X;
            PYBZ:=Y;
         end if;
      end if;
            TurnoA:= TurnoA+1;
            Tablero;
      end if;
      end if;

      Put_Line(" ");
      Put("El equipo A tiene un puntaje de ");
      Put(TeamA);
      Put_Line(" ");
      Put("El equipo B tiene un puntaje de ");
      Put(TeamB);
      Put_Line(" ");

      if TeamA = 12 then
         Put_Line("EL TEAM A GANOOOOOOOOOOO");
         Dodoko:= 200;
      elsif TeamB = 12 then
         Put_Line("EL TEAM A GANOOOOOOOOOOO");
         Dodoko:= 199;
      end if;
end loop;
end Klee;
