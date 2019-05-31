with P_Vue_Graph; use P_Vue_Graph;
with p_fenbase; use p_fenbase;
with Forms; use Forms;
with p_esiut; use p_esiut;
with ada.calendar; use ada.calendar;

procedure Gaudigraph is
   FJeu : TR_Fenetre;
begin
   InitialiserFenetres;
   FJeu := DebutFenetre("Gaudi Game", 400, 200);
   --AjouterBouton(FJeu,"ButtonBegin","Commencer",160,350,80,40);
   AjouterBouton(FJeu,"ButtonQuit","Quitter",160,190,80,40);
   FinFenetre(FJeu);
   MontrerFenetre(FJeu);
   Cadrier(400, 200);
   Pause;
   loop
      exit when AttendreBouton(FJeu) = "ButtonQuit";
   end loop;
   CacherFenetre(FJeu);
end;
