Precis Set_App_Op_Ext;
	uses Set_Theory, Natural_Number_Theory;

	-- This is a place holder theory used for VC generation
	-- It is missing definitions and theorems
	-- Some definitions and results are included in the dissertation chapters
	
	Definition Card: SSet;
    Definition ||(S:SSet)||: N; -- YS: Should be a Card, but there isn't 
								--     anything defined for it yet.
    Definition FinPowerset(S: SSet): SSet;

	Type Theorem Fin_0:
		For all S: SSet,
		For all T: FinPowerset(S),
			T: SSet;

	Type Theorem Fin_1:
		For all S: SSet,
		For all T: FinPowerset(S),
			T: Powerset(S);

	(*Type Theorem Card_1:
		For all S: SSet,
		For all T: FinPowerset(S),
			||T||: N;*)

	Definition Fn_Restrict_to(f : (D : SSet) -> (R : SSet), S : Powerset(D)) : S -> R;

	-- Since the compiler does not parse the original definition below, 
	-- we create an alternative version.
	-- Definition (f : (D : SSet) -> (R : SSet))[S : Powerset(D)]: Powerset(R);
	Definition SqBr(f : (D : SSet) -> (R : SSet), S : Powerset(D)) : Powerset(R);

end Set_App_Op_Ext;