Precis Str_App_Op_Ext;
	uses String_Theory;

	Type Theorem Ext_App_Within_Polymorphic_Strs:
		For all T : Cls,
		For all S : Str(T),
		For all x : Entity,
			ext(S, x) : Str(T);

 	(* The below definition is prefix for:
		Inductive Def (f : (\Gamma : Cls) -> (\Delta : Cls)) 
						[s : Str(\Gamma)] : Str(\Delta) is ... 
	*)
	Inductive Def Map (f : (T : Cls) -> (U : Cls), s : Str(T)) : Str(U) is
		(i.) Map(f, Empty_String) = Empty_String;
		(ii.) For all x : T, 
				Map(f, ext(s, x)) = ext(Map(f, s), f(x));
end Str_App_Op_Ext;