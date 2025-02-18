Precis Monogenerator_Theory;
	uses Basic_Properties;

Definition Is_Monogeneric_for(D : SSet, b : D, g : D -> D) : B =
	For all x : D,
		g(x) /= b and Is_Injective(g) and
			(For all S: Powerset(D), 
				b is_in S and 
					(For all x: D, 
						x is_in S implies g(x) is_in S)
				implies S = D);
				
	-- YS: Missing definition for Is_Infinite
	(*Corollary Is_Monogeneric_for_1:
		For all D : SSet,
		For all b : D,
		For all g : D -> D,
		For all P : D -> B,
			Is_Monogeneric_for(D, b, g) implies Is_Infinite(D);*)
			
	Corollary Is_Monogeneric_for_2:
		For all D : SSet,
		For all b : D,
		For all g : D -> D,
		For all P : D -> B,
			( Is_Monogeneric_for(D, b, g) and P(b) and P(b) and 
				(For all x : D, P(x) implies P(g(x))) implies (For all x : D, P(x)) );

Theorem M1:
	For all D : SSet,
	For all b : D,
	For all g : D -> D,
		Is_Monogeneric_for(D, b, g) implies
			(For all T, U : SSet,
			For all f : T -> U,
			For all s : T * U * D -> U,
			For all p : T * D -> T,
				There exists unique i : T * D -> U,
					For all t : T,
						(i(t, b) = f(t)) and
						(For all x : D,
							i(t, g(x)) = s(t, i(p(t, x), x), x)));

	Corollary M1_1:
		For all D : SSet,
		For all b : D,
		For all g : D -> D,
			Is_Monogeneric_for(D, b, g) implies
				(For all U : SSet,
				For all c : U,
				For all s : U * D -> U,
					There exists unique i : D -> U,
						i(b) = c and 
						(For all x : D,
							i(g(x)) = s(i(x), x)));

Theorem M2:
	For all D1, D2 : SSet,
	For all b1 : D1,
	For all b2 : D2,
	For all g1 : D1 -> D1,
	For all g2 : D2 -> D2,
		(Is_Monogeneric_for(D1, b1, g1) and Is_Monogeneric_for(D2, b2, g2)) implies
			(not(There exists h : D1 -> D2,
				(h(b1) = b2) and (For all x : D1,
					h(g1(x)) = g2(h(x)) and Is_Bijective(h))));

Theorem M3:
	There exists D : SSet,
	There exists b : D,
	There exists g : D -> D,
		Is_Monogeneric_for(D, b, g);

-- YS: Missing implicit definition IndFn and theorem M4.

--Temporary fix for conditional functions
Definition conditional(cond : B, a : Entity, b : Entity) : Entity;

end Monogenerator_Theory;