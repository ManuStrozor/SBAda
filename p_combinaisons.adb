package body P_Combinaisons is
   
   procedure CreeVectGaudi(f : in out p_cases_IO.file_type; V : out TV_Gaudi) is
      I : Integer := V'First;
   begin
      Reset(F, In_File);
      while not End_Of_File(F) loop
	 Read(F, V(I));
	 I := I + 1;
      end loop;
   end;
   
   procedure TriVectGaudi(V : in out TV_Gaudi) is
      Deb : Integer := V'First+1;
      Change : Boolean := True;
      Tmp : TR_Case;
   begin
      while Deb < V'Last and Change loop
	 Change := False;
	 for I in reverse Deb..V'Last loop
	    if V(I).Nom < V(I-1).Nom then
	       Tmp := V(I);
	       V(I) := V(I-1);
	       V(I-1) := Tmp;
	       Change := True;
	    end if;
	 end loop;
	 Deb := Deb + 1;
      end Loop;
   end;
   
   procedure CreeFicsol(V : in TV_Gaudi; fsol : in out text_io.file_type) is
      Sol, Cnt : Integer;
   begin
      for Nb in T_Nbcases loop
	 Sol := 0;
	 case Nb is
	    when 3 => -- Solutions avec 3 cases :
	       for I in 1..V'Last-2 loop
		  for J in I+1..V'Last-1 loop
		     for K in J+1..V'Last loop
			if V(I).Valeur+V(J).Valeur+V(K).Valeur = 33 then
			   Sol := Sol + 1;
			end if;
		     end loop;
		  end loop;
	       end loop;
	       Put_Line(Fsol, '3' & Image(Sol));
	       Put_Line('*' & Image(Sol) & " solutions en 3 cases");
	       if Sol <= 9 then Put_Line("------------------------");
	       elsif Sol <= 99 then Put_Line("-------------------------");
	       else Put_Line("--------------------------");
	       end if;
	       Cnt := 1;
	       for I in 1..V'Last-2 loop
		  for J in I+1..V'Last-1 loop
		     for K in J+1..V'Last loop
			if V(I).Valeur+V(J).Valeur+V(K).Valeur = 33 then
			   Put_Line(Fsol, V(I).nom & V(J).nom & V(K).Nom);
			   Put_Line("solution " & Image(Cnt) & '/' & Image(Sol) & " : " & V(I).nom &','& V(J).nom &','& V(K).Nom);
			   Cnt := Cnt + 1;
			end if;
		     end loop;
		  end loop;
	       end loop;
	    when 4 => -- Solutions avec 4 cases :
	       for I in 1..V'Last-3 loop
		  for J in I+1..V'Last-2 loop
		     for K in J+1..V'Last-1 loop
			for L in K+1..V'Last loop
			   if V(I).Valeur+V(J).Valeur+V(K).Valeur+V(L).valeur = 33 then
			      Sol := Sol + 1;
			   end if;
			end loop;
		     end loop;
		  end loop;
	       end loop;
	       Put_Line(Fsol, '4' & Image(Sol));
	       Put_Line('*' & Image(Sol) & " solutions en 4 cases");
	       if Sol <= 9 then Put_Line("------------------------");
	       elsif Sol <= 99 then Put_Line("-------------------------");
	       else Put_Line("--------------------------");
	       end if;
	       Cnt := 1;
	       for I in 1..V'Last-3 loop
		  for J in I+1..V'Last-2 loop
		     for K in J+1..V'Last-1 loop
			for L in K+1..V'Last loop
			   if V(I).Valeur+V(J).Valeur+V(K).Valeur+V(L).valeur = 33 then
			      Put_Line(Fsol, V(I).nom & V(J).nom & V(K).Nom & V(L).Nom);
			      Put_Line("solution " & Image(Cnt) & '/' & Image(Sol) & " : " & V(I).nom &','& V(J).nom &','& V(K).Nom &','& V(L).Nom);
			      Cnt := Cnt + 1;
			   end if;
			end loop;
		     end loop;
		  end loop;
	       end loop;
	    when 5 => -- Solutions avec 5 cases :
	       for I in 1..V'Last-4 loop
		  for J in I+1..V'Last-3 loop
		     for K in J+1..V'Last-2 loop
			for L in K+1..V'Last-1 loop
			   for M in L+1..V'Last loop
			      if V(I).Valeur+V(J).Valeur+V(K).Valeur+V(L).Valeur+V(M).Valeur = 33 then
				 Sol := Sol + 1;
			      end if;
			   end loop;
			end loop;
		     end loop;
		  end loop;
	       end loop;
	       Put_Line(Fsol, '5' & Image(Sol));
	       Put_Line('*' & Image(Sol) & " solutions en 5 cases");
	       if Sol <= 9 then Put_Line("------------------------");
	       elsif Sol <= 99 then Put_Line("-------------------------");
	       else Put_Line("--------------------------");
	       end if;
	       Cnt := 1;
	       for I in 1..V'Last-4 loop
		  for J in I+1..V'Last-3 loop
		     for K in J+1..V'Last-2 loop
			for L in K+1..V'Last-1 loop
			   for M in L+1..V'Last loop
			      if V(I).Valeur+V(J).Valeur+V(K).Valeur+V(L).Valeur+V(M).Valeur = 33 then
				 Put_Line(Fsol, V(I).nom & V(J).nom & V(K).Nom & V(L).Nom & V(M).Nom);
				 Put_Line("solution " & Image(Cnt) & '/' & Image(Sol) & " : " & V(I).nom &','& V(J).nom &','& V(K).Nom &','& V(L).Nom &','& V(M).Nom);
				 Cnt := Cnt + 1;
			      end if;
			   end loop;
			end loop;
		     end loop;
		  end loop;
	       end loop;
	    when 6 => -- Solutions avec 6 cases :
	       for I in 1..V'Last-5 loop
		  for J in I+1..V'Last-4 loop
		     for K in J+1..V'Last-3 loop
			for L in K+1..V'Last-2 loop
			   for M in L+1..V'Last-1 loop
			      for N in M+1..V'Last loop
				 if V(I).Valeur+V(J).Valeur+V(K).Valeur+V(L).Valeur+V(M).Valeur+V(N).Valeur = 33 then
				    Sol := Sol + 1;
				 end if;
			      end loop;
			   end loop;
			end loop;
		     end loop;
		  end loop;
	       end loop;
	       Put_Line(Fsol, '6' & Image(Sol));
	       Put_Line('*' & Image(Sol) & " solutions en 6 cases");
	       if Sol <= 9 then Put_Line("------------------------");
	       elsif Sol <= 99 then Put_Line("-------------------------");
	       else Put_Line("--------------------------");
	       end if;
	       Cnt := 1;
	       for I in 1..V'Last-5 loop
		  for J in I+1..V'Last-4 loop
		     for K in J+1..V'Last-3 loop
			for L in K+1..V'Last-2 loop
			   for M in L+1..V'Last-1 loop
			      for N in M+1..V'Last loop
				 if V(I).Valeur+V(J).Valeur+V(K).Valeur+V(L).Valeur+V(M).Valeur+V(N).Valeur = 33 then
				    Put_Line(Fsol, V(I).nom & V(J).nom & V(K).Nom & V(L).Nom & V(M).Nom & V(N).Nom);
				    Put_Line("solution " & Image(Cnt) & '/' & Image(Sol) & " : " & V(I).nom &','& V(J).nom &','& V(K).Nom &','& V(L).Nom &','& V(M).Nom &','& V(N).Nom);
				    Cnt := Cnt + 1;
				 end if;
			      end loop;
			   end loop;
			end loop;
		     end loop;
		  end loop;
	       end loop;
	    when 7 => -- Solutions avec 7 cases :
	       for I in 1..V'Last-6 loop
		  for J in I+1..V'Last-5 loop
		     for K in J+1..V'Last-4 loop
			for L in K+1..V'Last-3 loop
			   for M in L+1..V'Last-2 loop
			      for N in M+1..V'Last-1 loop
				 for O in N+1..V'Last loop
				    if V(I).Valeur+V(J).Valeur+V(K).Valeur+V(L).Valeur+V(M).Valeur+V(N).Valeur+V(O).Valeur = 33 then
				       Sol := Sol + 1;
				    end if;
				 end Loop;
			      end loop;
			   end loop;
			end loop;
		     end loop;
		  end loop;
	       end loop;
	       Put_Line(Fsol, '7' & Image(Sol));
	       Put_Line('*' & Image(Sol) & " solutions en 7 cases");
	       if Sol <= 9 then Put_Line("------------------------");
	       elsif Sol <= 99 then Put_Line("-------------------------");
	       else Put_Line("--------------------------");
	       end if;
	       Cnt := 1;
	       for I in 1..V'Last-6 loop
		  for J in I+1..V'Last-5 loop
		     for K in J+1..V'Last-4 loop
			for L in K+1..V'Last-3 loop
			   for M in L+1..V'Last-2 loop
			      for N in M+1..V'Last-1 loop
				 for O in N+1..V'Last loop
				    if V(I).Valeur+V(J).Valeur+V(K).Valeur+V(L).Valeur+V(M).Valeur+V(N).Valeur+V(O).Valeur = 33 then
				       Put_Line(Fsol, V(I).nom & V(J).nom & V(K).Nom & V(L).Nom & V(M).Nom & V(N).Nom & V(O).Nom);
				       Put_Line("solution " & Image(Cnt) & '/' & Image(Sol) & " : " & V(I).nom &','& V(J).nom &','& V(K).Nom &','& V(L).Nom &','& V(M).Nom &','& V(N).Nom &','& V(O).Nom);
				       Cnt := Cnt + 1;
				    end if;
				 end Loop;
			      end loop;
			   end loop;
			end loop;
		     end loop;
		  end loop;
	       end loop;
	    when others => Put_Line("FIN");
	 end case;
      end Loop;
   end;
   
   function nbCombi(fsol : in text_io.file_type; nbcases : in T_nbcases) return Natural is
   begin
      return 0;
   end;
   
   function Combi(fsol : in text_io.file_type; nbcases : in T_nbcases; numsol : in positive) return String is
   begin
      return "Function à coder";
   end;
   
   function est_contigue(sol : in string) return Boolean is
   begin
      return False;
   end;
   
   procedure CreeFicsolcont(fsol, fcont : in out text_io.file_type) is
   begin
      Put_Line("Procedure à coder");
   end;
   
end;
