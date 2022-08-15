
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;
procedure Main is
    --Jugadores
    P : Integer;
--Funcionamiento general
    Game       : Boolean := True;
    Menu       : Integer;
    Turno      : Integer := 1;
    DadoResult : String (1 .. 2);
    Temporal   : String  := "1";
    Opc        : Integer := 0;
    IsWinner   : Boolean := False;
    TempQNw    : Integer := 1;
    Meow   : Integer;
--Posiciones e importaciones para el arreglo
    l : Integer := 12;
    X : Integer := 1;
    Y : Integer := 0;
--Var temporal para llevar el numero de casillas que hay que avanzar
    Var : Integer := 1;
-- Jugadores y el simbolo que los representa  ingame
    P1 : String := "1";
    P2 : String := "2";
    P3 : String := "3";
    P4 : String := "4";
--Saldo inicial de los jugadores
    Saldo1 : Integer := 300;
    Saldo2 : Integer := 300;
    Saldo3 : Integer := 300;
    Saldo4 : Integer := 300;
--Contador
--Estos contadores llevan el numero de la posicion en la que el jugador esta
    Cont1 : Integer := 1;
    Cont2 : Integer := 1;
    Cont3 : Integer := 1;
    Cont4 : Integer := 1;
--Posicion de los jugadores en x y
    --Player 1
    Px1 : Integer := 10;
    Py1 : Integer := 1;
    --Player 2
    Px2 : Integer := 10;
    Py2 : Integer := 1;
    --Player 3
    Px3 : Integer := 10;
    Py3 : Integer := 1;
    --Player 4
    Px4 : Integer := 10;
    Py4 : Integer := 1;
    --Contador de vuelta
    Vp1 : Integer := 0;
    Vp2 : Integer := 0;
    Vp3 : Integer := 0;
    Vp4 : Integer := 0;

    procedure Instrucciones is
    begin
        Put_Line
           ("Este es una version pobre de monopoly, cada jugaddor comienza con un saldo de 300 protolempiras");
        Put_Line ("A medida avances habran cosas que puedas comprar");

    end Instrucciones;
    procedure SelectCharacter is
    begin
        Put_Line ("El modo maximo de jugadores es de 4");
        Put_Line ("¿Cual es el numero de jugadores se necesitan?");
        Get (P);
        Put_Line ("");
        if P = 1 then
            Put_Line ("Numero no valido de jugadores");
        elsif P > 4 then
            Put_Line ("Excede el maximo permitido de jugadores");
        else
            Put_Line ("Ok, iniciando modo de");
            Put (P);
            Put (" jugadores");
            for i in 0 .. P loop
                if (i = 1) then
                    Put_Line ("El jugador ");
                    Put (i);
                    Put (" ingrese el simbolo de 1 caracter que le represente");
                    Get (P1);
                    Put_Line ("Ok, tu simbolo sera: " & P1);
                elsif (i = 2) then
                    Put_Line ("El jugador ");
                    Put (i);
                    Put (" ingrese el simbolo de 1 caracter que le represente");
                    Get (P2);
                    Put_Line ("Ok, tu simbolo sera: " & P2);

                elsif (i = 3) then
                    Put_Line ("El jugador ");
                    Put (i);
                    Put (" ingrese el simbolo de 1 caracter que le represente");
                    Get (P3);
                    Put_Line ("Ok, tu simbolo sera: " & P3);
                elsif (i = 4) then
                    Put_Line ("El jugador ");
                    Put (i);
                    Put (" ingrese el simbolo de 1 caracter que le represente");
                    Get (P4);
                    Put_Line ("Ok, tu simbolo sera: " & P4);

                end if;
            end loop;
        end if;

    end SelectCharacter;

    procedure dado is
        type randRange is new Integer range 1 .. 6;
        package Rand_Int is new Ada.Numerics.Discrete_Random (randRange);
        use Rand_Int;
        gen : Generator;
        num : randRange;
    begin
        Reset (gen);
        num := Random (gen);
        Put_Line ("Al lanzar los dados obtienes: " & randRange'Image (num));
        DadoResult := randRange'Image (num);
    end dado;

    procedure PositionPlayer
       (Temp : in String; px : in Integer; py : in Integer)
    is
    begin
        for i in 0 .. l - 1 loop
            for j in 0 .. l - 1 loop
                if i = 0 or (i = 3 and j > 3 and j < l - 3) or i = (l - 1) or
                   (i = (l - 4) and j > 3 and j < l - 3) or j = 0 or
                   (j = 3 and i > 2 and i < l - 3) or j = (l - 1) or
                   (j = (l - 4) and i > 2 and i < l - 3)
                then
                    Put ("* ");
                else
                    Put ("  ");
                end if;
                if i = px and j = py then
                    Put (Temp);
                end if;
            end loop;
            Put_Line ("");
        end loop;
    end PositionPlayer;

    procedure Contadores (Temp: in String)
    is
    begin
    if Temp = P1 then
        Cont1:= Cont1 + Var;
    elsif Temp = P2 then
        Cont2:= Cont2 + Var;
    elsif Temp = P3 then
        Cont3:= Cont3 + Var;
    elsif Temp = P4 then
        Cont4:= Cont4 + Var;
    end if;

    end Contadores;

    procedure PagaOCarcel (px : in Integer; py : in Integer; Temp : in String)
    is
    begin

        if px = 1 and py = 9 then
            Put_Line ("Ya se la sabe carnal, 100 varos o pa la carcel");
            Put_Line
               ("--Ingresa uno para pagar, o ingresa dos si decides ir a la carcel ");
            Get (Opc);

            if Opc = 1 then
                if Temp = P1 then
                    Saldo1 := Saldo1 - 100;
                    Put ("Le quedo ");
                    Put (Saldo1);
                    Put (" de proto lempiras");
                elsif Temp = P2 then
                    Saldo2 := Saldo2 - 100;
                    Put ("Le quedo ");
                    Put (Saldo2);
                    Put (" de proto lempiras");
                elsif Temp = P3 then
                    Saldo3 := Saldo3 - 100;
                    Put ("Le quedo ");
                    Put (Saldo3);
                    Put (" de proto lempiras");
                elsif Temp = P4 then
                    Saldo4 := Saldo4 - 100;
                    Put ("Le quedo ");
                    Put (Saldo4);
                    Put (" de proto lempiras");
                end if;
            elsif Opc = 2 then
                if Temp = P1 then
                    Put_Line ("Ekseso de corrupcion, pa la casa compa");
                    Px1 := 10;
                    Py1 := 1;
                elsif Temp = P2 then

                    Put_Line ("Ekseso de corrupcion, pa la casa compa");
                    Px2 := 10;
                    Py2 := 1;
                elsif Temp = P3 then

                    Put_Line ("Ekseso de corrupcion, pa la casa compa");
                    Px3 := 10;
                    Py3 := 1;
                elsif Temp = P4 then

                    Put_Line ("Ekseso de corrupcion, pa la casa compa");
                    Px4 := 10;
                    Py4 := 1;

                end if;
            else
                Put_Line ("Ingrese un valor valido conchetumare");
            end if;
        end if;

    end PagaOCarcel;

    procedure LanzarDado (px : in Integer; py : in Integer; Temp : in String)
    is
    begin
        Put ("Es turno del jugador");
        Put (Temp);
        Put_Line ("");
        Put_Line ("Ingrese E para lanzar los dados");
        Get (Temporal);
        if Temporal = "E" then
            dado;
            Var := Integer'Value (DadoResult);
            Put_Line (" El jugador : ");
            Put (Turno);
            Put (" Esta en la casilla :");
            Put_Line (" ");
            if Temp = P1 then
                if Py1 = 1 and (Px1 > 1 and Px1 /= 0) then
                    TempQNw := Px1;
                    Px1     := Px1 - Var;
                    if Px1 < 0 then
                        TempQNw := abs Px1;
                        Px1     := 1;
                        Py1     := Py1 + TempQNw;
                    elsif TempQNw = Var then
                        Var := Var - 1;
                        Py1 := Py1 + Var;
                        Px1 := 1;
                    elsif Px1 = 0 then
                        Px1:= 1;
                        Py1:= Py1 + 1;    
                    end if;
                elsif Px1 = 1 and Py1 /= 1 then
                    Py1 := Py1 + Var;
                    if Py1 > 9 then
                        TempQNw := Py1 - 9;
                        Py1     := 9;
                        Px1     := Px1 + TempQNw;
                    end if;
                elsif Px1 = 1 and Py1 = 1 then
                    Py1 := Py1 + Var;
                elsif Py1 = 9 and Px1 < 10 then
                    Px1 := Px1 + Var;
                    if Py1 > 9 then
                        TempQNw := Py1 - 9;
                        Py1     := 9;
                        Px1     := Px1 + TempQNw;
                    end if;
                    if Px1 > 10 then
                        Meow := 10 - Px1;
                        Meow := abs Meow;
                        Px1 := 10;
                        Py1 := Py1 - Meow;
                    end if;
                elsif Px1 < 10 and Py1 = 9 then
                    Py1 := Py1 - Var;
                elsif Px1 = 10 and Py1 >= 1 then
                    TempQNw := Py1;
                    Py1     := Py1 - Var;
                    if Py1 < 1 then
                        TempQNw := abs Py1;
                        Py1     := 1;
                        Px1:= Px1 + TempQNw;
                        
                        if Px1 >= 10 then
                            Meow := 10 - Px1;
                            Meow := abs Meow;
                            Px1 := 10 - Meow;
                            Py1 := 1;
                        end if;
                    end if;
                end if;
                Put (Px1);
                Put (Py1);
            elsif Temp = P2 then
                Cont2 := Cont2 + Var;
                Put (Px2);
                Put (Py2);
            elsif Temp = P3 then
                Cont3 := Cont3 + Var;
                Put (Px3);
                Put (Py3);
            end if;
            Put_Line ("");

        else
            Put_Line ("Ingrese E baboso");
        end if;

    end LanzarDado;

    function IsWin (Temp : in String; Vp : in Integer) return Boolean is
    begin
        if Vp = 2 then
            Put_Line ("El jugador: " & Temp & "es el ganador");
            return True;
        else
            return False;
        end if;
    end IsWin;

    procedure ContarWeltas (Temp : in String; px : in Integer; py : in Integer)
    is
    begin
        if Temp = P1 then
            if Cont1 >= 36 and Cont1 < 72 then
                Vp1 := 1;
            elsif Cont1 >= 72 then
                Vp1 := 2;
            end if;
        elsif Temp = P2 then
            if Cont2 >= 48 and Cont2 < 96 then
                Vp2 := 1;
            elsif Cont2 >= 96 then
                Vp2 := 2;
            end if;
        elsif Temp = P3 then
            if Cont3 >= 48 and Cont3 < 96 then
                Vp3 := 1;
            elsif Cont3 >= 96 then
                Vp3 := 2;
            end if;
        elsif Temp = P4 then
            if Cont4 >= 48 and Cont4 < 96 then
                Vp4 := 1;
            elsif Cont4 >= 96 then
                Vp4 := 2;
            end if;
        end if;
    end ContarWeltas;

begin
    Put_Line ("xaxaxaaxaaxaxaxaxaxaxaaxaxaxaxaxaxaxa");
    Put_Line ("x  Monopoly   |  Poorly Version     a");
    Put_Line ("xaxaxaaxaaxaxaxaxaxaxaaxaxaxaxaxaxaxa");
    Put_Line ("Que haras?");
    Put_Line ("1. Jugar");
    Put_Line ("2. Salir");
    Get (Menu);
    if Menu = 1 then
        SelectCharacter;
        Instrucciones;
        delay 2.0;
        Put ("Es turno del");
        Put (Turno);
        Put (" Jugador");

 -------------------------------------------------------------------
 -- 2 jugadores
 ------------------------------------------------------------------       
        if P = 2 then
            while Game loop
                if Turno = 1 then
                    LanzarDado (Px1, Py1, P1);
                    Contadores(P1);
                    PositionPlayer (P1, Px1, Py1);
                    PagaOCarcel (Px1, Py1, P1);
                    ContarWeltas(P1,Px1,Py1);
                    if IsWin (P1, Vp1) = True then
                        Game := False;
                    end if;
                    Turno := Turno + 1;
                elsif Turno = 2 then
                    LanzarDado (Px2, Py2, P2);
                    PositionPlayer (P2, Px2, Py2);
                    PagaOCarcel (Px2, Py2, P2);
                    if IsWin (P2, Vp2) = True then
                        Game := False;
                    end if;
                    Turno := 1;
                end if;
            end loop;
        elsif P = 3 then
            while Game loop
                if Turno = 1 then
                    LanzarDado (Px1, Py1, P1);
                    PositionPlayer (P1, Px1, Py1);
                    PagaOCarcel (Px1, Py1, P1);
                    ContarWeltas(P1,Px1,Py1);
                    Put(Vp1);
                    if IsWin (P1, Vp1) = True then
                        Game := False;
                    end if;
                    Turno := Turno + 1;
                elsif Turno = 2 then
                    LanzarDado (Px2, Py2, P2);
                    PositionPlayer (P2, Px2, Py2);
                    PagaOCarcel (Px2, Py2, P2);
                    if IsWin (P2, Vp2) = True then
                        Game := False;
                    end if;
                    Turno := Turno + 1;
                elsif Turno = 3 then
                    LanzarDado (Px3, Py3, P3);
                    PositionPlayer (P3, Px3, Py3);
                    PagaOCarcel (Px3, Py3, P3);
                    if IsWin (P3, Vp3) = True then
                        Game := False;
                    end if;
                    Turno := 1;
                end if;
            end loop;
        elsif P = 4 then
            while Game loop
                if Turno = 1 then
                    LanzarDado (Px1, Py1, P1);
                    PositionPlayer (P1, Px1, Py1);
                    PagaOCarcel (Px1, Py1, P1);
                    if IsWin (P1, Vp1) = True then
                        Game := False;
                    end if;
                    Turno := Turno + 1;
                elsif Turno = 2 then
                    LanzarDado (Px2, Py2, P2);
                    PositionPlayer (P2, Px2, Py2);
                    PagaOCarcel (Px2, Py2, P2);
                    if IsWin (P2, Vp2) = True then
                        Game := False;
                    end if;
                    Turno := Turno + 1;
                elsif Turno = 3 then
                    LanzarDado (Px3, Py3, P3);
                    PositionPlayer (P3, Px3, Py3);
                    PagaOCarcel (Px3, Py3, P3);
                    if IsWin (P3, Vp3) = True then
                        Game := False;
                    end if;
                    Turno := Turno + 1;
                elsif Turno = 4 then
                    LanzarDado (Px4, Py4, P4);
                    PositionPlayer (P4, Px4, Py4);
                    PagaOCarcel (Px4, Py4, P4);
                    if IsWin (P4, Vp4) = True then
                        Game := False;
                    end if;
                    Turno := 1;
                end if;
            end loop;
        end if;
    elsif Menu = 2 then
        Put_Line ("");
        Put_Line ("Acabo THE GAME XD");
    end if;

end Main;
