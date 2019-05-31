package body P_Vue_Graph is
   
   procedure Cadrier(W, H : in Integer) is
      I : Integer := 0;
   begin
      while I <= W loop
	 Tracer_Droite((I, 0), (I, H+40), (noir, continu, 1));
	 I := I + 10;
      end loop;
      I := 0;
      while I <= H+40 loop
	 Tracer_Droite((0, I), (W, I), (noir, continu, 1));
	 I := I + 10;
      end loop;
   end;
   
end;
