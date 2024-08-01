Precis Tree_Theory;
    uses Natural_Number_Theory, Integer_Theory, String_Theory;
	
-- These are placeholders
Definition Tr : Cls;
Definition Empty_Tree : Tr;
Definition N_C(T : Tr) : N;
Definition ht(T : Tr) : N;

Definition Site = Cart_Prod
	Lab: Element;
	LTS, RTS: Str(Tr);
end;
	
-- Definition Zip_Op(P : Str(Site), T: Tr) : Tr; -- This is what we want, but it doesn't work...
Definition Zip_Op(P : SStr, T: Tr) : Tr;
Definition Rt_Lab(T: Tr) : Element;
Definition Rt_Brhs(T: Tr) : Str(Tr);

-- 4/28 Sami's attempt at writing Split_at
Definition Site2 = Cart_Prod
	St: Site;
	RT: Tr;
end;

Definition Split_at(i : N, T: Tr) : Site2;

-- 5/24 Sami's attempt at writing DoubleSqbr
Definition DoubleSqbr(f : Tr -> N, S : SStr) : N;

-- 5/24 Sami's attempt at writing Ag (Should be in String_Theory)
Definition Ag(f : Z * Z -> Z, m : N, n : N) : Z;
	
end Tree_Theory;