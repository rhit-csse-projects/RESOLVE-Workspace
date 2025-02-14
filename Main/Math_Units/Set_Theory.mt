Precis Set_Theory;
    uses Cls_Theory;

	-- This is a place holder theory used for VC generation
	-- It is missing definitions and theorems

	Type Theorem Powerset_1:
		For all S: SSet,
		For all T: Powerset(S),
			T: SSet;
			
	Type Theorem Powerset_2:
		For all S: SSet,
		For all T: Powerclass(S),
			T: Powerset(S);

	Definition (S : SSet) union (T: SSet) : SSet;
    Definition (S : SSet) intersection (T: SSet) : SSet;
    Definition (e : Entity) is_in (S: SSet) : B;
    Definition (e : Entity) is_not_in (S: SSet) : B; -- = not (e is_in S);
    Definition complement (S : SSet) : SSet ;
    Definition (S : SSet) without (T : SSet) : SSet;
    Definition (S : SSet) is_subset_of (T : SSet) : B;
    Definition (S : SSet) is_not_subset_of (T : SSet) : B;
    Definition (S : SSet) is_proper_subset_of (T : SSet) : B;
    Definition (S : SSet) is_not_proper_subset_of (T : SSet): B;
    Definition Singleton(e : Entity) : SSet;   -- {(e: Entity)}

	Corollary Union_1_a: -- Is_Identity_for(union, Empty_Set);
		For all S: SSet,
			Empty_Set union S = S;

	Corollary Union_1_b: -- Is_Identity_for(o, Empty_String);
		For all S: SSet,
			S union Empty_Set = S;

	Corollary Concatenation_2: -- Is_Associative(union);
		For all S, T, U: SSet,
			S union (T union U) = (S union T) union U;

end Set_Theory;