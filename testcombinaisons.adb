with Sequential_Io;
with Text_Io; use Text_Io;
with P_Combinaisons; use P_Combinaisons, P_Combinaisons.P_Cases_io;

procedure TestCombinaisons is
   
   F : P_Cases_IO.File_Type;
   Fsol : Text_Io.File_Type; 
   V : TV_Gaudi(1..16);
   
begin
   
   Open(F, In_File, "CarreGaudi");
   
   CreeVectGaudi(F, V);
   TriVectGaudi(V);
   
   Create(Fsol, Out_File, "SolutGaudi");
   
   CreeFicSol(V, Fsol);
   
end;
